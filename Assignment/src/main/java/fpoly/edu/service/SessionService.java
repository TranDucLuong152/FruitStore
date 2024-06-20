package fpoly.edu.service;

import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.edu.model.KhachHang;
import jakarta.servlet.http.HttpSession;

@Service
public class SessionService {
	@Autowired
	HttpSession session;

	@SuppressWarnings("unchecked")
	public <T> T get(String name) {
		return (T) session.getAttribute(name);

	}

	public <T> T get(String name, T defaultValue) {
		T value = get(name);
		return value != null ? value : defaultValue;

	}

	public void set(String name, Object value) {

		session.setAttribute(name, value);

	}

	public void remove(String name) {

		session.removeAttribute(name);

	}


}
