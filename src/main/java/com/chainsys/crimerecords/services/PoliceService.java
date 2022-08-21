package com.chainsys.crimerecords.services;

import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.crimerecords.dto.PoliceComplaintDTO;
import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.model.PoliceDetails;
import com.chainsys.crimerecords.repository.ComplaintRepository;
import com.chainsys.crimerecords.repository.PoliceRepository;

@Service
public class PoliceService {

	@Autowired
	private PoliceRepository prepo;

	@Autowired
	private ComplaintRepository comrepo;

	public List<PoliceDetails> findAll() {
		return prepo.findAll();
	}

	public PoliceDetails findById(int pid) {
		return prepo.findById(pid);
	}

	public PoliceDetails save(PoliceDetails pd) {
		return prepo.save(pd);
	}

	public void deleteById(int poid) {
		prepo.deleteById(poid);
	}

	public PoliceComplaintDTO getUserComplaint(int id) {
		PoliceDetails us = findById(id);
		PoliceComplaintDTO dto = new PoliceComplaintDTO();
		dto.setPolice(us);
		List<ComplaintDetails> complaint = comrepo.findByPoliceId(id);
		Iterator<ComplaintDetails> itr = complaint.iterator();
		while (itr.hasNext()) {
			dto.addComplaints(itr.next());
		}
		return dto;
	}

}
