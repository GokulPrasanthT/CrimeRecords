package com.chainsys.crimerecords.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Station")
public class StationDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "Station_ID_REF")
	@SequenceGenerator(name = "Station_ID_REF", sequenceName = "Station_ID_REF", allocationSize = 1)
	@Column(name = "Station_ID")
	private int stationid;
	@Column(name = "Station_Name")
	private String stationName;
	@Column(name = "Station_Loation")
	private String stationLocation;

	public int getStationid() {
		return stationid;
	}

	public void setStationid(int stationid) {
		this.stationid = stationid;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public String getStationLocation() {
		return stationLocation;
	}

	public void setStationLocation(String stationLocation) {
		this.stationLocation = stationLocation;
	}

}
