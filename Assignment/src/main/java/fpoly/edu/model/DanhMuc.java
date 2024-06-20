package fpoly.edu.model;

import java.sql.Timestamp;
import java.util.Date;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "danh_muc")
public class DanhMuc {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_danh_muc")
	private Long maDanhMuc;

	@NotBlank(message = "Tên danh mục không được để trống")
	@Size(max = 255, message = "Tên danh mục không được vượt quá 255 ký tự")
	@Column(name = "ten", nullable = false)
	private String ten;

	@Size(max = 1000, message = "Mô tả danh mục không được vượt quá 1000 ký tự")
	@Column(name = "mo_ta")
	private String moTa;

	@Column(name = "ngay_tao", updatable = false)
	@CreationTimestamp
	private Date ngayTao;
	public DanhMuc(Long maDanhMuc, String ten) {
		this.maDanhMuc = maDanhMuc;
		this.ten = ten;
	}

}