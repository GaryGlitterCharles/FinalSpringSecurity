package com.freshvotes.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.freshvotes.domain.CustomerUser;
import com.freshvotes.service.UserCRUDservice;

@Controller
public class UserScreenController
{
	@Autowired
	private UserCRUDservice userService;

	@GetMapping("/saveUser")
	public String saveUserDetailsGET(Model model)
	{
		model.addAttribute("saveUser", new CustomerUser());
		return "CustomerRegister";
	}

	@PostMapping("/saveUser")
	public String saveUserDetailsPOST(CustomerUser customerUser)
	{
		userService.saveUserDetails(customerUser);
		return "redirect:/dashboard";
	}

	@GetMapping("/deleteUser")
	public String deleteUserGET(Model model)
	{
		model.addAttribute("deleteUser", new CustomerUser());
		return "delete";
	}

	@PostMapping("/deleteUser")
	public String deleteUserPOST(@ModelAttribute("CustomerCode") CustomerUser customerCode)
	{
		userService.deleteUserDetails(customerCode);
		return "redirect:/dashboard";
	}

	@GetMapping("/updateUser")
	public String updateUserGET(Model model)
	{
		model.addAttribute("getUser", new CustomerUser());
		model.addAttribute("updateUser", new CustomerUser());
		return "update";
	}

	@PostMapping("/updateUser")
	public String updateUserPOST(@ModelAttribute("updateUser") CustomerUser customerUser,
			@RequestParam("CustomerCode") int customerCode, Model model)
	{

		model.addAttribute("getUser", new CustomerUser());
		model.addAttribute("searchedUser", userService.searchUser(customerCode));
		
		return "update";
	}

	@PostMapping("/updateUserDetails")
	public String name(@ModelAttribute("updateUser") CustomerUser customerUser, Model model,
			@RequestParam("CustomerCode") int customerCode)
	{
		model.addAttribute("getUser", new CustomerUser());
		userService.saveUserDetails(customerUser);
		model.addAttribute("searchedUser", userService.searchUser(customerCode));
		return "update";
	}
	@GetMapping("/searchUser")
	public String searchUserGET(Model model)
	{
		model.addAttribute("getUser", new CustomerUser());
		return "display";
	}
	
	@PostMapping("/searchUser")
	public String searchUserPOST(Model model,@RequestParam("CustomerCode") int customerCode,@RequestParam("CustomerName") String customerName)
	{
		model.addAttribute("getUser", new CustomerUser());
		model.addAttribute("searchedUser", userService.searchUser(customerCode));
		model.addAttribute("searchedUserName", userService.searchUserByCustomerName(customerName));
		return "display";
	}
	
	@GetMapping("/allDetails")
	public String getDetails(Model model)
	{
		 model.addAttribute("allDetails", userService.getdetails());
		return "dashboard2";
		 
	}
}
