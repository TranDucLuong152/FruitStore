package fpoly.edu.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fpoly.edu.service.donHangService;
import fpoly.edu.service.sanPhamService;


@Controller
public class donHangController {
	@Autowired
	donHangService donHangService;
	
	@Autowired
	sanPhamService sanPhamService;
	@GetMapping( value = "add-donhang",params = "donhang")
	public String donHang(Model model,@RequestParam("idNguoiDung") String idND,@RequestParam("idSPham") Integer idSP) {
		
		return "redirect:/";
	}
	

}
