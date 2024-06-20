package fpoly.edu.controler;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fpoly.edu.dao.KhachHangDAO;
import fpoly.edu.model.GioHang;
import fpoly.edu.model.KhachHang;
import fpoly.edu.service.SessionService;
import fpoly.edu.service.gioHangService;
import fpoly.edu.service.khachHangService;
import jakarta.validation.Valid;

@Controller
public class nguoiDungController {
	@Autowired
	khachHangService khachHangService;

	@Autowired
	SessionService SessionService;
	@Autowired
	KhachHangDAO KhachHangDAO;
	@Autowired
	gioHangService gioHangService;

	@PostMapping("register")
	public String DangKy(@ModelAttribute("nguoiDung") @Valid KhachHang khachhang, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("errors", result.getAllErrors());
			model.addAttribute("textColor", "text-danger");
			model.addAttribute("messager", "Lỗi nhập dữ liệu! Nhập lại.");
			model.addAttribute("page_noiDung", "dangKy.jsp");
			return "index";

		}
		khachhang.setUrlHinhAnh("");
		khachhang.setNgayTao(new Date());
		khachHangService.save(khachhang);
		model.addAttribute("khachHang", new KhachHang());
		model.addAttribute("page_noiDung", "dangKy.jsp");
		return "index";

	}

	

}
