package com.sumit.playjava.kafka;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Service;

import com.sumit.playjava.model.UserM;

@Service
public class KafkaProducer {

	private static final Logger LOGGER = LoggerFactory.getLogger(KafkaProducer.class);

	private static KafkaTemplate<String, UserM> kafkaTemplate;

	public KafkaProducer(org.springframework.kafka.core.KafkaTemplate<String, UserM> kafkaTemplate) {
		this.kafkaTemplate = kafkaTemplate;
	}

	public static void sendMessage(UserM userInfo) {
		LOGGER.info(String.format("Message sent %s", userInfo));
		Message<UserM> message = MessageBuilder.withPayload(userInfo).setHeader(KafkaHeaders.TOPIC, "userJson").build();
		kafkaTemplate.send(message);
	}

}
