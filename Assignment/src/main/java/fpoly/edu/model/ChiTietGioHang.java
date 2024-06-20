package fpoly.edu.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "chi_tiet_gio_hang")
public class ChiTietGioHang {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_chi_tiet_gio_hang")
    private Long maChiTietGioHang;

    @ManyToOne
    @JoinColumn(name = "ma_gio_hang", nullable = false)
    private GioHang gioHang;

    @ManyToOne
    @JoinColumn(name = "ma_san_pham", nullable = false)
    private SanPham sanPham;

    @NotNull(message = "Số lượng không được để trống")
    @Min(value = 1, message = "Số lượng phải lớn hơn 0")
    @Column(name = "so_luong", nullable = false)
    private Integer soLuong;


 
}
