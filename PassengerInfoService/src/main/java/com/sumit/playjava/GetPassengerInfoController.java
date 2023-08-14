package com.sumit.playjava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumit.playjava.kafka.KafkaConsumer;
import com.sumit.playjava.kafka.KafkaProducer;
import com.sumit.playjava.model.Count;
import com.sumit.playjava.model.FlightM;
import com.sumit.playjava.model.ReservationRepository;
import com.sumit.playjava.model.ReservationsM;
import com.sumit.playjava.model.generateRandomPNR;

@Controller
public class GetPassengerInfoController {

	private final KafkaProducer kafkaProducer;
	private final KafkaConsumer kafkaConsumer;
	private final ReservationRepository reservationRepository;

	@Autowired
	public GetPassengerInfoController(KafkaConsumer kafkaConsumer, KafkaProducer kafkaProducer,
			ReservationRepository reservationRepository) {
		this.kafkaConsumer = kafkaConsumer;
		this.kafkaProducer = kafkaProducer;
		this.reservationRepository = reservationRepository;
	}

	@RequestMapping("/")
	public String checkMVC(@RequestParam(name = "activePage", required = false) String activePage, Model model) {
		if (activePage != null && activePage.equals("reservation")) {
			model.addAttribute("activePage", "reservation");
		}
		Count counts = kafkaConsumer.getCounts();

		if (counts == null) {
			model.addAttribute("adultCount", 1);
			model.addAttribute("childCount", 0);
			model.addAttribute("infantCount", 0);
		} else {
			model.addAttribute("adultCount", counts.getAdultCount());
			model.addAttribute("childCount", counts.getChildCount());
			model.addAttribute("infantCount", counts.getInfantCount());
		}

		return "getPassengerInfo";
	}

	@RequestMapping("/SubmitPassengerInfo")
	public String submitPassengerInfo(@RequestParam MultiValueMap<String, String> params, Model model) {
		FlightM selectedFlight = kafkaConsumer.getReceivedFlight();
		String clazz = kafkaConsumer.getClassValue();
		Integer adultCountObj = Integer.parseInt(params.getFirst("adultCount"));
		Integer childCountObj = Integer.parseInt(params.getFirst("childCount"));
		Integer infantCountObj = Integer.parseInt(params.getFirst("infantCount"));

		int adultCount = (adultCountObj != null) ? adultCountObj : 0;
		int childCount = (childCountObj != null) ? childCountObj : 0;
		int infantCount = (infantCountObj != null) ? infantCountObj : 0;
		String pnr = generateRandomPNR.generateRandomPNR();

		int flightId = selectedFlight.getFlightId();

		for (int i = 1; i <= adultCount; i++) {
			String name = params.getFirst("nameAdult" + i);
			String surname = params.getFirst("surnameAdult" + i);
			String passportNo = params.getFirst("passportAdult" + i);
			String birthDate = params.getFirst("birthDateAdult" + i);
			String gender = params.getFirst("genderAdult" + i);

			System.out.println("Adult Passenger " + i + " - Name: " + name + ", Surname: " + surname + ", PassportNo: "
					+ passportNo + ", BirthDate: " + birthDate + ", Gender: " + gender);

			ReservationsM reservation = new ReservationsM();
			reservation.setFlightId(flightId);
			reservation.setName(name);
			reservation.setSurname(surname);
			reservation.setBirthDate(birthDate);
			reservation.setGender(gender);
			reservation.setCategory("adult");
			reservation.setFlightClass(clazz);
			reservation.setPnr(pnr);
			reservation.setPassportNo(passportNo);
			reservationRepository.save(reservation);

		}

		for (int i = 1; i <= childCount; i++) {
			String name = params.getFirst("nameChild" + i);
			String surname = params.getFirst("surnameChild" + i);
			String passportNo = params.getFirst("passportChild" + i);
			String birthDate = params.getFirst("birthDateChild" + i);
			String gender = params.getFirst("genderChild" + i);

			ReservationsM reservation = new ReservationsM();
			reservation.setFlightId(flightId);
			reservation.setName(name);
			reservation.setSurname(surname);
			reservation.setBirthDate(birthDate);
			reservation.setGender(gender);
			reservation.setCategory("child");
			reservation.setFlightClass(clazz);
			reservation.setPnr(pnr);
			reservation.setPassportNo(passportNo);
			reservationRepository.save(reservation);
		}

		for (int i = 1; i <= infantCount; i++) {
			String name = params.getFirst("nameInfant" + i);
			String surname = params.getFirst("surnameInfant" + i);
			String passportNo = params.getFirst("passportInfant" + i);
			String birthDate = params.getFirst("birthDateInfant" + i);
			String gender = params.getFirst("genderInfant" + i);

			ReservationsM reservation = new ReservationsM();
			reservation.setFlightId(flightId);
			reservation.setName(name);
			reservation.setSurname(surname);
			reservation.setBirthDate(birthDate);
			reservation.setGender(gender);
			reservation.setCategory("infant");
			reservation.setFlightClass(clazz);
			reservation.setPnr(pnr);
			reservation.setPassportNo(passportNo);
			reservationRepository.save(reservation);
		}

		KafkaProducer.sendPNR(pnr);

		return "redirect:http://localhost:8085/?pnr=" + pnr;
	}

}
