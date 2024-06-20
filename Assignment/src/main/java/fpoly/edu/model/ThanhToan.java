package fpoly.edu.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.hibernate.annotations.CreationTimestamp;

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
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "thanh_toan")
public class ThanhToan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_thanh_toan")
    private Long maThanhToan;

    @ManyToOne
    @JoinColumn(name = "ma_don_hang", nullable = false)
    private DonHang donHang;

    @NotNull(message = "Tổng tiền thanh toán không được để trống")
    @DecimalMin(value = "0.0", inclusive = false, message = "Tổng tiền thanh toán phải lớn hơn 0")
    @Digits(integer = 10, fraction = 2, message = "Tổng tiền thanh toán không hợp lệ")
    @Column(name = "tong_tien", nullable = false)
    private BigDecimal tongTien;

    @NotBlank(message = "Phương thức thanh toán không được để trống")
    @Size(max = 255, message = "Phương thức thanh toán không được vượt quá 255 ký tự")
    @Column(name = "phuong_thuc", nullable = false)
    private String phuongThuc;

    @Column(name = "ngay_thanh_toan")
    @CreationTimestamp
    private Timestamp ngayThanhToan;

}
