package com.sumit.playjava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.sumit.playjava.kafka.KafkaProducer;
import com.sumit.playjava.model.UserM;
import com.sumit.playjava.model.UserRepo;

@Controller
public class LoginController {

	public LoginController(KafkaProducer kafkaProducer) {
		this.kafkaProducer = kafkaProducer;
	}

	@Autowired
	private UserRepo UserRepo;

	RestTemplate restTemplate = new RestTemplate();
	KafkaProducer kafkaProducer;

	@RequestMapping("/")
	public String checkMVC(Model model) {
		model.addAttribute("loginSuccess", false);
		return "login2";
	}

	@RequestMapping("/login")
	public String loginHomePage(@RequestParam("mail") String mail, @RequestParam("password") String password,
			Model model) {
		UserM u;
		try {
			u = UserRepo.findByMailAndPassword(mail, password);
		} catch (Exception e) {
			System.out.println("no user");
			return "login2";
		}
		if (u != null) {
			model.addAttribute("mail", mail);
			model.addAttribute("name", u.getName());
			model.addAttribute("activePage", "selectPorts");
			u.setLoginStatus(true);
			KafkaProducer.sendMessage(u);
			model.addAttribute("loginSuccess", true);
			return "redirect:http://localhost:8082/?activePage=selectPorts";
		}
		model.addAttribute("error", "User Not Found");
		model.addAttribute("loginSuccess", false);
		return "login2";
	}

	@RequestMapping("/register")
	public String goToRegister() {
		return "redirect:http://localhost:8081/register";
	}

}
