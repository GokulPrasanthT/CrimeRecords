package com.chainsys.crimerecords.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.crimerecords.model.SuspectDetails;
import com.chainsys.crimerecords.repository.SuspectRepository;

@Service
public class SuspectService {

	@Autowired
	private SuspectRepository srepo;

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
}
