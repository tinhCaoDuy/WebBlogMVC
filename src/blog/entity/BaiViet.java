package blog.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "BAIVIET")
public class BaiViet {
	@Id
	@GeneratedValue
	@Column(name = "MABAIVIET")
	private int maBaiViet;
	@ManyToOne
	@JoinColumn(name = "MADANHMUC")
	private DanhMuc maDanhMuc;
	@Column(name = "TIEUDE")
	private String tieuDe;
	@Column(name = "MOTA")
	private String moTa;
	@Column(name = "HINHMT")
	private String hinhMoTa;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "THOIGIAN")
	private Date thoiGian;
	@Column(name = "NOIDUNG")
	private String noiDung;
	@OneToMany(mappedBy = "maBaiViet", fetch = FetchType.LAZY)
	private Collection<BinhLuan> binhLuan;

	public BaiViet() {

	}

	public Collection<BinhLuan> getBinhLuan() {
		return binhLuan;
	}

	public void setBinhLuan(Collection<BinhLuan> binhLuan) {
		this.binhLuan = binhLuan;
	}

	public int getMaBaiViet() {
		return maBaiViet;
	}

	public void setMaBaiViet(int maBaiViet) {
		this.maBaiViet = maBaiViet;
	}

	public DanhMuc getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(DanhMuc maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getHinhMoTa() {
		return hinhMoTa;
	}

	public void setHinhMoTa(String hinhMoTa) {
		this.hinhMoTa = hinhMoTa;
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
