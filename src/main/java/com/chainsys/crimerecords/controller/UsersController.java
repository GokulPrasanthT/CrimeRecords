package com.chainsys.crimerecords.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import com.chainsys.crimerecords.dto.UserComplaintDTO;
import com.chainsys.crimerecords.model.User;
import com.chainsys.crimerecords.services.UserService;

@Controller
@RequestMapping("/users")
public class UsersController {

	@Autowired
	UserService uservice;

	@GetMapping("/index")
	public String homePage() {
		return "home-page";
	}

	@GetMapping("/admin")
	public String adminForm(Model model) {
		return "admin-index";
	}

	@GetMapping("/about")
	public String aboutform(Model model) {
		return "aboutus";
	}

	@GetMapping("/welcome")
	public String welcomeFrom(Model model) {
		return "historycheck";
	}

	@GetMapping("/userlist")
	public String getAllUsers(Model model) {
		List<User> userlist = uservice.getUsers();
		model.addAttribute("viewuser", userlist);
		return "list-users";
	}

	@GetMapping("/adduserform")
	public String showAddForm(Model model) {
		User theuser = new User();
		model.addAttribute("addUsers", theuser);
		return "add-user-form";
	}

	@PostMapping("/adduser")
	public String addNewUser(@Valid @ModelAttribute("addUsers") User theuser, Errors errors) {
		if (errors.hasErrors()) {
			return "add-user-form";
		} else {
			uservice.save(theuser);
			return "redirect:/users/userlogin";
		}
	}

	@GetMapping("/updateuserform")
	public String showUpdateForm(@RequestParam("userId") int userid, Model model) {
		User theuser = uservice.findById(userid);
		model.addAttribute("updateuser", theuser);
		return "update-user-form";
	}

	@PostMapping("/updateusers")
	public String updateUsers(@ModelAttribute("updateUser") User theuser) {
		uservice.save(theuser);
		return "redirect:/users/userlist";
	}

	@GetMapping("/finduserid")
	public String findUserById(@RequestParam("userId") int id, Model model,HttpServletRequest request) {
		User theuser = uservice.findById(id);
		model.addAttribute("finduserById",theuser);
		return "find-user-id-form";
	}

	@GetMapping("/deleteusers")
	public String deleteUser(@RequestParam("userId") int id) {
		uservice.deleteById(id);
		return "redirect:/users/userlist";
	}

	@GetMapping("/usercomplaint")
	public String getDto() {
		return "user-complaint";
	}

	@GetMapping("/getlistusercomplaint")
	public String getDocumentUser(@RequestParam("userid") int id, Model model) {
		UserComplaintDTO userComplaintdto = uservice.getUserComplaint(id);
		model.addAttribute("getuser", userComplaintdto.getUsers());
		model.addAttribute("comlist", userComplaintdto.getcomplaintlist());
		return "list-user-complaint";
	}

	@GetMapping("/userlogin")
	public String useraccessform(Model model) {
		User theus = new User();
		model.addAttribute("users", theus);
		return "user-login-form";
	}

	@PostMapping("/checkcuserlogin")
	public String checkingAccess(@ModelAttribute("users") User us, Model model, HttpSession session) {
		User user = uservice.getUserNameAndUserPassword(us.getUserName(), us.getUserPassword());
		if (user != null) {
			if (user.getUserRole().equals("Admin")) {
				return "redirect:/users/admin";
			} else {
				session.setAttribute("userId", user.getUserid());
				return "redirect:/users/welcome";
			}
		} else {
			model.addAttribute("result", "Warning !: UserName or Password Mismatch");
			return "user-login-form";
		}
	}
}