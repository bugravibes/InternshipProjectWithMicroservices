package com.sumit.playjava.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepo extends JpaRepository<UserM, Integer> {

	UserM findByMail(String mail);

	UserM findByPassword(String password);

	@Query("SELECT u FROM UserM u WHERE u.mail = :mail AND u.password = :password")
	UserM findByMailAndPassword(@Param("mail") String mail, @Param("password") String password);
}
