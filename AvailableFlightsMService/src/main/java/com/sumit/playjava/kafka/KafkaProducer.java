package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Service;

import com.sumit.playjava.model.FlightM;

@Service
public class KafkaProducer {

	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaProducer.class);

	private static KafkaTemplate<String, FlightM> kafkaTemplate;

	public KafkaProducer(org.springframework.kafka.core.KafkaTemplate<String, FlightM> kafkaTemplate) {
		this.kafkaTemplate = kafkaTemplate;
	}

	public static void sendMessage(FlightM selectedFlight) {
		LOGGER.info(String.format("Message sent %s", selectedFlight));
		Message<FlightM> message = MessageBuilder.withPayload(selectedFlight)
				.setHeader(KafkaHeaders.TOPIC, "SelectedFlightsJson").build();
		kafkaTemplate.send(message);
	}

	public static void sendPNR(String PNR) {
		LOGGER.info(String.format("Message sent %s", PNR));
		Message<String> message = MessageBuilder.withPayload(PNR).setHeader(KafkaHeaders.TOPIC, "PNR").build();
		kafkaTemplate.send(message);
	}

	public static void sendClass(String classValue) {
		LOGGER.info(String.format("Message sent %s", classValue));
		Message<String> message = MessageBuilder.withPayload(classValue)
				.setHeader(KafkaHeaders.TOPIC, "SelectedFlightClass").build();
		kafkaTemplate.send(message);
	}

}
