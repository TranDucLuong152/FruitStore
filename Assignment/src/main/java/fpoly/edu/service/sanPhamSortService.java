package fpoly.edu.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import fpoly.edu.model.SanPham;

public interface sanPhamSortService {

	/**
	 * @param pageable
	 * @return
	 * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Pageable)
	 */
	Page<SanPham> findAll(Pageable pageable);

	/**
	 * @param sort
	 * @return
	 * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Sort)
	 */
	List<SanPham> findAll(Sort sort);

}
