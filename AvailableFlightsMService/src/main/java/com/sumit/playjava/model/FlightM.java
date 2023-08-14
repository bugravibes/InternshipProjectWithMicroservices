package com.sumit.playjava.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity(name = "flights")
public class FlightM {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int flightId;
	private int businessCapacity;
	private double businessPriceAdult;
	private double businessPriceChild;
	private double businessPriceInfant;
	private int economyCapacity;
	private double economyPriceAdult;
	private double economyPriceChild;
	private double economyPriceInfant;
	private String plane;
	private String company;
	private String fromPort;
	private String toPort;
	private String flightDate;
	private String flightTime;
	private String arrivalTime;
	private String fromPortCode;
	private String toPortCode;

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public String getFromPortCode() {
		return fromPortCode;
	}

	public void setFromPortCode(String fromPortCode) {
		this.fromPortCode = fromPortCode;
	}

	public String getToPortCode() {
		return toPortCode;
	}

	public void setToPortCode(String toPortCode) {
		this.toPortCode = toPortCode;
	}

	public FlightM() {
	}

	public int getBusinessCapacity() {
		return businessCapacity;
	}

	public void setBusinessCapacity(int businessCapacity) {
		this.businessCapacity = businessCapacity;
	}

	public double getBusinessPriceAdult() {
		return businessPriceAdult;
	}

	public void setBusinessPriceAdult(double businessPriceAdult) {
		this.businessPriceAdult = businessPriceAdult;
	}

	public double getBusinessPriceChild() {
		return businessPriceChild;
	}

	public void setBusinessPriceChild(double businessPriceChild) {
		this.businessPriceChild = businessPriceChild;
	}

	public double getBusinessPriceInfant() {
		return businessPriceInfant;
	}

	public void setBusinessPriceInfant(double businessPriceInfant) {
		this.businessPriceInfant = businessPriceInfant;
	}

	public int getEconomyCapacity() {
		return economyCapacity;
	}

	public void setEconomyCapacity(int economyCapacity) {
		this.economyCapacity = economyCapacity;
	}

	public double getEconomyPriceAdult() {
		return economyPriceAdult;
	}

	public void setEconomyPriceAdult(double economyPriceAdult) {
		this.economyPriceAdult = economyPriceAdult;
	}

	public double getEconomyPriceChild() {
		return economyPriceChild;
	}

	public void setEconomyPriceChild(double economyPriceChild) {
		this.economyPriceChild = economyPriceChild;
	}

	public double getEconomyPriceInfant() {
		return economyPriceInfant;
	}

	public void setEconomyPriceInfant(double economyPriceInfant) {
		this.economyPriceInfant = economyPriceInfant;
	}

	public String getPlane() {
		return plane;
	}

	public void setPlane(String plane) {
		this.plane = plane;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
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
}
