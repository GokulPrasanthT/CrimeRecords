package com.chainsys.crimerecords.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Suspect_Detail")
public class SuspectDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "Suspect_Id_REF")
	@SequenceGenerator(name = "Suspect_Id_REF", sequenceName = "Suspect_Id_REF", allocationSize = 1)
	@Column(name = "Suspect_Id")
	private int suspectId;
	@Column(name = "Suspect_Name")
	@NotNull(message = " *Enter valid name ")
	private String suspectName;
	@Column(name = "Suspect_Identity")
	@NotNull(message = " *Enter valid Indentification ")
	private String suspectIdentity;
	@Column(name = "Gender")
	@NotNull(message = "Gender is required")
	private String gender;
	@Column(name = "DOB")
	@Past(message = "Future Date is Not Support")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "MM/dd/yyyy")
	@NotNull(message = " *Give Correct Format Date ")
	private Date dateofbirth;
	@Column(name = "Address")
	@Size(max = 200, min = 3, message = "*Complaint length should be 3 to 500")
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
