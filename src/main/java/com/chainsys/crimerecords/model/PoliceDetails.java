package com.chainsys.crimerecords.model;

import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Police_Detail")
public class PoliceDetails {

	@Id
	@Column(name = "Police_Id")
	private int policeId;
	@Column(name = "Police_Rank")
	private String policeRank;
	@Column(name = "Police_Name")
	private String policeName;
	@Column(name = "Mobile_No")
	private long mobileNo;
	@Column(name = "Email")
	private String email;
	@Column(name = "DOB")
	private Date dateOfbirth;
	@Column(name = "Station_Name")
	private String stationName;

	@OneToMany(mappedBy = "police", fetch = FetchType.LAZY)
	private List<ComplaintDetails> complaint;

	public List<ComplaintDetails> getComplaint() {
		return complaint;
	}

	public void setComplaint(List<ComplaintDetails> complaint) {
		this.complaint = complaint;
	}

	public int getPoliceId() {
		return policeId;
	}

	public void setPoliceId(int policeId) {
		this.policeId = policeId;
	}

	public String getPoliceRank() {
		return policeRank;
	}

	public void setPoliceRank(String policeRank) {
		this.policeRank = policeRank;
	}

	public String getPoliceName() {
		return policeName;
	}

	public void setPoliceName(String policeName) {
		this.policeName = policeName;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateOfbirth() {
		return dateOfbirth;
	}

	public void setDateOfbirth(Date dateOfbirth) {
		this.dateOfbirth = dateOfbirth;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

}