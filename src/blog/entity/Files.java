package blog.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="FILES")
public class Files {
	@Id
	@GeneratedValue
	@Column(name="MAFILE")
	public int maFile;
	@Column(name="TENFILE")
	public String tenFile;
	
	public Files() {
		
	}
	public int getMaFile() {
		return maFile;
	}
	public void setMaFile(int maFile) {
		this.maFile = maFile;
	}
	public String getTenFile() {
		return tenFile;
	}
	public void setTenFile(String tenFile) {
		this.tenFile = tenFile;
	}
	
}
