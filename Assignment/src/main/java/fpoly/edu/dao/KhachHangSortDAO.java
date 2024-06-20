package fpoly.edu.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import fpoly.edu.model.KhachHang;
public interface KhachHangSortDAO  extends PagingAndSortingRepository<KhachHang, String>  {

}
