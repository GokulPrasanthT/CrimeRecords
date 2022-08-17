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
@Table(name = "Crime_Details")
public class CrimeDetails {
	@Id
	@Column(name = "Suspect_Id")
	private int suspectId;
	@Column(name = "Crime_Location")
	private String crimelocation;
	@Column(name = "Issue_Date")
	private Date date;
	@Column(name = "Type_Of_Offence")
	private String offencetype;
	@Column(name = "Complaint_Id")
	private int complaintid;
	@Column(name = "Image")
	private String image;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Suspect_Id", nullable = false, insertable = false, updatable = false)
	private SuspectDetails suspect;

	public SuspectDetails getSuspect() {
		return suspect;
	}

	public void setSuspect(SuspectDetails suspect) {
		this.suspect = suspect;
	}

	public int getSuspectId() {
		return suspectId;
	}

	public void setSuspectId(int suspectId) {
		this.suspectId = suspectId;
	}

	public String getCrimelocation() {
		return crimelocation;
	}

	public void setCrimelocation(String crimelocation) {
		this.crimelocation = crimelocation;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getOffencetype() {
		return offencetype;
	}

	public void setOffencetype(String offencetype) {
		this.offencetype = offencetype;
	}

	public int getComplaintid() {
		return complaintid;
	}

	public void setComplaintid(int complaintid) {
		this.complaintid = complaintid;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
