package com.chainsys.crimerecords.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Complaint_Details")
public class ComplaintDetails {
	@Id
	@Column(name = "Complaint_Id")
	@Min(value = 1, message = "Enter a valid Id between 1 to 100")
	@Max(value = 100, message = "Enter a valid Id between 1 to 100")
	private int complaintId;
	@Column(name = "Type_Of_Complaint")
	@NotNull(message = "*Type Of comlaint is Required")
	private String typeofcomplaint;
	@Column(name = "Complaint_Describtion")
	@NotNull(message = "*Should be Required")
	private String complaintdescription;
	@Column(name = "Registered_Station")
	@NotNull(message = "*should be Required")
	private String registeredstation;
	@Column(name = "Complaint_Status")
	@NotNull(message = "*should be Required")
	private String complaintstatus;
	@Column(name = "issue_Date")
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@NotNull(message = "*Correct date format is required ")
	private Date date;
	@Column(name = "issue_Time")
	@NotNull(message = "Should be required")
	private String time;
	@Column(name = "Police_Id")
	@Min(value = 1, message = "Enter a valid Id between 1 to 100")
	@Max(value = 100, message = "Enter a valid Id between 1 to 100")
	private int policeId;
	@Column(name = "User_id")
	@Min(value = 1, message = "Enter a valid Id between 1 to 100")
	@Max(value = 100, message = "Enter a valid Id between 1 to 100")
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

	public String getComplaintdescription() {
		return complaintdescription;
	}

	public void setComplaintdescription(String complaintdescription) {
		this.complaintdescription = complaintdescription;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
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
