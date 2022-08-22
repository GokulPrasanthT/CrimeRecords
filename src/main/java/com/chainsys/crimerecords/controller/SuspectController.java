package com.chainsys.crimerecords.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.crimerecords.dto.SuspectCrimeDTO;
import com.chainsys.crimerecords.model.SuspectDetails;
import com.chainsys.crimerecords.services.SuspectService;

@Controller
@RequestMapping("/suspect")
public class SuspectController {

	@Autowired
	SuspectService suservice;

	private static final String LIST = "redirect:/suspect/suspectlist";

	@GetMapping("/suspectlist")
	public String getAllSuspectDetail(Model model) {
		List<SuspectDetails> suspectlist = suservice.findAll();
		model.addAttribute("viewsuspectDetails", suspectlist);
		return "list-suspect";
	}

	@GetMapping("/addsuspectform")
	public String showAddForm(Model model) {
		SuspectDetails thesuspect = new SuspectDetails();
		model.addAttribute("addsuspectdetail", thesuspect);
		return "add-suspect-form";
	}

	@PostMapping("/addsuspects")
	public String addNewSuspect(@ModelAttribute("addsuspect") SuspectDetails thesuspect) {
		suservice.save(thesuspect);
		return LIST;
	}

	@GetMapping("/updatesuspectform")
	public String showUpdateForm(@RequestParam("suspectId") int susid, Model model) {
		SuspectDetails thesuspect = suservice.findById(susid);
		model.addAttribute("updatsuspectDetails", thesuspect);
		return "update-suspect-form";
	}

	@PostMapping("/updatesuspect")
	public String updateSuspect(@ModelAttribute("updatsuspectDetails") SuspectDetails thesuspect) {
		suservice.save(thesuspect);
		return LIST;
	}

	@GetMapping("/findsuspectid")
	public String findSuspectById(@RequestParam("suspectId") int id, Model model) {
		SuspectDetails thesuspect = suservice.findById(id);
		model.addAttribute("findsuspectById", thesuspect);
		return "find-suspect-id-form";
	}

	@GetMapping("/deletesuspectid")
	public String deleteSuspectDetail(@RequestParam("suspectId") int id) {
		suservice.deleteById(id);
		return LIST;
	}

	@GetMapping("/suspectcrime")
	public String getSuspectCrimeDto() {
		return "suspect-crime";
	}

	@GetMapping("/getlistsuspectcrime")
	public String getSuspectAndCrime(@RequestParam("suspectId") int id, Model model) {
		SuspectCrimeDTO suspectcrimedto = suservice.getSuspectCrime(id);
		model.addAttribute("getsuspect", suspectcrimedto.getSuspect());
		model.addAttribute("crimelist", suspectcrimedto.getCrimelist());
		return "list-suspect-crime";
	}
}
