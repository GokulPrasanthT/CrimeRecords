package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.model.PoliceDetails;

@Repository
public interface ComplaintRepository extends CrudRepository<ComplaintDetails, Integer>  {
	ComplaintDetails findById(int co_id);

	ComplaintDetails save(ComplaintDetails thecom);

	// use for adding a new Complaint
	void deleteById(int com_id);

	List<ComplaintDetails> findAll();
	
	List<ComplaintDetails> findByUserid(int id);
	
	List<ComplaintDetails> findByPoliceId(int pid);
}


