package fpoly.edu.service;

import java.util.List;
import java.util.Optional;

import fpoly.edu.model.KhachHang;

public interface khachHangService {

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	void deleteAll();

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	void deleteAll(List<KhachHang> entities);

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	void deleteAllById(List<String> ids);

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	void delete(KhachHang entity);

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	void deleteById(String id);

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	long count();

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAllById(java.lang.Iterable)
	 */
	List<KhachHang> findAllById(List<String> ids);

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
	List<KhachHang> findAll();

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	boolean existsById(String id);

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	Optional<KhachHang> findById(String id);

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#saveAll(java.lang.Iterable)
	 */
	List<KhachHang> saveAll(List<KhachHang> entities);

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	KhachHang save(KhachHang entity);

}
