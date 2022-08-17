package com.chainsys.crimerecords.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Suspect_Detail")
public class SuspectDetails {
	@Id
	@Column(name = "Suspect_Id")
	private int suspectId;
	@Column(name = "Suspect_Name")
	private String suspectName;
	@Column(name = "Suspect_Identity")
	private String suspectIdentity;
	@Column(name = "Gender")
	private String gender;
	@Column(name = "DOB")
	private Date dateofbirth;
	@Column(name = "Address")
	private String address;

	@OneToMany(mappedBy = "suspect", fetch = FetchType.LAZY)
	private List<CrimeDetails> crime;

	public int getSuspectId() {
		return suspectId;
	}

	public void setSuspectId(int suspectId) {
		this.suspectId = suspectId;
	}

	public String getSuspectName() {
		return suspectName;
	}

	public void setSuspectName(String suspectName) {
		this.suspectName = suspectName;
	}

	public String getSuspectIdentity() {
		return suspectIdentity;
	}

	public void setSuspectIdentity(String suspectIdentity) {
		this.suspectIdentity = suspectIdentity;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<CrimeDetails> getCrime() {
		return crime;
	}

	public void setCrime(List<CrimeDetails> crime) {
		this.crime = crime;
	}

	
}
