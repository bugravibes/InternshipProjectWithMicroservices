package com.sumit.playjava.config;

import org.apache.kafka.clients.admin.NewTopic;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.config.TopicBuilder;

@Configuration
public class KafkaTopicConfig {

	@Bean
	public NewTopic flightTopic() {
		return TopicBuilder.name("flights").build();
	}

	@Bean
	public NewTopic flightTopicJson() {
		return TopicBuilder.name("flightsJson").build();
	}
}
