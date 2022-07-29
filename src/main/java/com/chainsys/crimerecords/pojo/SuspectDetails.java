package com.chainsys.crimerecords.pojo;

import java.util.Date;

public class SuspectDetails {
	private int Suspect_Id;
	private String Suspect_Name;
	private String Suspect_Identity;
	private String Gender;
	private Date DOB;
	private String Address;

	public int getSuspect_Id() {
		return Suspect_Id;
	}

	public void setSuspect_Id(int suspect_Id) {
		Suspect_Id = suspect_Id;
	}

	public String getSuspect_Name() {
		return Suspect_Name;
	}

	public void setSuspect_Name(String suspect_Name) {
		Suspect_Name = suspect_Name;
	}

	public String getSuspect_Identity() {
		return Suspect_Identity;
	}

	public void setSuspect_Identity(String suspect_Identity) {
		Suspect_Identity = suspect_Identity;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public Date getDOB() {
		return DOB;
	}

	public void setDOB(Date dOB) {
		DOB = dOB;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

}
