package fpoly.edu.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import fpoly.edu.model.GioHang;
import fpoly.edu.model.SanPham;

public interface SanPhamSortDAO extends PagingAndSortingRepository<SanPham, Integer> {
	@Query("SELECT o FROM SanPham o WHERE o.danhMuc.maDanhMuc = :keyword")
	Page<SanPham> findByKeywords(@Param("keyword") String keyword, Pageable pageable);
	@Query("SELECT s FROM SanPham s INNER JOIN ChiTietGioHang c ON s = c.sanPham INNER JOIN GioHang g ON g = c.gioHang WHERE c.gioHang = :giohang")
	Page<SanPham> findGioHang(@Param("giohang") GioHang giohang, Pageable pageable);
}
