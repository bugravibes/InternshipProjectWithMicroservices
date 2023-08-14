package com.sumit.playjava;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumit.playjava.kafka.KafkaConsumer;
import com.sumit.playjava.model.UserM;
import com.sumit.playjava.model.UserRepo;

@Controller
public class UserManagementController {

	public UserManagementController(KafkaConsumer kafkaConsumer, UserRepo userRepo) {
		this.userRepo = userRepo;
		this.kafkaConsumer = kafkaConsumer;
	}

	UserRepo userRepo;
	KafkaConsumer kafkaConsumer;

	@RequestMapping("/")
	public String checkMVC(Model model) {

		return "userManagement";
	}

	@PostMapping("/deleteUser")
	public String deleteUser(@RequestParam("mailAdress") String mail) {
		UserM userDel = kafkaConsumer.getUser();

		if (userDel != null) {
			userRepo.deleteByMail(userDel.getMail());
		}

		return "userManagement";
	}

	@PostMapping("/addUser")
	public String addUser(@RequestParam("mailAdress") String mail, @RequestParam("password") String password,
			@RequestParam("password2") String password2) {

		System.out.println(password);
		System.out.println(password2);
		if (password.equals(password2)) {
			userRepo.addUser(mail, password);
		} else {
			System.out.println("passwords do not match");
		}

		return "userManagement";
	}

}
