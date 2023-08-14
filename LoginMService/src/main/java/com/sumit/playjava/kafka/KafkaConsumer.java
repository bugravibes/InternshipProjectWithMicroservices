package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class KafkaConsumer {
	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaConsumer.class);

	String id2;

	@KafkaListener(topics = "userId", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consume(String userId) {
		LOGGER.info(String.format("===============Message received %s", userId));
		id2 = userId;
	}

	public String getReceivedFlight() {
		return id2;
	}

}
