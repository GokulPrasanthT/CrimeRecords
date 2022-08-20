package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.crimerecords.model.SuspectDetails;


public interface SuspectRepository extends CrudRepository<SuspectDetails, Integer> {
	
	SuspectDetails findById(int id);

	SuspectDetails save(SuspectDetails thecom);

	// use for adding a new Complaint
	void deleteById(int com_id);

	List<SuspectDetails> findAll();

}
