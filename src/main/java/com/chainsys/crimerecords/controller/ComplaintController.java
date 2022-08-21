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
		ComplaintDetails thecomplaint = new ComplaintDetails();
		model.addAttribute("addcomplaintdetail", thecomplaint);
		thecomplaint.setUserid(id);
		return "Complaint-form";
	}

	@PostMapping("/addcomplaints")
	public String addNewComplaint(@Valid @ModelAttribute("addcomplaintdetail") ComplaintDetails thecomplaint, Errors errors,
			Model model) {
		int id = thecomplaint.getUserid();
		model.addAttribute("userId", id);
		if (errors.hasErrors()) {
			return "Complaint-form";
		} else {
			comservice.save(thecomplaint);
			int cid = thecomplaint.getComplaintId();
			model.addAttribute("comId", cid);
			return "user-done";
		}
	}

	@GetMapping("/addcomplaintdone")
	public String showAddForm(Model model) {

		return "user-done";
	}

	@GetMapping("/updatecomplaintform")
	public String showUpdateForm(@RequestParam("comId") int comid, Model model) {
		ComplaintDetails thecomplaint = comservice.findById(comid);
		model.addAttribute("updatecomplaintDetails", thecomplaint);
		return "update-complaint-form";
	}

	@PostMapping("/updatecomplaints")
	public String updateComplaintDetails(@Valid @ModelAttribute("updatecomlaint") ComplaintDetails thecomplaint,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-complaint-form";
		} else {
			comservice.save(thecomplaint);
			return "redirect:/complaint/complaintlist";
		}
	}

	@GetMapping("/findcomplaintid")
	public String findComplaintById(@RequestParam("comId") int id, Model model) {
		ComplaintDetails thecomplaint = comservice.findById(id);
		model.addAttribute("findcomplaintById", thecomplaint);
		return "find-complaint-id-form";
	}

	@GetMapping("/deletecomplaint")
	public String deleteCrimeDetails(@RequestParam("comId") int id) {
		comservice.deleteById(id);
		return "redirect:/crime/crimelist";
	}

}
