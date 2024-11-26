package com.college.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.model.Facultydetails;
import com.college.model.Studentdetails;
import com.college.repository.Facultyrepo;
import com.college.repository.Studentrepo;

@Controller
public class Logincontroller {
	@Autowired
	private Studentrepo srepo;
	@Autowired
	private Facultyrepo frepo;
	
	@RequestMapping("/")
	public String homepage() {
		return "home";
	}
	
	@RequestMapping("login")
	public String login(@RequestParam String mailid,@RequestParam String password,@RequestParam String role) {
		if(role.equals("admin")&&mailid.equals("collegeadmin@gmail.in")&& password.equals("collegeadmin"))
			return "admin";
		if(role.equals("student")) {
			Studentdetails s=srepo.getByMailid(mailid);
			if(s.getPassword().equals(password))
				return "studenthome";
			else
				return "passwordwrong";
			}
		if(role.equals("faculty")) {
			Facultydetails f = frepo.getByMailid(mailid);
			if(f.getPassword().equals(password))
				return "facultyhome";
			else
					return "passwordwrong";
			}
		else
		return "login";
	}

}
