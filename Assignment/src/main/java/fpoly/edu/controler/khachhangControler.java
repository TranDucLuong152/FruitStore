package fpoly.edu.controler;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import fpoly.edu.model.KhachHang;
import fpoly.edu.model.SanPham;
import fpoly.edu.service.ParamService;
import fpoly.edu.service.khachHangService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequestMapping("/admin/khachhang")
public class khachhangControler {
	@Autowired
	khachHangService khachHangService;
	@Autowired
	ParamService ParamService;
	private static final String UPLOAD_DIR = "img/";

	@PostMapping("taoKhachHang")
	public String taokhachHang(@ModelAttribute("khachHang") KhachHang khachhang, Model model,
			@RequestParam("khachHangImg") MultipartFile photoFile) throws IOException {
		if (photoFile != null && !photoFile.isEmpty()) {
			String fileName = StringUtils.cleanPath(photoFile.getOriginalFilename());
			khachhang.setUrlHinhAnh(fileName);
			khachhang.setNgayTao(new Date());
			khachHangService.save(khachhang);
			ParamService.save(photoFile, UPLOAD_DIR);
			model.addAttribute("khachHang", new KhachHang());
			return "/admin/nguoidung/curdnguoidung";
		}
		return "/admin/nguoidung/curdnguoidung";
	}

	@ModelAttribute("chucnang")
	public Map<Boolean, String> getGender() {
		Map<Boolean, String> map = new HashMap<Boolean, String>();

		map.put(true, "Admin");
		map.put(false, "User");
		return map;

	}

	@PostMapping("lamMoiKhachHang")
	private String lammoi(Model model) {
		model.addAttribute("khachHang", new SanPham());
		return "/admin/nguoidung/curdnguoidung";

	}

	@GetMapping(value = "edit", params = "editKhachHang")
	public String edit(@RequestParam("idKH") String id, Model model) {
		model.addAttribute("khachHang", khachHangService.findById(id));
		return "/admin/nguoidung/curdnguoidung";
	}

	@GetMapping(value = "del", params = "delKhachHang")
	public String del(@RequestParam("idKH") String id, Model model) {
		khachHangService.deleteById(id);
		List<KhachHang> list = khachHangService.findAll();
		model.addAttribute("htKhachHang", list);
		return "/admin/nguoidung/curdnguoidung";
	}
}
