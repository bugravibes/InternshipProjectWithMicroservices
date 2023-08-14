package com.sumit.playjava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sumit.playjava.kafka.KafkaConsumer;
import com.sumit.playjava.kafka.KafkaProducer;
import com.sumit.playjava.model.AvailableFlightInfo;
import com.sumit.playjava.model.FlightM;
import com.sumit.playjava.model.FlightMRepo;

@Controller
public class AvailableFlightsController {

	private final KafkaProducer kafkaProducer;
	private final KafkaConsumer kafkaConsumer;

	@Autowired
	public AvailableFlightsController(KafkaConsumer kafkaConsumer, KafkaProducer kafkaProducer) {
		this.kafkaConsumer = kafkaConsumer;
		this.kafkaProducer = kafkaProducer;
	}

	@RequestMapping("/check")
	public String availCheck() {
		return "checked registered";
	}

	@RequestMapping("/availableFlights")
	public String goToAvailableFlights(Model model) {
		AvailableFlightInfo receivedFlights = kafkaConsumer.getReceivedFlights();
		String fromPort = receivedFlights.getFromPort();
		String toPort = receivedFlights.getToPort();
		String flightDate = receivedFlights.getFlightDate();
		int totalCount = receivedFlights.getAdultCount() + receivedFlights.getChildCount();
		List<FlightM> flightsFromDb = fetchFlightsFromDb(fromPort, toPort, flightDate, totalCount);
		model.addAttribute("flights", flightsFromDb);
		return "availableFlights";
	}

	@Autowired
	private FlightMRepo FlightMRepo;

	@RequestMapping("/fetchFlightsFromDb/{fromPort}/{toPort}/{flightDate}/{totalCount}")
	public List<FlightM> fetchFlightsFromDb(@PathVariable("fromPort") String fromPort,
			@PathVariable("toPort") String toPort, @PathVariable("flightDate") String flightDate,
			@PathVariable("totalCount") int totalCount) {
		System.out.println("===============in fetchFlightsFromDb");
		List<FlightM> f = FlightMRepo.getFlights(fromPort, toPort, flightDate, totalCount);
		return f;
	}

	@RequestMapping(value = "/reserveFlight", method = RequestMethod.POST)
	public String reserveFlight(@RequestParam("flightIndex") int flightIndex, @RequestParam("flightId") int flightId,
			@RequestParam("adultCount") int adultCount, @RequestParam("childCount") int childCount,
			@RequestParam("infantCount") int infantCount, @RequestParam("classValue") String classValue) {
		System.out.println("..........................................adultCount= " + adultCount);
		FlightM optionalFlight = FlightMRepo.findByFlightId(flightId);
		if (optionalFlight != null) {
			FlightM selectedFlight = optionalFlight;
			KafkaProducer.sendMessage(selectedFlight);
			KafkaProducer.sendClass(classValue);
			return "redirect:http://localhost:8084/";
		} else {
			return "errorPage";
		}
	}

}
