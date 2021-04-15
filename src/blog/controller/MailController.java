package blog.controller;

import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.entity.MailForm;
import blog.entity.NguoiDangKi;
import blog.entity.ThongBao;

@Transactional
@Controller
public class MailController {
	@Autowired
	SessionFactory factory;
	@Autowired
	JavaMailSender mailer;

	@RequestMapping(value = "mail/all", method = RequestMethod.POST)
	public String sendMailAll(ModelMap model, @RequestParam("from") String from,
			@RequestParam("subject") String subject, @RequestParam("body") String body) throws InterruptedException {
		List<NguoiDangKi> list = selectRegisterKi();
		addMail(from, subject, body);
		MailForm mailForm = selectTopMailForm();
		for (NguoiDangKi x : list) {
			try {
				// tạo Mail
				MimeMessage mail = mailer.createMimeMessage();
				// sử dụng lớp trợ giúp
				MimeMessageHelper helper = new MimeMessageHelper(mail);
				helper.setFrom(from, from);
				helper.setTo(x.geteMail());
				helper.setReplyTo(from, from);
				helper.setSubject(subject);
				helper.setText(body, true);
				// gửi mail
				mailer.send(mail);
				// model.addAttribute("message", "Gửi Mail Thành Công!");
				addThongBao(x, mailForm);
			} catch (Exception ex) {
				System.out.println("Gửi mail thất Bại");
			}
			Thread.sleep(2500);
		}
		return "redirect:/manager.htm?announce=show&message=Đã%20Gửi%20Hoàn%20Tất%20Danh%20Sách%20Mail";
	}

	@RequestMapping(value = "mail/onepeople", method = RequestMethod.POST)
	public String sendMailOnePeople(ModelMap model, @RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("subject") String subject, @RequestParam("body") String body) throws InterruptedException {
		NguoiDangKi nguoiDangKi = checkMail(to);
		if (nguoiDangKi != null) {
			try {
				// tạo Mail
				MimeMessage mail = mailer.createMimeMessage();
				// sử dụng lớp trợ giúp
				MimeMessageHelper helper = new MimeMessageHelper(mail);
				helper.setFrom(from, from);
				helper.setTo(to);
				helper.setReplyTo(from, from);
				helper.setSubject(subject);
				helper.setText(body, true);
				// gửi mail
				mailer.send(mail);
				addMail(from, subject, body);
				MailForm mailForm = selectTopMailForm();
				addThongBao(nguoiDangKi, mailForm);
				// model.addAttribute("message", "Gửi Mail Thành Công!");
				return "redirect:/manager.htm?announce=show&message=Gửi%20Mail%20Thành%20Công!";
			} catch (Exception ex) {
				// model.addAttribute("message", "Gửi Mail Thất Bại!");
				System.out.println("Gửi mail thất Bại");
				return "redirect:/manager.htm?announce=show&message=Gửi%20Mail%20Thất%20Bại!";
			}
		}else{
			return "redirect:/manager.htm?announce=show&message=Địa%20chỉ%20Email%20Này%20Không%20Có%20Trong%20người%20đăng%20kí";
		}
	}

	// Function
	public NguoiDangKi checkMail(String mail) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NguoiDangKi WHERE eMail=:name";
		Query query = session.createQuery(hql);
		query.setParameter("name", mail);
		NguoiDangKi nguoiDangKi = (NguoiDangKi) query.uniqueResult();
		session.clear();
		return nguoiDangKi;
	}

	public void addThongBao(NguoiDangKi maNguoiDangKi, MailForm maMail) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		ThongBao thongBao = new ThongBao();
		thongBao.setMaMail(maMail);
		thongBao.setMaNguoiDangKi(maNguoiDangKi);
		try {
			session.save(thongBao);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			System.out.println("Thêm Thông Báo... Lỗi!!");
		} finally {
			session.close();
		}
	}

	public List<NguoiDangKi> selectRegisterKi() {
		Session session = factory.getCurrentSession();
		String hql = "FROM NguoiDangKi ORDER BY maNguoiDangKi";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<NguoiDangKi> list = query.list();
		return list;
	}

	public MailForm selectTopMailForm() {
		Session session = factory.getCurrentSession();
		String hql = "FROM MailForm WHERE maMail=(SELECT MAX(maMail) FROM MailForm)";
		Query query = session.createQuery(hql);
		MailForm mailForm = (MailForm) query.uniqueResult();
		return mailForm;
	}

	public void addMail(String from, String subject, String body) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Date date = new Date();
		MailForm mail = new MailForm();
		mail.setThoiGian(date);
		mail.setMailFrom(from);
		mail.setMailSubject(subject);
		mail.setMailBody(body);
		try {
			session.save(mail);
			t.commit();
			System.out.println("add MailForm Thanh Cong!!");
		} catch (Exception e) {
			t.rollback();
			System.out.println("add MailForm That Bai!!");
		} finally {
			session.close();
		}
	}
}
