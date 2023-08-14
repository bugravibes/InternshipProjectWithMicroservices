package com.sumit.playjava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumit.playjava.model.UserM;
import com.sumit.playjava.model.UserRepo;

@Controller
public class RegistrationController {

	@Autowired
	private UserRepo UserRepo;

	@RequestMapping("/check")
	public String registerCheck() {
		return "checked registered";
	}

	@RequestMapping("/register")
	public String goToRegister() {
		return "register2";
	}

	@RequestMapping("/registerUser")
	public String goToRegisterMicroService(@RequestParam("mail") String mail,
			@RequestParam("password") String password1, @RequestParam("confirmPassword") String password2,
			@RequestParam("name") String name, @RequestParam("surname") String surname,
			@RequestParam("phoneNumber") String phoneNumber, Model model) {
		System.out.println("===============going to register from login");
		if (password1.equals(password2)) {
			registerUser(mail, password1, name, surname, phoneNumber);

			model.addAttribute("registrationSuccess", "success register");
		} else {
			model.addAttribute("registrationError", "Passwords do not match");
		}
		System.out.println("===============going to register from login ENDDDD");
		return "redirect:http://localhost:8080/";
	}

	@RequestMapping("/registrar/{mail}/{password}/{name}/{surname}/{phoneNumber}")
	public String registerUser(@PathVariable("mail") String mail, @PathVariable("password") String password,
			@PathVariable("name") String name, @PathVariable("surname") String surname,
			@PathVariable("phoneNumber") String phoneNumber) {
		System.out.println("===============in register");
		UserM u = new UserM();
		u.setMail(mail);
		u.setPassword(password);
		u.setName(name);
		u.setSurname(surname);
		u.setPhoneNumber(phoneNumber);
		UserRepo.save(u);
		System.out.println("===============register end");
		return "successfully registered";
	}
}
