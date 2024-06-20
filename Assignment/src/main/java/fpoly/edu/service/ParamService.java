package fpoly.edu.service;

import java.io.File;
import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	public File save(MultipartFile mf,String path) {
		if(!mf.isEmpty()) {
			File dir = new File(request.getServletContext().getRealPath(path));
			if(!dir.exists()) {
				dir.mkdirs();
			}
			try {
				File saveFile= new File(dir, mf.getOriginalFilename());
				mf.transferTo(saveFile);
				return  saveFile;
				
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
		return null;
	}
	

}
