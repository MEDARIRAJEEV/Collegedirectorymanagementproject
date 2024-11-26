package com.college.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.college.model.Studentdetails;
import com.college.repository.Studentrepo;

@Service
public class Studentservice {
	@Autowired
	private Studentrepo srepo;

	public Studentdetails getstudent(String rollno) {
		Studentdetails student=srepo.getByRollno(rollno);
		return student;
	}



}
