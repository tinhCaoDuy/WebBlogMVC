package blog.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="NGUOIDANGKI")
public class NguoiDangKi {
	@Id
	@GeneratedValue
	@Column(name="MANGUOIDANGKI")
	private int maNguoiDangKi;
	@Column(name="EMAIL")
	private String eMail;
	@Column(name="SDT")
	private String sdt;
	@OneToMany(mappedBy = "maNguoiDangKi",fetch = FetchType.EAGER)
	private Collection<ThongBao> thongBao;
	
	
	public Collection<ThongBao> getThongBao() {
		return thongBao;
	}
	public void setThongBao(Collection<ThongBao> thongBao) {
		this.thongBao = thongBao;
	}
	public int getMaNguoiDangKi() {
		return maNguoiDangKi;
	}
	public void setMaNguoiDangKi(int maNguoiDangKi) {
		this.maNguoiDangKi = maNguoiDangKi;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public NguoiDangKi() {

	}
}
