package com.college.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.college.model.Facultydetails;
import com.college.model.Studentdetails;
import com.college.repository.Facultyrepo;
import com.college.repository.Studentrepo;

@Service
public class Adminservice {
	
	@Autowired
	private Studentrepo srepo;
	@Autowired
	private Facultyrepo frepo;

	public void studentreg(Studentdetails student) {
			srepo.save(student);
	}
	public void facultyreg(Facultydetails faculty) {
			frepo.save(faculty);
	}


}
