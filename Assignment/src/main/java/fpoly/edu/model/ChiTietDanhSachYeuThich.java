package fpoly.edu.model;

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
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "chi_tiet_danh_sach_yeu_thich")
public class ChiTietDanhSachYeuThich {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_chi_tiet_danh_sach_yeu_thich")
    private Long maChiTietDanhSachYeuThich;

    @ManyToOne
    @JoinColumn(name = "ma_danh_sach_yeu_thich", nullable = false)
    private DanhSachYeuThich danhSachYeuThich;

    @ManyToOne
    @JoinColumn(name = "ma_san_pham", nullable = false)
    private SanPham sanPham;

    @Column(name = "ngay_tao", updatable = false)
    @CreationTimestamp
    private Timestamp ngayTao;

    @Column(name = "ngay_cap_nhat")
    @UpdateTimestamp
    private Timestamp ngayCapNhat;


}
