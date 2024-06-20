package fpoly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.edu.dao.ChiTietDonHangDAO;
import fpoly.edu.model.ChiTietDonHang;

@Service
public class donHangChiTietServiceImpl implements donHangChiTietService {
	@Autowired
	ChiTietDonHangDAO ChiTietDonHangDAO;

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	@Override
	public ChiTietDonHang save(ChiTietDonHang entity) {
		return ChiTietDonHangDAO.save(entity);
	}

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#saveAll(java.lang.Iterable)
	 */
	@Override
	public List<ChiTietDonHang> saveAll(List<ChiTietDonHang> entities) {
		return (List<ChiTietDonHang>)ChiTietDonHangDAO.saveAll(entities);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	@Override
	public Optional<ChiTietDonHang> findById(Integer id) {
		return ChiTietDonHangDAO.findById(id);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	@Override
	public boolean existsById(Integer id) {
		return ChiTietDonHangDAO.existsById(id);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
	@Override
	public List<ChiTietDonHang> findAll() {
		return (List<ChiTietDonHang>)ChiTietDonHangDAO.findAll();
	}

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAllById(java.lang.Iterable)
	 */
	@Override
	public List<ChiTietDonHang> findAllById(List<Integer> ids) {
		return (List<ChiTietDonHang>)ChiTietDonHangDAO.findAllById(ids);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	@Override
	public long count() {
		return ChiTietDonHangDAO.count();
	}

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Integer id) {
		ChiTietDonHangDAO.deleteById(id);
	}

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	@Override
	public void delete(ChiTietDonHang entity) {
		ChiTietDonHangDAO.delete(entity);
	}

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	@Override
	public void deleteAllById(List<Integer> ids) {
		ChiTietDonHangDAO.deleteAllById(ids);
	}

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	@Override
	public void deleteAll(List<ChiTietDonHang> entities) {
		ChiTietDonHangDAO.deleteAll(entities);
	}

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	@Override
	public void deleteAll() {
		ChiTietDonHangDAO.deleteAll();
	}
	
	
	
}
