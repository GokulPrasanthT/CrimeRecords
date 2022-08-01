package com.chainsys.crimerecords.pojo;

import java.io.File;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Crime_Details")
public class CrimeDetails {
	@Id
	private int Suspect_Id;
	private String Crime_Location;
	private Date Issue_Date;
	private String Type_Of_Offence;
	private int Complaint_Id;
	private File Image;

	public int getSuspect_Id() {
		return Suspect_Id;
	}

	public void setSuspect_Id(int suspect_Id) {
		Suspect_Id = suspect_Id;
	}

	public String getCrime_Location() {
		return Crime_Location;
	}

	public void setCrime_Location(String crime_Location) {
		Crime_Location = crime_Location;
	}

	public Date getIssue_Date() {
		return Issue_Date;
	}

	public void setIssue_Date(Date issue_Date) {
		Issue_Date = issue_Date;
	}

	public String getType_Of_Offence() {
		return Type_Of_Offence;
	}

	public void setType_Of_Offence(String type_Of_Offence) {
		Type_Of_Offence = type_Of_Offence;
	}

	public int getComplaint_Id() {
		return Complaint_Id;
	}

	public void setComplaint_Id(int complaint_Id) {
		Complaint_Id = complaint_Id;
	}

	public File getImage() {
		return Image;
	}

	public void setImage(File image) {
		Image = image;
	}

	/*
	 * @Override public String toString() { return
	 * String.format("%d, %s, %s, %s, %d, %s", Suspect_Id, Crime_Location,
	 * Issue_Date, Type_Of_Offence, Complaint_Id, Image);
	 * 
	 * }
	 */
}
