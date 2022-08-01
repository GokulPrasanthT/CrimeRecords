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
import com.chainsys.crimerecords.pojo.Users;
import com.chainsys.crimerecords.services.UserService;
import com.chainsys.springmvc.pojo.Doctor;

@Controller
@RequestMapping("/users")
public class UsersController {

	@Autowired
	UserService uservice;

	@GetMapping("/userlist")
	public String getAllUsers(Model model) {
		List<Users> userlist = uservice.getUsers();
		model.addAttribute("viewuser", userlist);
		return "list-users";
	}

	@GetMapping("/adduserform")
	public String showAddForm(Model model) {
		Users theuser = new Users();
		model.addAttribute("adduser", theuser);
		return "add-user-form";
	}

	@PostMapping("/adduser")
	public String addNewUser(@ModelAttribute("addUsers") Users theuser) {
		uservice.save(theuser);
		return "redirect:/users/userlist";

	}
	
	@GetMapping("/updatedocform")
	public String showUpdateForm(@RequestParam("docId") int id, Model model) {
		Users theuser = uservice.findById(id);
		model.addAttribute("updateuser", theuser);
		return "update-user-form";
	}

	@PostMapping("/updateusers")
	public String updateEmployees(@ModelAttribute("updatedoctor") Users theuser) {
		uservice.save(theuser);
		return "redirect:/user/userlist";
	}

	/*
	 * @GetMapping("/finduserid") public String findUserById(@RequestParam("userId")
	 * int id, Model model) { Users theuser = uservice.findById(id);
	 * model.addAttribute("finduserById", theuser); return "find-user-id-form"; }
	 */
}
