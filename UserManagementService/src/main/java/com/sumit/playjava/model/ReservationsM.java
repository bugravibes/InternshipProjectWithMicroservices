package com.sumit.playjava.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ReservationsM {

	public ReservationsM() {
	}

	public ReservationsM(int flightId, String name, String surname, String birthDate, String gender, String category,
			String flightClass, String pnr, String passportNo) {
		this.flightId = flightId;
		this.name = name;
		this.surname = surname;
		this.birthDate = birthDate;
		this.gender = gender;
		this.category = category;
		this.flightClass = flightClass;
		this.pnr = pnr;
		this.passportNo = passportNo;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int reservation_id;

	public int getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
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

	public String getFlightClass() {
		return flightClass;
	}

	public void setFlightClass(String flightClass) {
		this.flightClass = flightClass;
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

	private int flightId;
	private String name;
	private String surname;
	private String birthDate;
	private String gender;
	private String category;
	private String flightClass;
	private String pnr;
	private String passportNo;

}
