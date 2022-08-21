package com.chainsys.crimerecords.dto;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.chainsys.crimerecords.model.CrimeDetails;
import com.chainsys.crimerecords.model.SuspectDetails;

public class SuspectCrimeDTO {
	
	@Autowired
	private SuspectDetails suspect;
	private List<CrimeDetails> crimelist = new ArrayList<>();

	public SuspectDetails getSuspect() {
		return suspect;
	}

	public void setSuspect(SuspectDetails suspect) {
		this.suspect = suspect;
	}

	public List<CrimeDetails> getCrimelist() {
		return crimelist;
	}

	public void addCrimes(CrimeDetails crime) {
		crimelist.add(crime);
	}

}
