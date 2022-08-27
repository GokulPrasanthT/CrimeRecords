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
import com.chainsys.crimerecords.model.PoliceDetails;
import com.chainsys.crimerecords.services.PoliceService;

@Controller
@RequestMapping("/police")
public class PoliceController {

	@Autowired
	PoliceService pservice;
	
	private static final String POLICELIST = "redirect:/police/policelist";

	@GetMapping("/policelist")
	public String getAllPoliceDetails(Model model) {
		List<PoliceDetails> policelist = pservice.findAll();
		model.addAttribute("viewpoliceDetails", policelist);
		return "list-police";
	}

	@GetMapping("/addpolicedetailform")
	public String showAddForm(Model model) {
		PoliceDetails thepolice = new PoliceDetails();
		model.addAttribute("addpolicedetails", thepolice);
		return "add-police-form";
	}

	@PostMapping("/addpolicedetail")
	public String getAddNewPolice(@ModelAttribute("addpolicedetails") PoliceDetails thepolice) {
		pservice.save(thepolice);
		return POLICELIST;

	}

	@GetMapping("/updatepoliceform")
	public String showUpdateForm(@RequestParam("poId") int poid, Model model) {
		PoliceDetails thepolice = pservice.findById(poid);
		model.addAttribute("updatepolice", thepolice);
		return "update-police-form";
	}

	@PostMapping("/updatepolicedetails")
	public String getUpdatePolice(@ModelAttribute("updatepolice") PoliceDetails thepolice) {
		pservice.save(thepolice);
		return POLICELIST;
	}

	@GetMapping("/findpoliceid")
	public String findUserById(@RequestParam("userId") int id, Model model) {
		PoliceDetails thepolice = pservice.findById(id);
		model.addAttribute("findpoliceById", thepolice);
		return "find-police-id-form";
	}

	@GetMapping("/deletepolice")
	public String deletePoliceDetails (@RequestParam("policeId") int id) {
		pservice.deleteById(id);
		return POLICELIST;
	}
	@GetMapping("policecomplaint")
	public String getPoiceComplaintDto() {
		return "police-complaint";
	}
	@GetMapping("/getlistpolicecomplaint")
   	public String getpoliceComplaint(@RequestParam("policeId") int id ,Model model)
   	{
   		PoliceComplaintDTO policeComplaintdto = pservice.getUserComplaint(id);
   		model.addAttribute("getpolice", policeComplaintdto.getPolice());
   		model.addAttribute("comlist", policeComplaintdto.getcomplaintlist());
   		return "list-police-complaint";
   	}

}
