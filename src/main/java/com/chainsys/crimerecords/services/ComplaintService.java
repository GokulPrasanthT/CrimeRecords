package com.chainsys.crimerecords.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.pojo.ComplaintDetails;
import com.chainsys.crimerecords.repository.ComplaintRepository;

@Service
public class ComplaintService {
	@Autowired
    private ComplaintRepository comrepo;
	
	public List<ComplaintDetails> findAll() {
		return comrepo.findAll();
	}
	public ComplaintDetails findById(int comid) {
		return comrepo.findById(comid);
	}
	
	public ComplaintDetails save(ComplaintDetails comd) {
		return comrepo.save(comd);
	}
	public void deleteById(int complaintid) {
		comrepo.deleteById(complaintid);
	}
}
