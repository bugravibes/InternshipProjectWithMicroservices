package com.sumit.playjava.model;

public class AvailableFlightInfo {
	public AvailableFlightInfo() {
	}

	public AvailableFlightInfo(String fromPort, String toPort, String flightDate, int adultCount, int childCount,
			int infantCount) {
		super();
		this.fromPort = fromPort;
		this.toPort = toPort;
		this.flightDate = flightDate;
		this.adultCount = adultCount;
		this.childCount = childCount;
		this.infantCount = infantCount;
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

	public int getAdultCount() {
		return adultCount;
	}

	public void setAdultCount(int adultCount) {
		this.adultCount = adultCount;
	}

	public int getChildCount() {
		return childCount;
	}

	public void setChildCount(int childCount) {
		this.childCount = childCount;
	}

	public int getInfantCount() {
		return infantCount;
	}

	public void setInfantCount(int infantCount) {
		this.infantCount = infantCount;
	}

	@Override
	public String toString() {
		return "AvailableFlightInfo [fromPort=" + fromPort + ", toPort=" + toPort + ", flightDate=" + flightDate
				+ ", adultCount=" + adultCount + ", childCount=" + childCount + ", infantCount=" + infantCount + "]";
	}

	private String fromPort;
	private String toPort;
	private String flightDate;
	private int adultCount;
	private int childCount;
	private int infantCount;
}
