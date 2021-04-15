package blog.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "DANHMUC")
public class DanhMuc {
	@Id
	@Column(name = "MADANHMUC")
	private String maDanhMuc;
	@Column(name = "TENDANHMUC")
	private String tenDanhMuc;
	@OneToMany(mappedBy = "maDanhMuc", fetch = FetchType.LAZY)
	private Collection<BaiViet> baiViet;

	public Collection<BaiViet> getBaiViet() {
		return baiViet;
	}

	public void setBaiViet(Collection<BaiViet> baiViet) {
		this.baiViet = baiViet;
	}

	public String getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(String maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}

	public DanhMuc() {

	}

}
