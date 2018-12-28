package com.spring.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.User;
import com.spring.service.UserService;

@Controller
public class LoginController {
  @Autowired
  private UserService userService;
  
  @GetMapping("/login")
  public String login() {
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
}
