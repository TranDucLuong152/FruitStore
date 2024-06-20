package fpoly.edu.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import fpoly.edu.model.KhachHang;

public interface KhachHangDAO extends CrudRepository<KhachHang, String> {
	@Query("SELECT o FROM KhachHang o WHERE o.tenTaiKhoan LIKE ?1 and  o.matKhau LIKE ?2")
	KhachHang findByKeywords(String keywords,String pass);
	
}
