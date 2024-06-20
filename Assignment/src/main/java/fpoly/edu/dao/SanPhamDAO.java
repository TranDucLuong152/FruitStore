package fpoly.edu.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import fpoly.edu.model.SanPham;

public interface SanPhamDAO extends JpaRepository<SanPham, Integer> {
	

}
