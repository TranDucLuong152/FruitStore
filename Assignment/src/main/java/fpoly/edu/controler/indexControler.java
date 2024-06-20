package fpoly.edu.controler;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fpoly.edu.dao.KhachHangDAO;
import fpoly.edu.dao.SanPhamSortDAO;
import fpoly.edu.model.DanhMuc;
import fpoly.edu.model.GioHang;
import fpoly.edu.model.KhachHang;
import fpoly.edu.model.SanPham;
import fpoly.edu.service.DanhMucService;
import fpoly.edu.service.SessionService;
import fpoly.edu.service.gioHangService;
import fpoly.edu.service.khachHangService;
import fpoly.edu.service.sanPhamService;
import fpoly.edu.service.sanPhamSortService;

@Controller
public class indexControler {

	String page_noiDung;
	String dnFrom = "dk-dnFrom.jsp";
	@Autowired
	DanhMucService DanhMucService;

	@Autowired
	sanPhamService sanPhamService;
	@Autowired
	sanPhamSortService sanPhamSortService;
	@Autowired
	SessionService session;

	@Autowired
	SanPhamSortDAO SanPhamSortDAO;

	@Autowired
	khachHangService khachHangService;

	@Autowired
	SessionService SessionService;
	@Autowired
	KhachHangDAO KhachHangDAO;
	@Autowired
	gioHangService gioHangService;

	private Page<SanPham> pageSanPham(@RequestParam("p") Optional<Integer> p, String key) {
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<SanPham> page = SanPhamSortDAO.findByKeywords(key, pageable);
		return page;
	}

	private Page<SanPham> pageSPGioHang(@RequestParam("p") Optional<Integer> p, GioHang key) {
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<SanPham> page = SanPhamSortDAO.findGioHang(key, pageable);
		return page;
	}

	@RequestMapping("/")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {

		page_noiDung = "noiDung.jsp";
		model.addAttribute("page_noiDung", page_noiDung);
		model.addAttribute("btn_end_menu", dnFrom);
		model.addAttribute("hoaquaMy", pageSanPham(p, "1"));
		model.addAttribute("hoaquaUc", pageSanPham(p, "2"));
		model.addAttribute("hoaquaDaLat", pageSanPham(p, "3"));
		model.addAttribute("hoaquaTayBac", pageSanPham(p, "4"));
		model.addAttribute("hoaquaMienTay", pageSanPham(p, "5"));
		model.addAttribute("hoaquaTayNguyen", pageSanPham(p, "6"));
		model.addAttribute("hoaquaThaiLan", pageSanPham(p, "7"));
		model.addAttribute("hoaquaMienTrung", pageSanPham(p, "8"));
		model.addAttribute("hoaquaTrungQuoc", pageSanPham(p, "9"));
		model.addAttribute("hoaquaNhatBan", pageSanPham(p, "10"));
		return "index";

	}

	@GetMapping("dangnhap")
	public String login(Model model) {
		model.addAttribute("btn_end_menu", "dk-dnFrom.jsp");
		KhachHang khachhang = new KhachHang();
		model.addAttribute("nguoiDung", khachhang);
		page_noiDung = "dangNhap.jsp";
		model.addAttribute("page_noiDung", page_noiDung);
		return "index";
	}

	@PostMapping("login")
	public String dangnhap(@ModelAttribute("nguoiDung") KhachHang khachhang, Model model) {
		khachhang = KhachHangDAO.findByKeywords(khachhang.getTenTaiKhoan(), khachhang.getMatKhau());

		if (khachhang != null) {
			SessionService.set("khachhang", khachhang);
			model.addAttribute("khachhang", khachhang);

			if (!khachhang.isChucNang()) {

				dnFrom = "userFrom.jsp";
				model.addAttribute("btn_end_menu", dnFrom);
				GioHang gioHang = gioHangService.findByKhachHang(khachhang);
				if (gioHang == null) {

					gioHang = new GioHang(khachhang, new Date());
					gioHangService.save(gioHang);
				}
				SessionService.set("giohang", gioHang);
				model.addAttribute("page_noiDung", "noiDung.jsp");
				return "redirect:/";
			} else {
				return "admin";
			}
		} else {
			model.addAttribute("page_noiDung", "dangNhap.jsp");
			return "index";
		}
	}

	@GetMapping("dangxuat")
	public String dangxuat(Model model) {
		dnFrom = "dk-dnFrom.jsp";
		SessionService.remove("khachhang");
		SessionService.remove("giohang");
		model.addAttribute("btn_end_menu", dnFrom);
		return "redirect:/";
	}

	@GetMapping("dangky")
	public String dangky(Model model) {
		model.addAttribute("btn_end_menu", "dk-dnFrom.jsp");
		KhachHang khachhang = new KhachHang();
		page_noiDung = "dangKy.jsp";
		model.addAttribute("nguoiDung", khachhang);
		model.addAttribute("page_noiDung", page_noiDung);
		return "index";
	}

	@GetMapping("giohang1")
	public String gioHang(Model model, @RequestParam("p") Optional<Integer> p) {

		model.addAttribute("sp", pageSPGioHang(p, SessionService.get("giohang")));
		System.out.println(pageSPGioHang(p, SessionService.get("giohang")).getSize());
		return "gioHang";
	}

	@GetMapping("admin")
	public String getIndex() {
		return "admin";
	}

	@GetMapping("tk-chitiet")
	public String getDangnhap() {
		return "/admin/tkchitiet/thongkechitiet";
	}

	@GetMapping("tk-bieudo")
	public String getDangky() {
		return "/admin/bieudo/thongkebieudo";
	}

	@GetMapping("tk-bang")
	public String getGiohang() {
		return "/admin/bang/thongkebang";
	}

	@GetMapping("curd-sanpham")
	public String curdSanpham(Model model) {
		model.addAttribute("sanPham", new SanPham());
		return "/admin/sanpham/curdsanpham";
	}

	@GetMapping("ht-sanpham")
	public String htSanpham(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("maSanPham"));
		List<SanPham> listSP = sanPhamSortService.findAll(sort);
		model.addAttribute("htSanPham", listSP);
		return "/admin/sanpham/htsanpham";
	}

	@GetMapping("tk-sanpham")
	public String tkSanpham() {
		return "/admin/sanpham/tksanpham";
	}

	@GetMapping("curd-nguoidung")
	public String curdNguoidung(Model model) {
		model.addAttribute("khachHang", new KhachHang());
		return "/admin/nguoidung/curdnguoidung";
	}

	@GetMapping("tk-nguoidung")
	public String tkNguoidung() {
		return "/admin/nguoidung/tknguoidung";
	}

	@GetMapping("tksp-nguoidung")
	public String tkspNguoidung() {
		return "/admin/nguoidung/tkspnguoidung";
	}

	@GetMapping("ht-nguoidung")
	public String htNguoidung(Model model) {
		List<KhachHang> listKH = khachHangService.findAll();
		
		model.addAttribute("htNguoiDung", listKH);
		return "/admin/nguoidung/htnguoidung";
	}

	@GetMapping("curd-danhmuc")
	public String curdCuahang(Model model) {
		model.addAttribute("danhMuc", new DanhMuc());
		return "/admin/danhmuc/curdDanhMuc";
	}

	@GetMapping("ht-danhmuc")
	public String htCuahang() {
		return "/admin/danhmuc/htSanPhamTheoDanhMuc";
	}

	@GetMapping("tk-danhmuc")
	public String tkCuahang() {
		return "/admin/danhmuc/tkSanPhamTheoDanhMuc";
	}

	@ModelAttribute("danhmuc")
	public List<DanhMuc> getDanhMuc() {
		List<DanhMuc> list = DanhMucService.findAll();
		return list;
	}

	@ModelAttribute("chucnang")
	public Map<Boolean, String> getGender() {
		Map<Boolean, String> map = new HashMap<Boolean, String>();

		map.put(false, "Admin");
		map.put(true, "User");
		return map;
	}

}
