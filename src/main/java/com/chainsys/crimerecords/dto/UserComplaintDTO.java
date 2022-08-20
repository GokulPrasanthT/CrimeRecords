package com.chainsys.crimerecords.dto;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.model.User;

public class UserComplaintDTO {

	@Autowired
	private User users;
	private List<ComplaintDetails> comlist = new ArrayList<>();

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public List<ComplaintDetails> getcomplaintlist() {
		return comlist;
	}

	public void addComplaints(ComplaintDetails complaint) {
		comlist.add(complaint);
	}

}
