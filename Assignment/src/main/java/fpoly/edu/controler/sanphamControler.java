package fpoly.edu.controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import fpoly.edu.model.DanhMuc;
import fpoly.edu.model.KhachHang;
import fpoly.edu.model.SanPham;
import fpoly.edu.service.DanhMucService;
import fpoly.edu.service.ParamService;
import fpoly.edu.service.khachHangService;
import fpoly.edu.service.sanPhamService;
import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequestMapping("/admin/sanpham")
public class sanphamControler {
	@Autowired
	sanPhamService sanPhamService;
	@Autowired
	ParamService ParamService;

	@Autowired
	DanhMucService DanhMucService;
	private static final String UPLOAD_DIR = "img/";

	@PostMapping("taoSanPham")
	public String taoSanPham(@ModelAttribute("sanPham") @Valid SanPham sanpham, BindingResult result, Model model,
			@RequestParam("sanPhamImg") MultipartFile photoFile) throws IOException {
		if (result.hasErrors()) {
			model.addAttribute("errors", result.getAllErrors());
			model.addAttribute("textColor", "text-danger");
			model.addAttribute("messager", "Lỗi nhập dữ liệu! Nhập lại.");

		}
		if (photoFile != null && !photoFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(photoFile.getOriginalFilename());
			sanpham.setUrlHinhAnh(fileName);
			sanpham.setNgayTao(new Date());
			sanPhamService.save(sanpham);
			ParamService.save(photoFile, UPLOAD_DIR);
			model.addAttribute("sanPham", new SanPham());
			model.addAttribute("textColor", "text-success");
			model.addAttribute("messager", "Tạo thành công!");
			return "/admin/sanpham/curdsanpham";

		}

		return "/admin/sanpham/curdsanpham";
	}

	@PostMapping("lamMoiSanPham")
	private String lammoi(Model model) {
		model.addAttribute("sanPham", new SanPham());
		return "/admin/sanpham/curdsanpham";

	}
	@GetMapping( value = "edit",params = "editSanPham")
	public String edit(@RequestParam("idSP")Integer id,Model model) {
		model.addAttribute("sanPham",sanPhamService.findById(id));
		return "/admin/sanpham/curdsanpham";
	}
	@GetMapping( value = "del",params = "delSanPham")
	public String del(@RequestParam("idSP")Integer id,Model model) {
		sanPhamService.deleteById(id);
		List<SanPham> list = sanPhamService.findAll();
		model.addAttribute("htSanPham", list);
		return "/admin/sanpham/htsanpham";
	}

	@ModelAttribute("danhmuc")
	public List<DanhMuc> getDanhMuc() {
		List<DanhMuc> list = DanhMucService.findAll();
		return list;
	}

}
