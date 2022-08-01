package com.chainsys.crimerecords.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.pojo.PoliceDetails;
import com.chainsys.crimerecords.repository.PoliceRepository;

@Service
public class PoliceService {

	@Autowired
	private PoliceRepository prepo;

	public List<PoliceDetails> findAll() {
		return prepo.findAll();
	}

	public PoliceDetails findById(int pid) {
		return prepo.findById(pid);
	}

	public PoliceDetails save(PoliceDetails pd) {
		return prepo.save(pd);
	}

	public void deleteById(int p_id) {
		prepo.deleteById(p_id);
	}

}
