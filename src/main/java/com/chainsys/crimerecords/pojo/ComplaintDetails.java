package com.chainsys.crimerecords.pojo;

import java.security.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Complaint_Details")
public class ComplaintDetails {
	@Id
	@Column(name = "Complaint_Id")
	private int complaintId;
	@Column(name = "Type_Of_Complaint")
	private String typeofcomplaint;
	@Column(name = "Registered_Station")
	private String registeredstation;
	@Column(name = "Complaint_Status")
	private String complaintstatus;
	@Column(name = "Date_Time")
	private Timestamp datetime;
	@Column(name = "Police_Id")
	private int policeId;
	
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public String getTypeofcomplaint() {
		return typeofcomplaint;
	}
	public void setTypeofcomplaint(String typeofcomplaint) {
		this.typeofcomplaint = typeofcomplaint;
	}
	public String getRegisteredstation() {
		return registeredstation;
	}
	public void setRegisteredstation(String registeredstation) {
		this.registeredstation = registeredstation;
	}
	public String getComplaintstatus() {
		return complaintstatus;
	}
	public void setComplaintstatus(String complaintstatus) {
		this.complaintstatus = complaintstatus;
	}
	public Timestamp getDatetime() {
		return datetime;
	}
	public void setDatetime(Timestamp datetime) {
		this.datetime = datetime;
	}
	public int getPoliceId() {
		return policeId;
	}
	public void setPoliceId(int policeId) {
		this.policeId = policeId;
	}

	
}
