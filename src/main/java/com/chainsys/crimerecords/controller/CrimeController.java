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
import com.chainsys.crimerecords.model.CrimeDetails;
import com.chainsys.crimerecords.services.CrimeService;

@Controller
@RequestMapping("/crime")
public class CrimeController {
	@Autowired
	CrimeService cservice;

	@GetMapping("/crimelist")
	public String getAllCrimeDetails(Model model) {
		List<CrimeDetails> crimelist = cservice.findAll();
		model.addAttribute("viewcrimeDtails", crimelist);
		return "list-crime";
	}

	@GetMapping("/addcrimedetailform")
	public String showAddForm(Model model) {
		CrimeDetails thecr = new CrimeDetails();
		model.addAttribute("addcrimedetails", thecr);
		return "add-crime-form";
	}

	@PostMapping("/addcrimedetail")
	public String addNewUser(@ModelAttribute("addcrimedetails") CrimeDetails thecr) {
		cservice.save(thecr);
		return "redirect:/crime/crimelist";

	}

	@GetMapping("/updatecrimeform")
	public String showUpdateForm(@RequestParam("crId") int crid, Model model) {
		CrimeDetails thecr = cservice.findById(crid);
		model.addAttribute("updatecrimeDetail", thecr);
		return "update-crime-form";
	}

	@PostMapping("/updatecrimedetails")
	public String updateCrimeDetails(@ModelAttribute("updatecrime") CrimeDetails thecr) {
		cservice.save(thecr);
		return "redirect:/crime/crimelist";
	}

	@GetMapping("/findcrimeid")
	public String findUserById(@RequestParam("userId") int id, Model model) {
		CrimeDetails thecr = cservice.findById(id);
		model.addAttribute("finduserById", thecr);
		return "find-crime-id-form";
	}

	@GetMapping("/deletecrime")
	public String deleteCrimeDetails(@RequestParam("crId") int id) {
		cservice.deleteById(id);
		return "redirect:/crime/crimelist";
	}

}
