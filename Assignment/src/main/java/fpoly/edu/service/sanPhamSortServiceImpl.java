package fpoly.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import fpoly.edu.dao.SanPhamSortDAO;
import fpoly.edu.model.SanPham;


@Service
public class sanPhamSortServiceImpl implements sanPhamSortService {
	@Autowired
	SanPhamSortDAO sanPhamSortDAO;

	/**
	 * @param sort
	 * @return
	 * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Sort)
	 */
	@Override
	public List<SanPham> findAll(Sort sort) {
		return (List<SanPham>)sanPhamSortDAO.findAll(sort);
	}

	/**
	 * @param pageable
	 * @return
	 * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<SanPham> findAll(Pageable pageable) {
		return sanPhamSortDAO.findAll(pageable);
	}
	
}
