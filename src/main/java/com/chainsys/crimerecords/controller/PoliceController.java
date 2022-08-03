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

import com.chainsys.crimerecords.dto.PoliceComplaintDTO;
import com.chainsys.crimerecords.dto.UserComplaintDTO;
import com.chainsys.crimerecords.model.PoliceDetails;
import com.chainsys.crimerecords.services.PoliceService;


@Controller
@RequestMapping("/police")
public class PoliceController {

	@Autowired
	PoliceService pservice;

	@GetMapping("/policelist")
	public String getAllPoliceDetails(Model model) {
		List<PoliceDetails> policelist = pservice.findAll();
		model.addAttribute("viewpoliceDetails", policelist);
		return "list-police";
	}

	@GetMapping("/addpolicedetailform")
	public String showAddForm(Model model) {
		PoliceDetails thepo = new PoliceDetails();
		model.addAttribute("addpolicedetails", thepo);
		return "add-police-form";
	}

	@PostMapping("/addpolicedetail")
	public String addNewUser(@ModelAttribute("addPolice") PoliceDetails thepo) {
		pservice.save(thepo);
		return "redirect:/police/policelist";

	}

	@GetMapping("/updatepoliceform")
	public String showUpdateForm(@RequestParam("poId") int poid, Model model) {
		PoliceDetails thepo = pservice.findById(poid);
		model.addAttribute("updatepolice", thepo);
		return "update-police-form";
	}

	@PostMapping("/updatepolicedetails")
	public String updatepoliceDetails(@ModelAttribute("updatepolice") PoliceDetails thepo) {
		pservice.save(thepo);
		return "redirect:/police/policelist";
	}

	@GetMapping("/findpoliceid")
	public String findUserById(@RequestParam("userId") int id, Model model) {
		PoliceDetails thepo = pservice.findById(id);
		model.addAttribute("finduserById", thepo);
		return "find-police-id-form";
	}

	@GetMapping("/deletepolice")
	public String deletePoliceDetails  (@RequestParam("poId") int id) {
		pservice.deleteById(id);
		return "redirect:/police/policelist";
	}
	
	@GetMapping("/getlistpolicecomplaint")
   	public String getpoliceComplaint(@RequestParam("id") int id ,Model model)
   	{
   		PoliceComplaintDTO policeComplaintdto = pservice.getUserComplaint(id);
   		model.addAttribute("getpolice", policeComplaintdto.getPolice());
   		model.addAttribute("comlist", policeComplaintdto.getcomplaintlist());
   		return "list-police-complaint";
   	}

}
