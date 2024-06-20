package fpoly.edu.controler;

import java.util.Date;

import org.eclipse.tags.shaded.org.apache.bcel.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import fpoly.edu.model.DanhMuc;
import fpoly.edu.model.KhachHang;
import fpoly.edu.service.DanhMucService;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
@RequestMapping("admin/danhmuc")
public class danhmucControler {

	@Autowired
	DanhMucService DanhMucService;
	@PostMapping("taoDanhMuc")
	public String postMethodName(@ModelAttribute("danhMuc") DanhMuc danhmuc,Model model
			) {
		danhmuc.setNgayTao(new Date());			
		DanhMucService.save(danhmuc);
		model.addAttribute("danhMuc", new DanhMuc());
		return"admin/danhmuc/curdDanhMuc";
	}
	
}
