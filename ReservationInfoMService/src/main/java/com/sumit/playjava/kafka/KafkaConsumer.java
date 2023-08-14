package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import com.sumit.playjava.model.AvailableFlightInfo;
import com.sumit.playjava.model.Count;

@Service
public class KafkaConsumer {
	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaConsumer.class);

	AvailableFlightInfo flightInfo;
	Count counts;
	String PNR;

	@KafkaListener(topics = "flightsJson", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consume(AvailableFlightInfo selectedFlight) {
		LOGGER.info(String.format("===============Message received %s", selectedFlight));
		flightInfo = selectedFlight;
	}

	public AvailableFlightInfo getReceivedFlights() {
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

	@KafkaListener(topics = "PNR", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consumePnr(String PNReceive) {
		LOGGER.info(String.format("===============Message received %s", PNReceive));
		PNR = PNReceive;
	}

	public String getPnr() {
		return PNR;
	}

}
