package com.chainsys.crimerecords.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.crimerecords.model.StationDetails;


	public interface StationRepository extends CrudRepository<StationDetails, Integer> {

		StationDetails findById(int stationid);

		StationDetails save(StationDetails thestation);

		// use for adding a new Doctor
		void deleteById(int sid);

		List<StationDetails> findAll();

	}

