package blog.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import blog.bean.Blog;
import blog.entity.BaiViet;
import blog.entity.BinhLuan;
import blog.entity.DanhMuc;
import blog.entity.Files;

@Transactional
@Controller
public class BaiVietController {
	@Autowired
	SessionFactory factory;
	@Autowired
	Blog blog;
	@Autowired
	ServletContext context;

	@RequestMapping(value = "insertcontent", method = RequestMethod.GET)
	public String insertcontent(ModelMap model) {
		List<DanhMuc> list = selectCatalog();
		int soluong = list.size();
		model.addAttribute("ends", soluong);
		model.addAttribute("DanhMuc", list);
		model.addAttribute("blog", blog);
		model.addAttribute("display", "none");
		model.addAttribute("tacVuName", "Thêm Bài Viết");
		model.addAttribute("tacVuLink", "insert.htm");
		return "contents/insertcontent";
	}

	@RequestMapping(value = "contents/insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @RequestParam("catalog") String catalog, @RequestParam("title") String title,
			@RequestParam("discription") String discription, @RequestParam("image") MultipartFile image,
			@RequestParam("content") String content) {
		BaiViet baiViet = new BaiViet();
		String nameFile = null;
		if (image.isEmpty()) {
			baiViet.setHinhMoTa("iconsblog.png");
		} else {
			try {
				nameFile = image.getOriginalFilename();
				while (checkFiles(nameFile) != 0) {
					nameFile = randomNumber(1000, 1) + nameFile;
				}
				upFileCSDL(nameFile);
				String imagePath = context.getRealPath("/files/" + image.getOriginalFilename());
				File oldFile = new File(imagePath);
				File newFile = new File(context.getRealPath("/files/" + nameFile));
				oldFile.renameTo(newFile);
				image.transferTo(oldFile);
				baiViet.setHinhMoTa(nameFile);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		Date date = new Date();
		baiViet.setMaDanhMuc(selectDanhMuc(catalog));
		baiViet.setThoiGian(date);
		baiViet.setTieuDe(title);
		baiViet.setMoTa(discription);
		baiViet.setNoiDung(content);
		int check = 0;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(baiViet);
			t.commit();
			System.out.print("Thêm bài viết Thành công!!");
			check = 1;
		} catch (Exception e) {
			t.rollback();
			System.out.print("Thêm bài viết Thất bại!!");
		} finally {
			session.close();
		}

		if (check == 1)
			return "redirect:/manager.htm?announce=show&message=Thêm%20bài%20viết%20Thành%20công!!";
		else
			return "redirect:/manager.htm?announce=show&message=Thêm%20bài%20viết%20Thất%20Bại!!";
	}

	@RequestMapping(value = "contents/{name}")
	public String indexContent(ModelMap model, @PathVariable("name") int maBaiViet) {
		List<BinhLuan> listBl = selectComment(maBaiViet);
		int soluongBl = listBl.size();
		int pageofpage = 2;
		int tongBl = 1 + soluongBl / pageofpage;
		if (soluongBl <= 5) {
			model.addAttribute("display", "none");
		}
		model.addAttribute("pagecurrent", 1);
		model.addAttribute("pagecomment", 1);
		model.addAttribute("pagesize", tongBl);
		model.addAttribute("begins", 0);
		model.addAttribute("ends", pageofpage - 1);
		model.addAttribute("blog", blog);
		model.addAttribute("DanhMuc", selectCatalog());
		model.addAttribute("contentWrite", selectContent(maBaiViet));
		model.addAttribute("binhLuan", listBl);
		return "contents/content";
	}

	@RequestMapping(value = "contents/{name}", method = RequestMethod.POST)
	public String indexContentPost(ModelMap model, @PathVariable("name") int maBaiViet,
			@RequestParam("addcomment") String pagecomment) {
		List<BinhLuan> listBl = selectComment(maBaiViet);
		int pagecomments;
		try {
			pagecomments = Integer.parseInt(pagecomment);
		} catch (Exception e) {
			pagecomments = 1;
		}
		int soluongBl = listBl.size();
		if (soluongBl <= 0)
			soluongBl = 1;
		int pageofpage = 2;
		int tongBl = 1 + soluongBl / pageofpage;
		if (pagecomments > tongBl)
			pagecomments = tongBl;
		model.addAttribute("pagecurrent", pagecomments);
		model.addAttribute("pagecomment", pagecomments);
		model.addAttribute("pagesize", tongBl);
		model.addAttribute("begins", (pagecomments - 1) * pageofpage);
		model.addAttribute("ends", pageofpage * pagecomments - 1);
		model.addAttribute("blog", blog);
		model.addAttribute("DanhMuc", selectCatalog());
		model.addAttribute("contentWrite", selectContent(maBaiViet));
		model.addAttribute("binhLuan", listBl);
		return "contents/content";
	}

	@RequestMapping(value = "contents/update/{name}", method = RequestMethod.GET)
	public String updateContentGet(ModelMap model, @PathVariable("name") int maBaiViet) {
		List<DanhMuc> danhMuc = selectCatalog();
		BaiViet baiViet = selectContent(maBaiViet);
		model.addAttribute("blog", blog);
		model.addAttribute("DanhMuc", danhMuc);
		model.addAttribute("ends", danhMuc.size());
		model.addAttribute("bv", baiViet);
		model.addAttribute("display", "block");
		model.addAttribute("tacVuMaDM", baiViet.getMaDanhMuc().getMaDanhMuc());
		model.addAttribute("tacVuName", "Sửa Bài Viết");
		model.addAttribute("tacVuLink", "update/" + maBaiViet + ".htm");
		return "contents/insertcontent";
	}

	@RequestMapping(value = "contents/update/{name}", method = RequestMethod.POST)
	public String updateContentPost(ModelMap model, @PathVariable("name") int maBaiViet,
			@RequestParam("catalog") String catalog, @RequestParam("title") String title,
			@RequestParam("discription") String discription, @RequestParam("image") MultipartFile image,
			@RequestParam("content") String content) {
		int check = 0;
		BaiViet baiViet = selectContent(maBaiViet);
		baiViet.setMoTa(discription);
		baiViet.setTieuDe(title);
		baiViet.setNoiDung(content);
		baiViet.setMaDanhMuc(selectDanhMuc(catalog));
		String nameFile = null;
		if (image.isEmpty()) {
			
		} else {
			try {
				nameFile = image.getOriginalFilename();
				while (checkFiles(nameFile) != 0) {
					nameFile = randomNumber(1000, 1) + nameFile;
				}
				upFileCSDL(nameFile);
				String imagePath = context.getRealPath("/files/" + image.getOriginalFilename());
				File oldFile = new File(imagePath);
				File newFile = new File(context.getRealPath("/files/" + nameFile));
				oldFile.renameTo(newFile);
				image.transferTo(oldFile);
				baiViet.setHinhMoTa(nameFile);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(baiViet);
			t.commit();
			System.out.print("Update Thành Công!!");
			check = 1;
		} catch (Exception e) {
			t.rollback();
			System.out.println(e);
			System.out.print("Update Thất bại!!");
		} finally {
			session.close();
		}
		if (check == 1)
			return "redirect:/manager.htm?announce=show&message=Update%20bài%20viết%20Thành%20công!!";
		else
			return "redirect:/manager.htm?announce=show&message=Update%20bài%20viết%20Thất%20Bại!!";
	}

	@RequestMapping(value = "contents/delete/{name}", method = RequestMethod.GET)
	public String deleteContentGet(ModelMap model, @PathVariable("name") int maBaiViet) {
		int check = 0;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(selectContent(maBaiViet));
			t.commit();
			System.out.print("Delete Thành Công!!");
			check = 1;
		} catch (Exception e) {
			t.rollback();
			System.out.print("Delete Thất Bại!!");
			System.out.println(e);
		} finally {
			session.close();
		}
		if (check == 1)
			return "redirect:/manager.htm?announce=show&message=Xóa%20bài%20viết%20Thành%20công!!";
		else
			return "redirect:/manager.htm?announce=show&message=Xóa%20bài%20viết%20Thất%20Bại!!";
	}

	// Process Comment
	@RequestMapping(value = "contents/comment", method = RequestMethod.POST)
	public String insertComment(ModelMap model, @RequestParam("commentMail") String mail,
			@RequestParam("commentName") String name, @RequestParam("commentContent") String comment,
			@RequestParam("CommentMaBv") String maBV) {
		int maBaiViet = Integer.parseInt(maBV);
		BinhLuan binhLuan = new BinhLuan();
		binhLuan.setEmail(mail);
		binhLuan.setTenBl(name);
		binhLuan.setNoiDung(comment);
		binhLuan.setMaBaiViet(selectContent(maBaiViet));
		Date date = new Date();
		binhLuan.setThoiGian(date);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(binhLuan);
			t.commit();
			System.out.print("Thêm Bình Luận Thành Công!!");
		} catch (Exception e) {
			t.rollback();
			System.out.print("Thêm Bình Luận Thất Bại!!");
			System.out.println(e);
		} finally {
			session.close();
		}
		return "redirect:/contents/" + maBaiViet + ".htm";
	}

	// Function
	public BaiViet selectContent(int maBaiViet) {
		BaiViet x = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM BaiViet WHERE maBaiViet=:name";
		Query query = session.createQuery(hql);
		query.setParameter("name", maBaiViet);
		x = (BaiViet) query.uniqueResult();
		session.clear();
		return x;
	}

	public List<DanhMuc> selectCatalog() {
		Session session = factory.getCurrentSession();
		String hql = "FROM DanhMuc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DanhMuc> list = query.list();
		return list;
	}

	public DanhMuc selectDanhMuc(String maDanhMuc) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DanhMuc WHERE maDanhMuc=:name";
		Query query = session.createQuery(hql);
		query.setParameter("name", maDanhMuc);
		DanhMuc x = (DanhMuc) query.uniqueResult();
		return x;
	}

	public List<BinhLuan> selectComment(int maBaiViet) {
		Session session = factory.getCurrentSession();
		String hql = "FROM BinhLuan WHERE maBaiViet.maBaiViet=:name ORDER BY idBL DESC";
		Query query = session.createQuery(hql);
		query.setParameter("name", maBaiViet);
		@SuppressWarnings("unchecked")
		List<BinhLuan> list = query.list();
		return list;
	}

	public String randomNumber(int max, int min) {
		int value = 0;
		if (max < min) {
			value = max;
			max = min;
			min = value;
		}
		Random generator = new Random();
		value = generator.nextInt((max - min) + 1) + min;
		return String.valueOf(value);
	}

	public void upFileCSDL(String filename) {
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

	public int checkFiles(String fileName) {
		int check = 0;
		Session session = factory.getCurrentSession();
		String hql = "FROM Files WHERE tenFile=:name";
		Query query = session.createQuery(hql);
		query.setParameter("name", fileName);
		Files fis = (Files) query.uniqueResult();
		if (fis != null) {
			check = 1;
		}
		session.clear();
		return check;
	}
}
