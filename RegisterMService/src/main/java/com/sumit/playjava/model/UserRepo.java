package com.sumit.playjava.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<UserM, Integer> {

	UserM findByMail(String mail);

}
