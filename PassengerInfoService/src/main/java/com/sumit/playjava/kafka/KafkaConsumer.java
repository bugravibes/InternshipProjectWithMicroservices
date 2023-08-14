package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import com.sumit.playjava.model.Count;
import com.sumit.playjava.model.FlightM;

@Service
public class KafkaConsumer {
	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaConsumer.class);

	FlightM flightInfo;
	Count counts;
	String classValue;

	@KafkaListener(topics = "SelectedFlightsJson", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consume(FlightM selectedFlight) {
		LOGGER.info(String.format("===============Message received %s", selectedFlight));
		flightInfo = selectedFlight;
	}

	public FlightM getReceivedFlight() {
		return flightInfo;
	}

	@KafkaListener(topics = "CountsJson", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consumeCount(Count selectCount) {
		LOGGER.info(String.format("===============Message received %s", selectCount));
		counts = selectCount;
	}

	public Count getCounts() {
		return counts;
	}

	@KafkaListener(topics = "SelectedFlightClass", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consumeClass(String classValue2) {
		LOGGER.info(String.format("===============Message received %s", classValue2));
		classValue = classValue2;
	}

	public String getClassValue() {
		return classValue;
	}
}
