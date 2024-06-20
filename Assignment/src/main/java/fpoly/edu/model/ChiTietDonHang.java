package fpoly.edu.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

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
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "chi_tiet_don_hang")
public class ChiTietDonHang implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_chi_tiet_don_hang")
    private Long maChiTietDonHang;

    @ManyToOne
    @JoinColumn(name = "ma_don_hang", nullable = false)
    private DonHang donHang;

    @ManyToOne
    @JoinColumn(name = "ma_san_pham", nullable = false)
    private SanPham sanPham;

    @NotNull(message = "Số lượng không được để trống")
    @Min(value = 1, message = "Số lượng phải lớn hơn 0")
    @Column(name = "so_luong", nullable = false)
    private Integer soLuong;

    @NotNull(message = "Giá đơn vị không được để trống")
    @DecimalMin(value = "0.0", inclusive = false, message = "Giá đơn vị phải lớn hơn 0")
    @Digits(integer = 10, fraction = 2, message = "Giá đơn vị không hợp lệ")
    @Column(name = "gia_don_vi", nullable = false)
    private BigDecimal giaDonVi;

    @NotNull(message = "Tổng giá không được để trống")
    @DecimalMin(value = "0.0", inclusive = false, message = "Tổng giá phải lớn hơn 0")
    @Digits(integer = 10, fraction = 2, message = "Tổng giá không hợp lệ")
    @Column(name = "tong_gia", nullable = false)
    private BigDecimal tongGia;

    @Column(name = "ngay_tao", updatable = false)
    @CreationTimestamp
    private Timestamp ngayTao;



}
