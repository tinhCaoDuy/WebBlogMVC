package blog.controller;

import java.io.File;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import blog.entity.Files;

@Transactional
@Controller
public class UploadController {
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;
	@RequestMapping("upload")
	public String upload(ModelMap model){
		model.addAttribute("display","none");
		return "contents/upimg";
	}
	
	@RequestMapping("content/uploadfile")
	public String uploadfile(ModelMap model,@RequestParam("image") MultipartFile image){
		if(image.isEmpty()){
			model.addAttribute("link", "Vui Lòng Chọn File!!");
		}else{
			String nameFile = image.getOriginalFilename();
			while(checkFiles(nameFile) != 0){
				nameFile =randomNumber(1000, 1) + nameFile;
			}
			upFileCSDL(nameFile);
			try{
				String imagePath = context.getRealPath("/files/"+image.getOriginalFilename());
				File oldFile = new File(imagePath);
				File newFile = new File(context.getRealPath("/files/"+nameFile));
				oldFile.renameTo(newFile);
				image.transferTo(oldFile);
				model.addAttribute("img",nameFile);
				model.addAttribute("link",context.getContextPath()+"/files/"+ nameFile);
				model.addAttribute("display", "block");
				return "contents/upimg";
			}catch(Exception e){
				model.addAttribute("display", "block");
				model.addAttribute("link", "Lỗi Lưu File!!");
			}
		}
		return "contents/upimg";
	}
	public String randomNumber(int max,int min){
		int value=0;
		if(max < min){
			value = max;
			max = min;
			min = value;
		}
		Random generator = new Random();
		value = generator.nextInt((max - min)+1) + min;
		return String.valueOf(value);
	}
	public void upFileCSDL(String filename){
		Files file = new Files();
		file.setTenFile(filename);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(file);
			t.commit();
			System.out.print("UpFile Thành Công!!");
		} catch (Exception e) {
			t.rollback();
			System.out.print("Upfile Thất Bại!!");
		} finally {
			session.close();
		}
	}
	public int checkFiles(String fileName){
		int check = 0;
		Session session = factory.getCurrentSession();
		String hql = "FROM Files WHERE tenFile=:name";
		Query query = session.createQuery(hql);
		query.setParameter("name", fileName);
		Files fis = (Files) query.uniqueResult();
		if(fis != null){
			check = 1;
		}
		session.clear();
		return check;
	}
}
