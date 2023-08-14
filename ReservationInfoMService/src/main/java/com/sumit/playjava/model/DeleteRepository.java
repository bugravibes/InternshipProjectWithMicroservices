package com.sumit.playjava.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface DeleteRepository extends JpaRepository<reservationsmspecific, Integer> {

	@Modifying
	@Query("UPDATE reservationsmspecific r SET r.payment = 'canceled' WHERE r.pnr = ?1")
	void updatePaymentStatusToCanceled(String pnr);

	@Modifying
	@Query("UPDATE reservationsmspecific r SET r.payment = 'paid' WHERE r.pnr = ?1")
	void updatePaymentStatusToPaid(String pnr);

}