package com.chainsys.crimerecords.controller;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.crimerecords.model.ComplaintDetails;
import com.chainsys.crimerecords.services.ComplaintService;

@Controller
@RequestMapping("/complaint")
public class ComplaintController {
	@Autowired
	ComplaintService comservice;

	@GetMapping("/complaintlist")
	public String getAllComplaintDetails(Model model) {
		List<ComplaintDetails> complaintlist = comservice.findAll();
		model.addAttribute("viewcomplaintDetails", complaintlist);
		return "list-complaint";
	}

	@GetMapping("/addcomplaintdetailform")
	public String showAddForm(@RequestParam("userid") int id, Model model) {
		ComplaintDetails thecom = new ComplaintDetails();
		model.addAttribute("addcomplaintdetail", thecom);
		thecom.setUserid(id);
		return "Complaint-form";
	}

	@PostMapping("/addcomplaints")
	public String addNewComplaint(@Valid @ModelAttribute("addcomplaintdetail") ComplaintDetails thecom, Errors errors,
			Model model) {
		List<ObjectError> errorlist = errors.getAllErrors();
		for (ObjectError objectError : errorlist) {
			System.out.println("Error:" + objectError.getDefaultMessage());
		}
		if (errors.hasErrors()) {
			return "Complaint-form";
		} else {
			comservice.save(thecom);
			return "user-done";
		}
	}

	@GetMapping("/updatecomplaintform")
	public String showUpdateForm(@RequestParam("comId") int comid, Model model) {
		ComplaintDetails thecom = comservice.findById(comid);
		model.addAttribute("updatecomplaintDetails", thecom);
		return "update-complaint-form";
	}

	@PostMapping("/updatecomplaints")
	public String updateComplaintDetails(@Valid @ModelAttribute("updatecomlaint") ComplaintDetails thecom,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-complaint-form";
		} else {
			comservice.save(thecom);
			return "redirect:/complaint/complaintlist";
		}
	}

	@GetMapping("/findcomplaintid")
	public String findComplaintById(@RequestParam("comId") int id, Model model) {
		ComplaintDetails thecom = comservice.findById(id);
		model.addAttribute("findcomplaintById", thecom);
		return "find-complaint-id-form";
	}

	@GetMapping("/deletecomplaint")
	public String deleteCrimeDetails(@RequestParam("comId") int id) {
		comservice.deleteById(id);
		return "redirect:/crime/crimelist";
	}

}
