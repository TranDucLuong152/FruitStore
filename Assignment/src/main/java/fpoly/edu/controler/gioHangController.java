package fpoly.edu.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fpoly.edu.model.GioHang;
import fpoly.edu.model.KhachHang;
import fpoly.edu.model.SanPham;
import fpoly.edu.service.sanPhamService;
import fpoly.edu.service.gioHangService;
import fpoly.edu.service.chiTietGioHangService;

@Controller
public class gioHangController {

	@Autowired
	private gioHangService gioHangService;

	@Autowired
	private sanPhamService sanPhamService;

	@Autowired
	private chiTietGioHangService chiTietGioHangService;

	@GetMapping(value = "/add-to-cart", params = "sanpham")
	public String addToCart(@RequestParam("idSPham") Integer productId, @RequestParam("idNguoiDung") String customerId,
			Model model) {
		int i =1;
		if(customerId.isEmpty()) {
			
		}else {
			SanPham sanPham = sanPhamService.findById(productId);
			KhachHang khachHang = new KhachHang();
			khachHang.setTenTaiKhoan(customerId); 
			GioHang gioHang = gioHangService.findByKhachHang(khachHang);
			if (gioHang == null) {
				gioHang = new GioHang();
				gioHang.setKhachHang(khachHang);
				gioHang = gioHangService.save(gioHang); 
			}	
			chiTietGioHangService.addProductToCart(gioHang, sanPham, i++); 
			model.addAttribute("gioHang", gioHang);		
		}
		return "redirect:/"; 
	}
}
