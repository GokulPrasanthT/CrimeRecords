package com.chainsys.crimerecords.services;

import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.dto.UserComplaintDTO;
import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.model.User;
import com.chainsys.crimerecords.repository.ComplaintRepository;
import com.chainsys.crimerecords.repository.UsersRepository;

@Service
public class UserService {

	@Autowired
	private UsersRepository urepo;
	@Autowired
	private ComplaintRepository comrepo;

	public List<User> getUsers() {
		return urepo.findAll();
	}

	public User findById(int userid) {
		return urepo.findById(userid);
	}

	public User save(User us) {
		return urepo.save(us);
	}

	public void deleteById(int u_id) {
		urepo.deleteById(u_id);
	}

	public UserComplaintDTO getUserComplaint(int id) {
		User us = findById(id);
		UserComplaintDTO dto = new UserComplaintDTO();
		dto.setUsers(us);
		List<ComplaintDetails> complaint = comrepo.findByUserid(id);
		Iterator<ComplaintDetails> itr = complaint.iterator();
		while (itr.hasNext()) {
			dto.addComplaints((ComplaintDetails) itr.next());
		}
		return dto;
	}

	public User getUserByNameAndPasswordAndUserRole(String name, String password, String role) {
		return urepo.findByUserNameAndUserPasswordAndUserRole(name, password, role);
	}
}
