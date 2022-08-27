package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.crimerecords.model.ComplaintDetails;

@Repository
public interface ComplaintRepository extends CrudRepository<ComplaintDetails, Integer>  {
	ComplaintDetails findById(int coid);

	ComplaintDetails save(ComplaintDetails thecom);

	// use for adding a new Complaint
	void deleteById(int comid);

	List<ComplaintDetails> findAll();
	List<ComplaintDetails> findByUserid(int id);
	
	List<ComplaintDetails> findByPoliceId(int pid);
}


