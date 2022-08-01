package com.chainsys.crimerecords.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.crimerecords.pojo.CrimeDetails;
import com.chainsys.crimerecords.repository.CrimeRepository;

@Service
public class CrimeService {
    @Autowired
    private CrimeRepository crepo;
    
    public List<CrimeDetails> findAll() {
		return crepo.findAll();
	}
    public CrimeDetails findById(int cid) {
		return crepo.findById(cid);
	}
    public CrimeDetails save(CrimeDetails cd) {
		return crepo.save(cd);
	}
    public void deleteById(int c_id) {
		crepo.deleteById(c_id);
	}

}
