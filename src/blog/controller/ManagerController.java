package blog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.bean.Blog;
import blog.entity.BaiViet;
import blog.entity.DanhMuc;
import blog.entity.NguoiDangKi;

@Transactional
@Controller

public class ManagerController {
	@Autowired
	SessionFactory factory;
	@Autowired
	Blog blog;
	
	@RequestMapping("manager")
	public String indexmanager(ModelMap model,String message,String announce) {
		Session session = factory.getCurrentSession();
		String hql = "FROM BaiViet ORDER BY maBaiViet DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<BaiViet> list = query.list();
		session.clear();
		query = session.createQuery("FROM NguoiDangKi ORDER BY maNguoiDangKi DESC");
		@SuppressWarnings("unchecked")
		List<NguoiDangKi> listNgDangKi = query.list();
		model.addAttribute("dsRegister", listNgDangKi);
		model.addAttribute("sizeRe",listNgDangKi.size());
		model.addAttribute("dsBv", list);
		model.addAttribute("size", list.size());
		model.addAttribute("danhMuc",selectCatalog());
		model.addAttribute("announce", announce);
		model.addAttribute("message", message);
		return "managers/manager";
	}

	@RequestMapping(value="managers/select",method = RequestMethod.POST)
	public String changeCatalog(ModelMap model,@RequestParam("catalog") String catalog){
		Session session = factory.getCurrentSession();
		Query query;
		String hql = new String();
		if(catalog.equals("all")){
			hql = "FROM BaiViet ORDER BY maBaiViet DESC";
			query = session.createQuery(hql);
		}else{
			hql = "FROM BaiViet WHERE maDanhMuc.maDanhMuc=:name ORDER BY maBaiViet DESC";
			query = session.createQuery(hql);
			query.setParameter("name",catalog);
		}
		@SuppressWarnings("unchecked")
		List<BaiViet> list = query.list();
		model.addAttribute("dsBv", list);
		model.addAttribute("size", list.size());
		model.addAttribute("show", "show");
		model.addAttribute("danhMuc",selectCatalog());
		return "managers/manager";
	}
	@RequestMapping(value="login")
	public String indexlogin(ModelMap model,HttpServletRequest request) {
		HttpSession admin = request.getSession();
		if(admin.getAttribute("username") == null){
			model.addAttribute("blog", blog);
			return "managers/login";
		}else{
			if(admin.getAttribute("username").equals("admin")){
				return indexmanager(model,"Hãy Đăng Xuất Nếu Muốn Đăng Nhập Lại","show");
			}
			model.addAttribute("blog", blog);
			return "managers/login";
		}
	}
	@RequestMapping(value="managers/login",method = RequestMethod.POST)
	public String loginManager(ModelMap model,HttpServletRequest request){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username.equals("admin") && password.equals("loginadmin1999")){
			HttpSession admin = request.getSession();
			admin.setAttribute("username", "admin");
			admin.setAttribute("password", "loginadmin1999");
			return "redirect:/manager.htm";
		}else {
			model.addAttribute("blog", blog);
			model.addAttribute("message", "Lỗi đăng nhậm, xin kiểm tra lại tài khoản và mật khẩu");
			model.addAttribute("announce", "show");
			return "managers/login";
		}
	}
	@RequestMapping(value="logout")
	public String logout(ModelMap model,HttpServletRequest request){
		HttpSession admin = request.getSession();
		admin.invalidate();
		return "redirect:/login.htm";
	}
	// Function
	public List<DanhMuc> selectCatalog() {
		Session session = factory.getCurrentSession();
		String hql = "FROM DanhMuc";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DanhMuc> list = query.list();
		return (List<DanhMuc>) list;
	}
}
