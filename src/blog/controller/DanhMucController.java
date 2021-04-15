package blog.controller;

import java.util.List;

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

import blog.bean.Blog;
import blog.entity.DanhMuc;

@Transactional
@Controller
public class DanhMucController {
	@Autowired
	SessionFactory factory;
	@Autowired
	Blog blog;
	
	@RequestMapping("insertcatalog")
	public String insertcatelog(ModelMap model) {
		model.addAttribute("blog", blog);
		model.addAttribute("DanhMuc", selectCatalog());
		return "catalogs/insertcatalog";
	}

	@RequestMapping(value = "catalogs/insert", method = RequestMethod.POST)
	public String insert(@RequestParam("madanhmuc") String maDanhMuc, @RequestParam("tendanhmuc") String tenDanhMuc) {
		DanhMuc danhMuc = new DanhMuc();
		danhMuc.setMaDanhMuc(maDanhMuc);
		danhMuc.setTenDanhMuc(tenDanhMuc);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(danhMuc);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/insertcatalog.htm";
	}

	@RequestMapping(value = "catalogs/delete/{name}", method = RequestMethod.GET)
	public String delete(@PathVariable("name") String name) {
		DanhMuc danhMuc = new DanhMuc();
		danhMuc.setMaDanhMuc(name);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(danhMuc);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/insertcatalog.htm";
	}

	@RequestMapping(value = "catalogs/update/{name}", method = RequestMethod.POST)
	public String update(@PathVariable("name") String name, @RequestParam("tenDanhMuc") String tenDanhMuc) {
		DanhMuc danhMuc = new DanhMuc();
		danhMuc.setMaDanhMuc(name);
		danhMuc.setTenDanhMuc(tenDanhMuc);
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(danhMuc);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/insertcatalog.htm";
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
