package com.sumit.playjava.model;

public class Count {
	public Count() {
	}

	public Count(int adultCount, int childCount, int infantCount) {
		this.adultCount = adultCount;
		this.childCount = childCount;
		this.infantCount = infantCount;
	}

	@Override
	public String toString() {
		return "Count [adultCount=" + adultCount + ", childCount=" + childCount + ", infantCount=" + infantCount + "]";
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

	private int adultCount;
	private int childCount;
	private int infantCount;
}
