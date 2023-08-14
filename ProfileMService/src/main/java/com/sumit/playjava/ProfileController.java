package com.sumit.playjava;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sumit.playjava.kafka.KafkaConsumer;
import com.sumit.playjava.model.UserM;
import com.sumit.playjava.model.UserRepo;

@Controller
public class ProfileController {

	public ProfileController(KafkaConsumer kafkaConsumer, UserRepo userRepo) {
		this.userRepo = userRepo;
		this.kafkaConsumer = kafkaConsumer;
	}

	UserRepo userRepo;
	KafkaConsumer kafkaConsumer;

	@RequestMapping("/")
	public String checkMVC(Model model) {

		UserM user = kafkaConsumer.getUser();
		model.addAttribute("user", user);

		return "profile";
	}

}
