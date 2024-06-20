package fpoly.edu.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "gio_hang")
public class GioHang {

    public GioHang(KhachHang khachHang, Date date) {
		
		this.khachHang = khachHang;
		this.ngayTao =  date;
	}

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma_gio_hang")
    private Long maGioHang;

    @OneToOne
    @JoinColumn(name = "ma_khach_hang", nullable = false)
    private KhachHang khachHang;

    @Column(name = "ngay_tao", updatable = false)
    @CreationTimestamp
    private Date ngayTao;

}
