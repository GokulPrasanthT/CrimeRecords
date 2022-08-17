package com.chainsys.crimerecords.dto;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.model.PoliceDetails;

public class PoliceComplaintDTO {

	@Autowired

	private PoliceDetails police;
	private List<ComplaintDetails> comlist = new ArrayList<ComplaintDetails>();

	public PoliceDetails getPolice() {
		return police;
	}

	public void setPolice(PoliceDetails police) {
		this.police = police;
	}

	public List<ComplaintDetails> getcomplaintlist() {
		return comlist;
	}

	public void addComplaints(ComplaintDetails complaint) {
		comlist.add(complaint);
	}
}
