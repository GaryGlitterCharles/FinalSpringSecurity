package com.spring.web;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.spring.domain.User;
import com.spring.service.AdminService;
import com.spring.service.UserService;

@Controller
public class LoginController {
	public static final Logger logger = Logger.getLogger(LoginController.class);
	
  @Autowired
  private UserService userService;
  
  @Autowired
  private AdminService adminService;
  
  @GetMapping("/login")
  public String login() {
	  logger.info("login done");
    return "login";
  }
  
  @GetMapping("/register")
  public String register (Model model) {
    model.addAttribute("user", new User());
    return "register";
  }
  
  @PostMapping("/register")
  public String registerPost (@ModelAttribute("user")User user) {
    User savedUser = userService.save(user);
    return "redirect:/login";
  }
  
  @GetMapping("/admin")
  public String admin() {
    return "admin";
  }
  
  @GetMapping("/failure")
  public String failure() {
    return "admin";
  }
  
  @RequestMapping(value="/403")
  public String Error403(){
      return "denied";
  }

  @GetMapping("/registerAdmin")
  public String registerAdmin (Model model) {
    model.addAttribute("user", new User());
    return "AdminReg";
  }
  
  @PostMapping("/registerAdmin")
  public String registerPostAdmin (@ModelAttribute("user")User user) {
    User savedUser = adminService.save(user);
    return "redirect:/login";
  }
  
  
  
  
  
}
