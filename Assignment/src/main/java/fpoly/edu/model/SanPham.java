package fpoly.edu.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Digits;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "san_pham")
public class SanPham implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_san_pham")
	private Long maSanPham;

	@NotBlank(message = "Tên sản phẩm không được để trống")
	@Size(max = 255, message = "Tên sản phẩm không được vượt quá 255 ký tự")
	@Column(name = "ten", nullable = false)
	private String ten;
	
	@NotBlank(message = "Xuất sứ không được để trống")
	@Size(max = 255, message = "Xuất sứ không được vượt quá 255 ký tự")
	@Column(name = "xuat_su", nullable = false)
	private String xuatSu;
	
	@Size(max = 1000, message = "Mô tả sản phẩm không được vượt quá 1000 ký tự")
	@Column(name = "mo_ta")
	private String moTa;

	@NotNull(message = "Giá sản phẩm không được để trống")
	@DecimalMin(value = "0.0", inclusive = false, message = "Giá sản phẩm phải lớn hơn 0")
	@Digits(integer = 10, fraction = 2, message = "Giá sản phẩm không hợp lệ")
	@Column(name = "gia", nullable = false)
	private BigDecimal gia;

	@NotNull(message = "Số lượng không được để trống")
	@Min(value = 0, message = "Số lượng tồn không được nhỏ hơn 0")
	@Column(name = "so_luong_ton", nullable = false)
	private Integer soLuongTon;

	@ManyToOne
	@JoinColumn(name = "ma_danh_muc", nullable = false)
	private DanhMuc danhMuc;

	@Size(max = 255, message = "URL hình ảnh không được vượt quá 255 ký tự")
	@Column(name = "url_hinh_anh")
	private String urlHinhAnh;

	@Column(name = "ngay_tao", updatable = false)
	@CreationTimestamp
	private Date ngayTao;


}
