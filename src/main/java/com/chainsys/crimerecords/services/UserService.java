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
		List<Users> userlist = urepo.findAll();
		return userlist;
	}

	public Users findById(int userid) {
		return urepo.findById(userid);
	}

	public Users save(Users us) {
		return urepo.save(us);
	}

	public void deleteUser(int u_id) {
		urepo.deleteById(u_id);
	}

}
