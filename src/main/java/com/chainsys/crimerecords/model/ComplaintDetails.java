package com.chainsys.crimerecords.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Complaint_Details")
public class ComplaintDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "Complaint_Id_REF")
	@SequenceGenerator(name = "Complaint_Id_REF", sequenceName = "Complaint_Id_REF", allocationSize = 1)
	@Column(name = "Complaint_Id")
	private int complaintId;
	@Column(name = "Type_Of_Complaint")
	@Size(max = 200, min = 3, message = "*Complaint length should be 3 to 200")
	@NotBlank(message = "*Complaint can't be Empty")
	private String typeofcomplaint;
	@Column(name = "Complaint_Describtion")
	@Size(max = 500, min = 3, message = "*Description length should be 3 to 500")
	@NotBlank(message = "*Description can't be Empty")
	private String complaintdescription;
	@Column(name = "Registered_Station")
	@Size(max = 200, min = 3, message = "*Complaint length should be 3 to 200")
	@NotBlank(message = "*Station can't be Empty")
	private String registeredstation;
	@Column(name = "Complaint_Status")
	@NotBlank(message = "*Status Required")
	private String complaintstatus;
	@Column(name = "issue_Date")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "MM/dd/yyyy")
	private Date date;
	@Column(name = "issue_Time")
	private String time;
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
