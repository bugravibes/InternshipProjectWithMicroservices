package com.sumit.playjava.model;

import java.math.BigDecimal;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "reservationsmspecific")
public class FetchedReservation {
	public FetchedReservation() {
	}

	public FetchedReservation(int reservationId, int flightId, String name, String surname, String birthDate,
			String gender, String category, String company, String flightNo, String flightClass, String flightDate,
			String flightTime, String fromPort, String toPort, String pnr, String passportNo, BigDecimal price,
			String payment) {
		super();
		this.reservationId = reservationId;
		this.flightId = flightId;
		this.name = name;
		this.surname = surname;
		this.birthDate = birthDate;
		this.gender = gender;
		this.category = category;
		this.company = company;
		this.flightNo = flightNo;
		this.flightClass = flightClass;
		this.flightDate = flightDate;
		this.flightTime = flightTime;
		this.fromPort = fromPort;
		this.toPort = toPort;
		this.pnr = pnr;
		this.passportNo = passportNo;
		this.price = price;
		this.payment = payment;
	}

	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}

	public String getFlightClass() {
		return flightClass;
	}

	public void setFlightClass(String flightClass) {
		this.flightClass = flightClass;
	}

	public String getFlightDate() {
		return flightDate;
	}

	public void setFlightDate(String flightDate) {
		this.flightDate = flightDate;
	}

	public String getFlightTime() {
		return flightTime;
	}

	public void setFlightTime(String flightTime) {
		this.flightTime = flightTime;
	}

	public String getFromPort() {
		return fromPort;
	}

	public void setFromPort(String fromPort) {
		this.fromPort = fromPort;
	}

	public String getToPort() {
		return toPort;
	}

	public void setToPort(String toPort) {
		this.toPort = toPort;
	}

	public String getPnr() {
		return pnr;
	}

	public void setPnr(String pnr) {
		this.pnr = pnr;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int reservationId;

	private int flightId;
	private String name;
	private String surname;
	private String birthDate;
	private String gender;
	private String category;
	private String company;
	private String flightNo;
	private String flightClass;
	private String flightDate;
	private String flightTime;
	private String fromPort;
	private String toPort;
	private String pnr;
	private String passportNo;
	private BigDecimal price;
	private String payment;
}
