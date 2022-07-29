package com.chainsys.crimerecords.pojo;

import java.util.Date;

public class Users {

	private String User_Name;
	private String User_Password;
	private Date Date_Of_Birth;
	private String Gender;
	private Long Phone_No;
	private String Email;
	private String City;
	private String User_Role;

	public String getUser_Name() {
		return User_Name;
	}

	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}

	public String getUser_Password() {
		return User_Password;
	}

	public void setUser_Password(String user_Password) {
		User_Password = user_Password;
	}

	public Date getDate_Of_Birth() {
		return Date_Of_Birth;
	}

	public void setDate_Of_Birth(Date date_Of_Birth) {
		Date_Of_Birth = date_Of_Birth;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public Long getPhone_No() {
		return Phone_No;
	}

	public void setPhone_No(Long phone_No) {
		Phone_No = phone_No;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getUser_Role() {
		return User_Role;
	}

	public void setUser_Role(String user_Role) {
		User_Role = user_Role;
	}

}
