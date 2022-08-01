package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.crimerecords.pojo.PoliceDetails;

public interface PoliceRepository extends CrudRepository<PoliceDetails, Integer> {
	PoliceDetails findById(int p_id);

	PoliceDetails save(PoliceDetails thepo);

	// use for adding a new Complaint
	void deleteById(int po_id);

	List<PoliceDetails> findAll();

}
