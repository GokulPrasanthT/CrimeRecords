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
@Table(name = "Users")
public class User {

	@Column(name = "User_Name")
	private String userName;
	@Column(name = "User_Password")
	private String userPassword;
	@Id
	@Column(name = "User_id")
	private int userid;
	@Column(name = "date_Of_Birth")
	private Date dateOfBirth;
	@Column(name = "gender")
	private String gender;
	@Column(name = "Phone_No")
	private Long phoneno;
	@Column(name = "Email")
	private String email;
	@Column(name = "City")
	private String city;
	@Column(name = "User_Role")
	private String userRole;
	
	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
	private List<ComplaintDetails> complaint;

	public List<ComplaintDetails> getComplaint() {
		return complaint;
	}

	public void setComplaint(List<ComplaintDetails> complaint) {
		this.complaint = complaint;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Long getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(Long phoneno) {
		this.phoneno = phoneno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

}
