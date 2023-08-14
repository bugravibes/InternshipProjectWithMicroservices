package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import com.sumit.playjava.model.UserM;

@Service
public class KafkaConsumer {
	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaConsumer.class);

	UserM userInfo;

	@KafkaListener(topics = "userJson", groupId = "#{T(java.time.Instant).now().toString()}")
	public void consumeUser(UserM classValue2) {
		LOGGER.info(String.format("===============Message received %s", classValue2));
		userInfo = classValue2;
	}

	public UserM getUser() {
		return userInfo;
	}
}
