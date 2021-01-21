package com.policysystem.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.policysystem.entity.Credentials;
import com.policysystem.entity.CustomerPolicy;
import com.policysystem.entity.Product;
import com.policysystem.entity.SearchPolicy;
import com.policysystem.service.CustomerPolicyService;

@Controller
public class ApplicationController {
	
	@Autowired
	private CustomerPolicyService customerPolicyService;
	
	public ApplicationController() {
		
	}

	@GetMapping("/home")
	public String hello() {
		return "hello";
	}
	
	@GetMapping("/login")
	public String loginView() {
		return "user/login";
	}

	
	@GetMapping("/user/addPolicy")
	public String addPolicy(Model model) {
		model.addAttribute("product", Product.values());
		System.out.println(":::::");
		return "user/addpolicy";
	}
	@PostMapping("user/addedPolicy")
	public String addedPolicy(@Valid CustomerPolicy user, BindingResult result, Model model) {
		System.out.println(model.getAttribute("j"));
		if(result.hasErrors()) { 
			System.out.println(result.getFieldError());
		}
		System.out.println(Product.values());
		System.out.println(user.getCustMobileNumber());
		model.addAttribute("user", "abc");
		System.out.print(user.getCustEmailAddress());
		customerPolicyService.addCustomerPolicy(user);
		return "hello";
	}
	
	@GetMapping("/user/searchPolicy")
	public String displaySearchPolicy(Model model) {
		model.addAttribute("product", Product.values());
		return "user/searchPolicy";
	}
	
	@PostMapping("/user/afterSearchPolicy")
	public String afterSearchPolicy(@Valid SearchPolicy search, BindingResult result, Model model) {
		if(result.hasErrors()) {
			System.out.println(result.getFieldError());
		}
		CustomerPolicy customerPolicy = this.customerPolicyService.searchCustomerPolicy(search);
		model.addAttribute("policy", customerPolicy);
		System.out.println(search.getPolicyNumber());
		return "user/displaypolicy";
	}
}