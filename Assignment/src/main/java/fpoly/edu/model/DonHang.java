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
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
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
@Table(name = "don_hang")
public class DonHang implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_don_hang")
    private Long maDonHang;

    @ManyToOne
    @JoinColumn(name = "ma_khach_hang", nullable = false)
    private KhachHang khachHang;

    @Column(name = "ngay_dat_hang", updatable = false)
    @CreationTimestamp
    private Timestamp ngayDatHang;

    @NotBlank(message = "Trạng thái không được để trống")
    @Size(max = 50, message = "Trạng thái không được vượt quá 50 ký tự")
    @Column(name = "trang_thai", nullable = false)
    private String trangThai;

    @NotNull(message = "Tổng giá trị không được để trống")
    @DecimalMin(value = "0.0", inclusive = false, message = "Tổng giá trị phải lớn hơn 0")
    @Digits(integer = 10, fraction = 2, message = "Tổng giá trị không hợp lệ")
    @Column(name = "tong_gia_tri", nullable = false)
    private BigDecimal tongGiaTri;

    @Size(max = 500, message = "Địa chỉ giao hàng không được vượt quá 500 ký tự")
    @Column(name = "dia_chi_giao_hang")
    private String diaChiGiaoHang;




   

  
}
