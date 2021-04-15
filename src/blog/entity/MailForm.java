package blog.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "MAILFORM")
public class MailForm {
	@Id
	@GeneratedValue
	@Column(name = "MAMAIL")
	private int maMail;
	@Column(name = "MAILFROM")
	private String mailFrom;
	@Column(name = "MAILSUBJECT")
	private String mailSubject;
	@Column(name = "MAILBODY")
	private String mailBody;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "THOIGIAN")
	private Date thoiGian;
	@OneToMany(mappedBy="maMail",fetch = FetchType.EAGER)
	private Collection<ThongBao> thongBao;
	
	
	public Collection<ThongBao> getThongBao() {
		return thongBao;
	}
	public void setThongBao(Collection<ThongBao> thongBao) {
		this.thongBao = thongBao;
	}
	public MailForm() {
		
	}
	public int getMaMail() {
		return maMail;
	}
	public void setMaMail(int maMail) {
		this.maMail = maMail;
	}
	public String getMailFrom() {
		return mailFrom;
	}
	public void setMailFrom(String mailFrom) {
		this.mailFrom = mailFrom;
	}
	public String getMailSubject() {
		return mailSubject;
	}
	public void setMailSubject(String mailSubject) {
		this.mailSubject = mailSubject;
	}
	public String getMailBody() {
		return mailBody;
	}
	public void setMailBody(String mailBody) {
		this.mailBody = mailBody;
	}
	public Date getThoiGian() {
		return thoiGian;
	}
	public void setThoiGian(Date thoiGian) {
		this.thoiGian = thoiGian;
	}
	
	
}
