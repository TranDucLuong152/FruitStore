package fpoly.edu.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "khach_hang")
public class KhachHang implements Serializable {

	@Id
	@NotBlank(message = "Tên tài khoản không được để trống")
	@Size(max = 60, message = "Tên tài khoản không được vượt quá 60 ký tự")
	@Column(name = "ten_tai_khoan", nullable = false, unique = true)
	private String tenTaiKhoan;

	@NotBlank(message = "Họ tên không được để trống")
	@Size(max = 255, message = "Tên không được vượt quá 255 ký tự")
	@Column(name = "ho_ten", nullable = false)
	private String hoTen;

	@NotBlank(message = "Email không được để trống")
	@Email(message = "Email không hợp lệ")
	@Column(name = "email", nullable = false, unique = true)
	private String email;

	@NotBlank(message = "Mật khẩu không được để trống")
	@Size(min = 6, message = "Mật khẩu phải có ít nhất 6 ký tự")
	@Column(name = "mat_khau", nullable = false)
	private String matKhau;

	@Pattern(regexp = "\\d{10}", message = "Số điện thoại không hợp lệ")
	@Column(name = "so_dien_thoai")
	private String soDienThoai;
	@NotBlank(message = "Địa chỉ không được để trống")
	@Size(max = 500, message = "Địa chỉ không được vượt quá 500 ký tự")
	@Column(name = "dia_chi")
	private String diaChi;

	@Size(max = 255, message = "URL hình ảnh không được vượt quá 255 ký tự")
	@Column(name = "url_hinh_anh")
	private String urlHinhAnh;

	@NotNull(message = "Chức năng không được để trống")
	@Column(name = "chuc_nang", nullable = false)
	private boolean chucNang;
	
	@Column(name = "ngay_tao", updatable = false)
	@CreationTimestamp
	private Date ngayTao;

}