package com.college.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.service.Facultyservice;
import com.college.service.Studentservice;

@Controller
public class Facultycontroller {
	@Autowired
	private Facultyservice fservice;
	@RequestMapping("entermarks")
	public String enterstudentmarks(@RequestParam String rollno,@RequestParam int marks,@RequestParam String grade) {
		fservice.eneterstudentmarks(rollno,marks,grade);
		return "marksentered";
	}
	@RequestMapping("viewstudents")
	public String viewstudents(ModelMap m) {
		m.addAttribute("students",fservice.viewstudents());
		return "viewstudents";
	}

}
