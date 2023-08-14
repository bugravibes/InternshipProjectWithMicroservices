package com.sumit.playjava.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ReservationsMRepository extends JpaRepository<FetchedReservation, Integer> {

	List<FetchedReservation> findByPnr(String pnr);

	@Query("UPDATE reservationsmspecific r SET r.payment = 'canceled' WHERE r.pnr = ?1")
	void updatePaymentStatusToCanceled(String pnr);

	@Query("UPDATE reservationsmspecific r SET r.payment = 'paid' WHERE r.pnr = ?1")
	void updatePaymentStatusToPaid(String pnr);

}