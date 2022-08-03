package com.chainsys.crimerecords.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	private Date datetime;
	@Column(name = "Police_Id")
	private int policeId;
	@Column(name = "User_id")
	private int userid;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "User_id", nullable = false, insertable = false, updatable = false)
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Police_Id", nullable = false, insertable = false, updatable = false)
	private PoliceDetails police;

	public PoliceDetails getPolice() {
		return police;
	}

	public void setPolice(PoliceDetails police) {
		this.police = police;
	}

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

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public int getPoliceId() {
		return policeId;
	}

	public void setPoliceId(int policeId) {
		this.policeId = policeId;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

}
