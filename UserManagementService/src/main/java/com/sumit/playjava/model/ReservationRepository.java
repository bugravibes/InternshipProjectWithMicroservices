package com.sumit.playjava.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface ReservationRepository extends JpaRepository<ReservationsM, Long> {

	@Transactional
	@Modifying
	@Query(value = "INSERT INTO reservationsM (flight_id, name, surname, birth_date, gender, category, flight_class, pnr, passport_no) "
			+ "VALUES (:flightId, :name, :surname, :birthDate, :gender, :category, :clazz, :pnr, :passportNo)", nativeQuery = true)
	void insertReservation(@Param("flightId") int flightId, @Param("name") String name,
			@Param("surname") String surname, @Param("birthDate") String birthDate, @Param("gender") String gender,
			@Param("category") String category, @Param("clazz") String clazz, @Param("pnr") String pnr,
			@Param("passportNo") String passportNo);

}
