package com.sumit.playjava.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface FlightMRepo extends JpaRepository<FlightM, Integer> {

	@Query("SELECT f FROM flights f WHERE f.fromPort = :fromPort AND f.toPort = :toPort AND f.flightDate = :flightDate AND (f.businessCapacity >= :totalCount OR f.economyCapacity >= :totalCount)")
	List<FlightM> getFlights(@Param("fromPort") String fromPort, @Param("toPort") String toPort,
			@Param("flightDate") String flightDate, @Param("totalCount") int totalCount);

	FlightM findByFlightId(@Param("flightId") int flightId);
}
