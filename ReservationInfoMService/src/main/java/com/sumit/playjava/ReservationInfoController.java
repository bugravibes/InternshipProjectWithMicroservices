package com.sumit.playjava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumit.playjava.kafka.KafkaConsumer;
import com.sumit.playjava.kafka.KafkaProducer;
import com.sumit.playjava.model.DeleteRepository;
import com.sumit.playjava.model.FetchedReservation;
import com.sumit.playjava.model.ReservationsMRepository;

@Controller
public class ReservationInfoController {

	private final KafkaProducer kafkaProducer;
	private final KafkaConsumer kafkaConsumer;
	private final ReservationsMRepository resRep;
	private final DeleteRepository resRep2;

	@Autowired
	public ReservationInfoController(KafkaConsumer kafkaConsumer, KafkaProducer kafkaProducer,
			ReservationsMRepository resRep, DeleteRepository resRep2) {
		this.kafkaConsumer = kafkaConsumer;
		this.kafkaProducer = kafkaProducer;
		this.resRep = resRep;
		this.resRep2 = resRep2;
	}

	@RequestMapping("/")
	public String checkMVC(@RequestParam(name = "activePage", required = false) String activePage,
			@RequestParam(name = "paymentConfirmed", required = false, defaultValue = "false") boolean paymentConfirmed,
			@RequestParam(name = "pnr", required = false, defaultValue = "0") String pnr, Model model) {
		if (activePage != null && activePage.equals("reservation")) {
			model.addAttribute("activePage", "reservation");
		}
		// String pnr = kafkaConsumer.getPnr();
		List<FetchedReservation> reservations = resRep.findByPnr(pnr);
		model.addAttribute("reservationList", reservations);
		model.addAttribute("paymentConfirmed", paymentConfirmed);
		return "reservationInfo";
	}

	@Transactional
	@RequestMapping("/confirmPayment")
	public String confirmPayment(@RequestParam("paymentMethod") String paymentMethod) {
		System.out.println("----------------------java methoduna geldi" + paymentMethod + "odendi");
		String pnr = kafkaConsumer.getPnr();
		resRep2.updatePaymentStatusToPaid(pnr);
		return "redirect:/?paymentConfirmed=true&pnr=" + pnr;
	}

	@Transactional
	@RequestMapping("/cancelReservation")
	public String cancelReservation() {
		String pnr = kafkaConsumer.getPnr();
		resRep2.updatePaymentStatusToCanceled(pnr);
		return "redirect:/?pnr=" + pnr;
	}
}