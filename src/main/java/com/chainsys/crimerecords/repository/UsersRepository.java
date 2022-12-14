package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.crimerecords.model.User;

public interface UsersRepository extends CrudRepository<User, Integer> {
	User findById(int userid);

	User save(User theuser);

	// use for adding a new Doctor
	void deleteById(int uid);

	List<User> findAll();

	User findByUserNameAndUserPassword(String name, String password);

}
