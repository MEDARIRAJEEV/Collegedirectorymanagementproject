package com.college.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.college.model.Facultydetails;
import com.college.model.Studentdetails;
import com.college.service.Adminservice;

@Controller
public class Admincontroller {
	@Autowired
	private Adminservice service;
	
	@RequestMapping("studentreg")
	public String studentreg(Studentdetails student) {
		service.studentreg(student);
		return "regsucsess";
	}
	@RequestMapping("facultyreg")
	public String facultyreg(Facultydetails faculty) {
		service.facultyreg(faculty);
		return "regsucsess";
	}
	
}
