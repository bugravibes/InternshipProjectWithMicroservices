package com.sumit.playjava;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.sumit.playjava.kafka.KafkaProducer;
import com.sumit.playjava.model.AvailableFlightInfo;
import com.sumit.playjava.model.Count;

@Controller
public class SelectPortsController {

	public SelectPortsController(KafkaProducer kafkaProducer) {
		this.kafkaProducer = kafkaProducer;
	}

	KafkaProducer kafkaProducer;

	@RequestMapping("/")
	public String checkMVC(@RequestParam(name = "activePage", required = false) String activePage, Model model) {
		if (activePage != null && activePage.equals("selectPorts")) {
			model.addAttribute("activePage", "selectPorts");
		}
		return "selectPorts";
	}

	@RequestMapping("/fetchFlights")
	public String getFlights(@RequestParam(name = "fromPort", required = false) String fromPort,
			@RequestParam(name = "toPort", required = false) String toPort,
			@RequestParam(name = "flightDate", required = false) String flightDate,
			@RequestParam(name = "adultCount", defaultValue = "0") int adultCount,
			@RequestParam(name = "childCount", defaultValue = "0") int childCount,
			@RequestParam(name = "infantCount", defaultValue = "0") int infantCount, Model model) {

		if (fromPort == null) {
			fromPort = "selectPorts";
		}

		if (toPort == null) {
			toPort = "selectPorts";
		}

		if (flightDate == null) {
			flightDate = "selectPorts";
		}

		int totalCount = adultCount + childCount;
		AvailableFlightInfo flights = new AvailableFlightInfo(fromPort, toPort, flightDate, adultCount, childCount,
				infantCount);

		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<AvailableFlightInfo> requestEntity = new HttpEntity<>(flights, headers);

		ResponseEntity<String> response = restTemplate.postForEntity("http://localhost:8082/api/kafka/publish",
				requestEntity, String.class);
		Count counts = new Count(adultCount, childCount, infantCount);
		KafkaProducer.sendMessageCount(counts);
		String responseBody = response.getBody();
		System.out.println("Response from MessageController: " + responseBody);

		return "redirect:http://localhost:8083/availableFlights";
	}

}
