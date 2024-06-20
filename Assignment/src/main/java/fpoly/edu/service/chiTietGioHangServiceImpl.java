package fpoly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.edu.dao.ChiTietGioHangDAO;
import fpoly.edu.dao.ChiTietGioHangRepository;
import fpoly.edu.model.ChiTietGioHang;
import fpoly.edu.model.SanPham;
import fpoly.edu.model.GioHang;

@Service
public class chiTietGioHangServiceImpl implements chiTietGioHangService {

	@Autowired
	ChiTietGioHangDAO ChiTietGioHangDAO;
	@Autowired
	ChiTietGioHangRepository chiTietGioHangRepository;

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	@Override
	public ChiTietGioHang save(ChiTietGioHang entity) {
		return ChiTietGioHangDAO.save(entity);
	}

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#saveAll(java.lang.Iterable)
	 */
	@Override
	public List<ChiTietGioHang> saveAll(List<ChiTietGioHang> entities) {
		return (List<ChiTietGioHang>) ChiTietGioHangDAO.saveAll(entities);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	@Override
	public Optional<ChiTietGioHang> findById(Integer id) {
		return ChiTietGioHangDAO.findById(id);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	@Override
	public boolean existsById(Integer id) {
		return ChiTietGioHangDAO.existsById(id);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
	@Override
	public List<ChiTietGioHang> findAll() {
		return (List<ChiTietGioHang>) ChiTietGioHangDAO.findAll();
	}

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAllById(java.lang.Iterable)
	 */
	@Override
	public List<ChiTietGioHang> findAllById(List<Integer> ids) {
		return (List<ChiTietGioHang>) ChiTietGioHangDAO.findAllById(ids);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	@Override
	public long count() {
		return ChiTietGioHangDAO.count();
	}

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Integer id) {
		ChiTietGioHangDAO.deleteById(id);
	}

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	@Override
	public void delete(ChiTietGioHang entity) {
		ChiTietGioHangDAO.delete(entity);
	}

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	@Override
	public void deleteAllById(List<Integer> ids) {
		ChiTietGioHangDAO.deleteAllById(ids);
	}

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	@Override
	public void deleteAll(List<ChiTietGioHang> entities) {
		ChiTietGioHangDAO.deleteAll(entities);
	}

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	@Override
	public void deleteAll() {
		ChiTietGioHangDAO.deleteAll();
	}

	@Override
	public void addProductToCart(GioHang gioHang, SanPham sanPham, int soLuong) {
		ChiTietGioHang chiTietGioHang = new ChiTietGioHang();
		chiTietGioHang.setGioHang(gioHang);
		chiTietGioHang.setSanPham(sanPham);
		chiTietGioHang.setSoLuong(soLuong);
		chiTietGioHangRepository.save(chiTietGioHang);
	}
}
