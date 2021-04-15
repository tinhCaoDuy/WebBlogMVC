package blog.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="THONGBAO")
public class ThongBao {
	@Id
	@GeneratedValue
	@Column(name="MATHONGBAO")
	private int maThongBao;
	@ManyToOne
	@JoinColumn(name="MANGUOIDANGKI")
	private NguoiDangKi maNguoiDangKi;
	@ManyToOne
	@JoinColumn(name="MAMAIL")
	private MailForm maMail;
	
	public ThongBao() {
		
	}
	
	public int getMaThongBao() {
		return maThongBao;
	}

	public void setMaThongBao(int maThongBao) {
		this.maThongBao = maThongBao;
	}

	public NguoiDangKi getMaNguoiDangKi() {
		return maNguoiDangKi;
	}
	public void setMaNguoiDangKi(NguoiDangKi maNguoiDangKi) {
		this.maNguoiDangKi = maNguoiDangKi;
	}
	public MailForm getMaMail() {
		return maMail;
	}
	public void setMaMail(MailForm maMail) {
		this.maMail = maMail;
	}
	
	
}
