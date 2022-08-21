package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.crimerecords.model.PoliceDetails;

public interface PoliceRepository extends CrudRepository<PoliceDetails, Integer> {
	PoliceDetails findById(int pid);

	PoliceDetails save(PoliceDetails thepo);

	// use for adding a new Complaint
	void deleteById(int poid);

	List<PoliceDetails> findAll();

}
