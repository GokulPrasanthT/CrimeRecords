package com.chainsys.crimerecords.pojo;

import java.util.Date;

public class ComplaintDetails {
	private int Complaint_Id;
	private String Type_Of_Complaint;
	private String Registered_Station;
	private String Complaint_Status;
	private Date Date_Time;
	private int Police_Id;

	public int getComplaint_Id() {
		return Complaint_Id;
	}

	public void setComplaint_Id(int complaint_Id) {
		Complaint_Id = complaint_Id;
	}

	public String getType_Of_Complaint() {
		return Type_Of_Complaint;
	}

	public void setType_Of_Complaint(String type_Of_Complaint) {
		Type_Of_Complaint = type_Of_Complaint;
	}

	public String getRegistered_Station() {
		return Registered_Station;
	}

	public void setRegistered_Station(String registered_Station) {
		Registered_Station = registered_Station;
	}

	public String getComplaint_Status() {
		return Complaint_Status;
	}

	public void setComplaint_Status(String complaint_Status) {
		Complaint_Status = complaint_Status;
	}

	public Date getDate_Time() {
		return Date_Time;
	}

	public void setDate_Time(Date date_Time) {
		Date_Time = date_Time;
	}

	public int getPolice_Id() {
		return Police_Id;
	}

	public void setPolice_Id(int police_Id) {
		Police_Id = police_Id;
	}

}
