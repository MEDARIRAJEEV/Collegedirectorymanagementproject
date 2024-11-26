package com.college.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.model.Studentdetails;
import com.college.service.Facultyservice;
import com.college.service.Studentservice;

@Controller
public class Studentcontroller {
	@Autowired
	private Studentservice sservice;
	@Autowired
	private Facultyservice fservice;
	@RequestMapping("getstudent")
	public String getstudent(@RequestParam String rollno,Model m) {
		m.addAttribute("student",sservice.getstudent(rollno));
		return "studentdetails";
	}
	@RequestMapping("getfaculty")
	public String getfaculty(@RequestParam String course,Model m) {
		m.addAttribute("faculty",fservice.getfaculty(course));
		return "facultydetails";
	}

}
