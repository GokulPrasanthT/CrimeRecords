package com.chainsys.crimerecords.services;

import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.dto.SuspectCrimeDTO;
import com.chainsys.crimerecords.model.CrimeDetails;
import com.chainsys.crimerecords.model.SuspectDetails;
import com.chainsys.crimerecords.repository.CrimeRepository;
import com.chainsys.crimerecords.repository.SuspectRepository;

@Service
public class SuspectService {

	@Autowired
	private SuspectRepository srepo;
	
	@Autowired
	private CrimeRepository crepo;

	public List<SuspectDetails> findAll() {
		return srepo.findAll();
	}

	public SuspectDetails findById(int sid) {
		return srepo.findById(sid);
	}

	public SuspectDetails save(SuspectDetails sd) {
		return srepo.save(sd);
	}

	public void deleteById(int s_id) {
		srepo.deleteById(s_id);
	}
	
	public SuspectCrimeDTO getSuspectCrime(int id) {
		SuspectDetails us = findById(id);
		SuspectCrimeDTO dto = new SuspectCrimeDTO();
		dto.setSuspect(us);;
		List<CrimeDetails> crimes = crepo.findBySuspectId(id);
		Iterator<CrimeDetails> itr = crimes.iterator();
		while (itr.hasNext()) {
			dto.addCrimes((CrimeDetails) itr.next());
		}
		return dto;
	}
}
