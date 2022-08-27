package com.chainsys.crimerecords.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.model.StationDetails;
import com.chainsys.crimerecords.repository.StationRepository;

@Service
public class StationService {

	@Autowired
	private StationRepository stationrepo;

	public List<StationDetails> getStation() {
		return stationrepo.findAll();
	}

	public StationDetails findById(int stationid) {
		return stationrepo.findById(stationid);
	}

	public StationDetails save(StationDetails sd) {
		return stationrepo.save(sd);
	}

	public void deleteById(int said) {
		stationrepo.deleteById(said);
	}

}
