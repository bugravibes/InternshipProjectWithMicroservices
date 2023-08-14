package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Service;

import com.sumit.playjava.model.AvailableFlightInfo;

@Service
public class KafkaProducer {

	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaProducer.class);

	private static KafkaTemplate<String, AvailableFlightInfo> kafkaTemplate;

	public KafkaProducer(org.springframework.kafka.core.KafkaTemplate<String, AvailableFlightInfo> kafkaTemplate) {
		this.kafkaTemplate = kafkaTemplate;
	}

	public static void sendMessage(AvailableFlightInfo selectedFlight) {
		LOGGER.info(String.format("Message sent %s", selectedFlight));
		Message<AvailableFlightInfo> message = MessageBuilder.withPayload(selectedFlight)
				.setHeader(KafkaHeaders.TOPIC, "flightsJson").build();
		kafkaTemplate.send(message);
	}

	public static void sendPNR(String PNR) {
		LOGGER.info(String.format("Message sent %s", PNR));
		Message<String> message = MessageBuilder.withPayload(PNR).setHeader(KafkaHeaders.TOPIC, "PNR").build();
		kafkaTemplate.send(message);
	}

}
