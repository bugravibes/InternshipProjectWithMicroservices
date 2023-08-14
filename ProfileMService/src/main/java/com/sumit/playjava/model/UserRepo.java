package com.sumit.playjava.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface UserRepo extends JpaRepository<UserM, Integer> {

	UserM findByMail(String mail);

	UserM findByPassword(String password);

	@Query("SELECT u FROM UserM u WHERE u.mail = :mail AND u.password = :password")
	UserM findByMailAndPassword(@Param("mail") String mail, @Param("password") String password);

	@Transactional
	@Modifying
	@Query("DELETE FROM UserM u WHERE u.mail = :mail")
	void deleteByMail(@Param("mail") String mail);

	@Transactional
	@Modifying
	@Query("INSERT INTO UserM (mail, password) VALUES (:mail, :password)")
	void addUser(@Param("mail") String mail, @Param("password") String password);

}
