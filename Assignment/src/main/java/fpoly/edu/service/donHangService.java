package fpoly.edu.service;

import java.util.List;
import java.util.Optional;

import fpoly.edu.model.DonHang;

public interface donHangService {

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	void deleteAll();

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	void deleteAll(List<DonHang> entities);

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	void deleteAllById(List<Integer> ids);

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	void delete(DonHang entity);

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	void deleteById(Integer id);

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
	List<DonHang> findAllById(List<Integer> ids);

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
	List<DonHang> findAll();

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	boolean existsById(Integer id);

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	Optional<DonHang> findById(Integer id);

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#saveAll(java.lang.Iterable)
	 */
	List<DonHang> saveAll(List<DonHang> entities);

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	DonHang save(DonHang entity);

}
