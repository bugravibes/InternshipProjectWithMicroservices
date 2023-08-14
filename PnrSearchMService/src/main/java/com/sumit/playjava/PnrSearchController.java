package com.sumit.playjava;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PnrSearchController {

	@RequestMapping("/")
	public String checkMVC(@RequestParam(name = "activePage", required = false) String activePage, Model model) {
		if (activePage != null && activePage.equals("reservation")) {
			model.addAttribute("activePage", "reservation");
		}
		return "pnrSearch";
	}

}
