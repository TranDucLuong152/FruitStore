package fpoly.edu.model;
import java.io.Serializable;
import java.sql.Timestamp;
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
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "danh_gia")
public class DanhGia implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_danh_gia")
    private Long maDanhGia;

    @ManyToOne
    @JoinColumn(name = "ma_san_pham", nullable = false)
    private SanPham maSanPham;

    @ManyToOne
    @JoinColumn(name = "ma_khach_hang", nullable = false)
    private KhachHang maKhachHang;

    @NotNull(message = "Số sao đánh giá không được để trống")
    @Min(value = 1, message = "Số sao đánh giá phải từ 1 đến 5")
    @Max(value = 5, message = "Số sao đánh giá phải từ 1 đến 5")
    @Column(name = "danh_gia", nullable = false)
    private Integer danhGia;

    @Column(name = "binh_luan", columnDefinition = "TEXT")
    private String binhLuan;

    @Column(name = "ngay_tao", updatable = false)
    @CreationTimestamp
    private Timestamp ngayTao;

    @Column(name = "ngay_cap_nhat")
    @UpdateTimestamp
    private Timestamp ngayCapNhat;

   
}
