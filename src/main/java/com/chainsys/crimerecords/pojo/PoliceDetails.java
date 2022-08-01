package com.chainsys.crimerecords.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Police_Detail")
public class PoliceDetails {
	@Id
	private int Police_Id;
	private String Police_Rank;
	private String Police_Name;
	private long Mobile_No;
	private String Email;
	private Date DOB;
	private String Station_Name;

	public int getPolice_Id() {
		return Police_Id;
	}

	public void setPolice_Id(int police_Id) {
		Police_Id = police_Id;
	}

	public String getPolice_Rank() {
		return Police_Rank;
	}

	public void setPolice_Rank(String police_Rank) {
		Police_Rank = police_Rank;
	}

	public String getPolice_Name() {
		return Police_Name;
	}

	public void setPolice_Name(String police_Name) {
		Police_Name = police_Name;
	}

	public long getMobile_No() {
		return Mobile_No;
	}

	public void setMobile_No(long mobile_No) {
		Mobile_No = mobile_No;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}

	public String getStation_Name() {
		return Station_Name;
	}

	public void setStation_Name(String station_Name) {
		Station_Name = station_Name;
	}

	/*
	 * @Override public String toString() { return
	 * String.format("%d, %s, %s, %l, %s, %s, %s",
	 * Police_Id,Police_Rank,Police_Name, Mobile_No,DOB,Email,Station_Name);
	 * 
	 * }
	 */
}
