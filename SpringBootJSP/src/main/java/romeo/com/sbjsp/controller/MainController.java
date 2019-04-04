package romeo.com.sbjsp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import romeo.com.sbjsp.model.Doctor;

@Controller
public class MainController {

	private static List<Doctor> doctors = new ArrayList<Doctor>();

	static {
		doctors.add(new Doctor("Bogdan", "Grigore","bogdan@yahoo.com"));
		doctors.add(new Doctor("Alfonsino", "Popa", "popa@yahoo.com"));
		doctors.add(new Doctor("Silviano", "Albert", "albert@yahoo.com"));
		doctors.add(new Doctor("Popescu", "Viorel", "viorel@yahoo.com"));
		doctors.add(new Doctor("Marcel", "Goga", "marcel@yahoo.com"));
		doctors.add(new Doctor("Marcu", "Costel", "costel@yahoo.com"));
	}

	@RequestMapping("/")
	public String showHome() {

		return "home";

	}

	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String showContact(Model model) {

		String message = "Hello, This is a project of Spring Boot + JSP";
		model.addAttribute("message", message);

		return "contact";
	}

	@RequestMapping(value = { "/doctorList" }, method = RequestMethod.GET)
	public String showDoctors(Model model) {

		model.addAttribute("doctors", doctors);
		return "doctorList";

	}

}
