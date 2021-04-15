package blog.controller;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.bean.Blog;
import blog.entity.NguoiDangKi;

@Controller
public class DangKiController {
	@Autowired
	SessionFactory factory;
	@Autowired
	Blog blog;
	@Transactional
	@RequestMapping(value="content/dangki",method=RequestMethod.POST)
	public String catalogsDangki(ModelMap model,@RequestParam("email") String email,
			@RequestParam("phone") String phone){
		NguoiDangKi human = new NguoiDangKi();
		human.seteMail(email);
		human.setSdt(phone);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try{
			session.save(human);
			t.commit();
			return "redirect:/home.htm?page=1&message=Đăng%20kí%20thành%20công&announce=show";
		}
		catch(Exception e){
			t.rollback();
			System.out.print("That bai");
			return "redirect:/home.htm?page=1&message=Đăng%20kí%20thất%20bại,%20Email%20có%20thể%20bị%20trùng&announce=show";
		}
		finally {
			session.close();
		}
	}
}
