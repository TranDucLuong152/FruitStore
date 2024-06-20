package fpoly.edu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.edu.dao.DanhMucDAO;
import fpoly.edu.model.DanhMuc;

@Service
public class danhMucServiceImpl implements DanhMucService  {

	@Autowired
	DanhMucDAO DanhMucDAO;

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	@Override
	public DanhMuc save(DanhMuc entity) {
		return DanhMucDAO.save(entity);
	}

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#saveAll(java.lang.Iterable)
	 */
	@Override
	public List<DanhMuc> saveAll(List<DanhMuc> entities) {
		return (List<DanhMuc>)DanhMucDAO.saveAll(entities);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	@Override
	public Optional<DanhMuc> findById(Integer id) {
		return DanhMucDAO.findById(id);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	@Override
	public boolean existsById(Integer id) {
		return DanhMucDAO.existsById(id);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAll()
	 */
	@Override
	public List<DanhMuc> findAll() {
		return (List<DanhMuc>)DanhMucDAO.findAll();
	}

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findAllById(java.lang.Iterable)
	 */
	@Override
	public List<DanhMuc> findAllById(List<Integer> ids) {
		return (List<DanhMuc>)DanhMucDAO.findAllById(ids);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	@Override
	public long count() {
		return DanhMucDAO.count();
	}

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Integer id) {
		DanhMucDAO.deleteById(id);
	}

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	@Override
	public void delete(DanhMuc entity) {
		DanhMucDAO.delete(entity);
	}

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	@Override
	public void deleteAllById(List<Integer> ids) {
		DanhMucDAO.deleteAllById(ids);
	}

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	@Override
	public void deleteAll(List<DanhMuc> entities) {
		DanhMucDAO.deleteAll(entities);
	}

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	@Override
	public void deleteAll() {
		DanhMucDAO.deleteAll();
	}
	
}
