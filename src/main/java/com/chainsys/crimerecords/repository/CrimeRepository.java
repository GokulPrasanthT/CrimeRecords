package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.crimerecords.model.CrimeDetails;

@Repository
public interface CrimeRepository extends CrudRepository<CrimeDetails, Integer> {
	CrimeDetails findById(int id);

	CrimeDetails save(CrimeDetails thecrime);

	// use for adding a new Complaint
	void deleteById(int c_id);

	List<CrimeDetails> findAll();
	
	List<CrimeDetails> findBySuspectId(int id);
	

}
