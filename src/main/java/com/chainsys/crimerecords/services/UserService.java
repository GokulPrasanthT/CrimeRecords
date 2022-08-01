package com.chainsys.crimerecords.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.pojo.Users;
import com.chainsys.crimerecords.repository.UsersRepository;

@Service
public class UserService {

	@Autowired
	private UsersRepository urepo;

	public List<Users> getUsers() {
		return urepo.findAll();
	}

	public Users findById(int userid) {
		return urepo.findById(userid);
	}

	public Users save(Users us) {
		return urepo.save(us);
	}

	public void deleteById(int u_id) {
		urepo.deleteById(u_id);
	}

}
