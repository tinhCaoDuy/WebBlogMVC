package blog.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.bean.Blog;
import blog.entity.BaiViet;
import blog.entity.DanhMuc;

@Transactional
@Controller
public class TrangChuController {
	@Autowired
	SessionFactory factory;
	@Autowired
	Blog blog;

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String indexHomeGet(ModelMap model, @RequestParam("page") String page,
			String message,String announce) {
		Session session = factory.getCurrentSession();
		String hql = "FROM BaiViet ORDER BY maBaiViet DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<BaiViet> listBv = query.list();
		int pages;
		try {
			pages = Integer.parseInt(page);
		} catch (Exception e) {
			pages = 1;
		}
		int pageofpage = 3;
		int soBaiViet = listBv.size();
		// tong trang tinh theo cong thuc 1 +
		// tongbaiviet / sobaiviet tren 1 trang
		int tongTrang = 1 + soBaiViet / pageofpage;
		if (pages > tongTrang)
			pages = tongTrang;
		model.addAttribute("pagecurrent", pages);
		model.addAttribute("page", pages);
		model.addAttribute("pagesize", tongTrang);
		model.addAttribute("begins", (pages - 1) * pageofpage);
		model.addAttribute("ends", pages * pageofpage - 1);
		model.addAttribute("list", listBv);
		model.addAttribute("blog", blog);
		model.addAttribute("DanhMuc", selectCatalog());
		model.addAttribute("announce", announce);
		model.addAttribute("message", message);
		return "index";
	}

	@RequestMapping(value = "home/theloai/{name}", method = RequestMethod.GET)
	public String indexTheLoai(ModelMap model, @PathVariable("name") String maDanhMuc,
			@RequestParam("page") String page) {
		Session session = factory.getCurrentSession();
		String hql = "FROM BaiViet WHERE maDanhMuc.maDanhMuc=:maDM ORDER BY maBaiViet DESC";
		Query query = session.createQuery(hql);
		query.setParameter("maDM", maDanhMuc);
		@SuppressWarnings("unchecked")
		List<BaiViet> listBv = query.list();
		int pages;
		try {
			pages = Integer.parseInt(page);
		} catch (Exception e) {
			pages = 1;
		}
		int soBaiViet = listBv.size();
		if (soBaiViet <= 0) {
			soBaiViet = 1;
			model.addAttribute("display", "none");
		}
		int pageofpage = 3;
		// tong trang tinh theo cong thuc 1 trang +
		// tongbaiviet / sobaiviet tren 1 trang
		int tongTrang = 1 + soBaiViet / pageofpage;
		if (pages > tongTrang)
			pages = tongTrang;
		model.addAttribute("pagecurrent", pages);
		model.addAttribute("page", pages);
		model.addAttribute("pagesize", tongTrang);
		model.addAttribute("begins", (pages - 1) * pageofpage);
		model.addAttribute("ends", pages * pageofpage - 1);
		model.addAttribute("list", listBv);
		model.addAttribute("blog", blog);
		model.addAttribute("DanhMuc", selectCatalog());
		return "index";
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
