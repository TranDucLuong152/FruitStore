package fpoly.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fpoly.edu.model.GioHang;
import fpoly.edu.model.KhachHang;

public interface GioHangRepository extends JpaRepository<GioHang, Long> {
    GioHang findByKhachHang(KhachHang khachhang);
}
