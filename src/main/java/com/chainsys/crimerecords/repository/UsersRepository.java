package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.crimerecords.pojo.Users;


public interface UsersRepository extends CrudRepository<Users, Integer> {
	Users findById(int userid);

	Users save(Users theuser);

	// use for adding a new Doctor
	void deleteById(int u_id);

	List<Users> findAll();

}
