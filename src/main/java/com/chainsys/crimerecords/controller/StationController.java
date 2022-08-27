package com.chainsys.crimerecords.controller;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.crimerecords.model.StationDetails;
import com.chainsys.crimerecords.services.StationService;

@Controller
@RequestMapping("/station")
public class StationController {

	@Autowired
	StationService stationservice;

	private static final String STATIONLIST = "redirect:/station/stationlist";

	@GetMapping("/stationlist")
	public String getStationList(Model model) {
		List<StationDetails> stationlist = stationservice.getStation();
		model.addAttribute("viewstation", stationlist);
		return "list-station";
	}

	@GetMapping("/addstationform")
	public String showAddForm(Model model) {
		StationDetails thestation = new StationDetails();
		model.addAttribute("addStation", thestation);
		return "add-station-form";
	}

	@PostMapping("/addstation")
	public String addNewStation(@Valid @ModelAttribute("addStation") StationDetails thestation, Errors errors) {
		if (errors.hasErrors()) {
			return "add-station-form";
		} else {
			stationservice.save(thestation);
			return STATIONLIST;
		}
	}

	@GetMapping("/updatestationform")
	public String showUpdateForm(@RequestParam("stationId") int stationid, Model model) {
		StationDetails thestation = stationservice.findById(stationid);
		model.addAttribute("updateStation", thestation);
		return "update-station-form";
	}

	@PostMapping("/updatestation")
	public String updateStations(@ModelAttribute("updateStations") StationDetails thestation) {
		stationservice.save(thestation);
		return STATIONLIST;
	}

	@GetMapping("/findstationid")
	public String findStationById(@RequestParam("stationId") int id, Model model) {
		StationDetails thestation = stationservice.findById(id);
		model.addAttribute("findstationById", thestation);
		return "find-station-id-form";
	}

	@GetMapping("/deletestation")
	public String deleteStation(@RequestParam("stationId") int id) {
		stationservice.deleteById(id);
		return STATIONLIST;
	}

}
