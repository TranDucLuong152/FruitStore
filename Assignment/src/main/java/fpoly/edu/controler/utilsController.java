package fpoly.edu.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fpoly.edu.service.SessionService;

@Controller

public class utilsController {
	@Autowired
	SessionService SessionService;


}
