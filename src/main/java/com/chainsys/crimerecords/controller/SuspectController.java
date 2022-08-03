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

import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.model.SuspectDetails;
import com.chainsys.crimerecords.services.SuspectService;

@Controller
@RequestMapping("/suspect")
public class SuspectController {

	@Autowired
	SuspectService suservice;

	@GetMapping
	public String getAllSuspectDetail(Model model) {
		List<SuspectDetails> suspectlist = suservice.findAll();
		model.addAttribute("viewsuspectDetails", suspectlist);
		return "list-suspect";
	}

	@GetMapping("/addsuspectform")
	public String showAddForm(Model model) {
		SuspectDetails thesus = new SuspectDetails();
		model.addAttribute("addsuspectdetail", thesus);
		return "add-suspect-form";
	}

	@PostMapping("/addsuspects")
	public String addNewSuspect(@ModelAttribute("addsuspect") SuspectDetails thesus) {
		suservice.save(thesus);
		return "redirect:/suspect/suspectlist";
	}

	@GetMapping("/updatesuspectform")
	public String showUpdateForm(@RequestParam("susId") int susid, Model model) {
		SuspectDetails thesus = suservice.findById(susid);
		model.addAttribute("updatsuspectDetails", thesus);
		return "update-suspect-form";
	}

	@PostMapping("/updatesuspect")
	public String updatesuspectDetails(@ModelAttribute("updatecomlaint") SuspectDetails thesus) {
		suservice.save(thesus);
		return "redirect:/suspect/suspectlist";
	}

	@GetMapping("/findsuspectid")
	public String findSuspectById(@RequestParam("susId") int id, Model model) {
		SuspectDetails thesus = suservice.findById(id);
		model.addAttribute("findsuspectById", thesus);
		return "find-suspect-id-form";
	}

	@GetMapping("/deletesuspectid")
	public String deleteSuspectDetail(@RequestParam("susId") int id) {
		suservice.deleteById(id);
		return "redirect:/suspect/suspectlist";
	}
}
