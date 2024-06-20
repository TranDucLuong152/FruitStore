package fpoly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.edu.dao.GioHangDAO;
import fpoly.edu.dao.GioHangRepository;
import fpoly.edu.model.GioHang;
import fpoly.edu.model.KhachHang;

@Service
public class gioHangServiceImpl implements gioHangService {
	@Autowired
	GioHangDAO gioHangDAO;
	@Autowired
	private GioHangRepository gioHangRepository;

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	@Override
	public GioHang save(GioHang entity) {
		return gioHangDAO.save(entity);
	}

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#saveAll(java.lang.Iterable)
	 */
	@Override
	public List<GioHang> saveAll(List<GioHang> entities) {
		return (List<GioHang>) gioHangDAO.saveAll(entities);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	@Override
	public Optional<GioHang> findById(Integer id) {
		return gioHangDAO.findById(id);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	@Override
	public boolean existsById(Integer id) {
		return gioHangDAO.existsById(id);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
	@Override
	public List<GioHang> findAll() {
		return (List<GioHang>) gioHangDAO.findAll();
	}

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAllById(java.lang.Iterable)
	 */
	@Override
	public List<GioHang> findAllById(List<Integer> ids) {
		return (List<GioHang>) gioHangDAO.findAllById(ids);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	@Override
	public long count() {
		return gioHangDAO.count();
	}

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Integer id) {
		gioHangDAO.deleteById(id);
	}

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	@Override
	public void delete(GioHang entity) {
		gioHangDAO.delete(entity);
	}

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
//	@Override
//	public void deleteAllById(List<Integer> ids) {
//		gioHangDAO.deleteAllById(ids);
//	}

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	@Override
	public void deleteAll(List<GioHang> entities) {
		gioHangDAO.deleteAll(entities);
	}

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	@Override
	public void deleteAll() {
		gioHangDAO.deleteAll();
	}

	@Override
	public void deleteAllById(List<Integer> ids) {
		// TODO Auto-generated method stub

	}

	@Override
	public GioHang findByKhachHang(KhachHang khachhang) {
		return gioHangRepository.findByKhachHang(khachhang);
	}

}
