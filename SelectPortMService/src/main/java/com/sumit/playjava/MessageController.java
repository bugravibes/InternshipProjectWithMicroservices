package com.sumit.playjava;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sumit.playjava.kafka.KafkaProducer;
import com.sumit.playjava.model.AvailableFlightInfo;

@RestController
@RequestMapping("/api/kafka")
public class MessageController {
	private KafkaProducer kafkaProducer;

	public MessageController(KafkaProducer kafkaProducer) {
		this.kafkaProducer = kafkaProducer;
	}

	// http://localhost:8082/api/kafka/publish?message=hello world
	@PostMapping("/publish")
	public ResponseEntity<String> publish(@RequestBody AvailableFlightInfo selectedFlight) {
		kafkaProducer.sendMessage(selectedFlight);
		return ResponseEntity.ok("Message Sent");
	}
}
