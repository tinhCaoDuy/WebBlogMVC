package blog.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "BINHLUAN")
public class BinhLuan {
	@Id
	@GeneratedValue
	@Column(name = "IDBL")
	private int idBL;
	@ManyToOne
	@JoinColumn(name = "MABAIVIET")
	private BaiViet maBaiViet;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "TENNGUOIBL")
	private String tenBl;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "THOIGIAN")
	private Date thoiGian;
	@Column(name = "NOIDUNG")
	private String noiDung;

	public BinhLuan() {

	}

	public int getIdBL() {
		return idBL;
	}

	public void setIdBL(int idBL) {
		this.idBL = idBL;
	}

	public BaiViet getMaBaiViet() {
		return maBaiViet;
	}

	public void setMaBaiViet(BaiViet maBaiViet) {
		this.maBaiViet = maBaiViet;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTenBl() {
		return tenBl;
	}

	public void setTenBl(String tenBl) {
		this.tenBl = tenBl;
	}

	public Date getThoiGian() {
		return thoiGian;
	}

	public void setThoiGian(Date thoiGian) {
		this.thoiGian = thoiGian;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

}
