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
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Users")
public class User {

	@Column(name = "User_Name")
	@NotNull(message = "*Enter valid name ")
	private String userName;
	@Column(name = "User_Password")
	@Size(max = 20, min = 8, message = "*Minimum eight characters ")
	@NotNull(message = "*Secretword can't be Empty")
	private String userPassword;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "User_id_REF")
	@SequenceGenerator(name = "User_id_REF", sequenceName = "User_id_REF", allocationSize = 1)
	@Column(name = "User_id")
	private int userid;
	@Column(name = "date_Of_Birth")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "MM/dd/yyyy")
	@NotNull(message = "*Give Correct Format Date")
	private Date dateOfBirth;
	@Column(name = "gender")
	@NotNull(message = "Gender is required")
	private String gender;
	@Column(name = "Phone_No")
	@Digits(integer = 10, fraction = 0)
	private Long phoneno;
	@Column(name = "Email")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	@NotEmpty(message = "*Please enter valid email")
	private String email;
	@Column(name = "City")
	@NotNull(message = "*City can't be Empty")
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
