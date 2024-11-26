package com.college.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.college.model.Studentdetails;
import com.college.repository.Facultyrepo;
import com.college.repository.Studentrepo;

@Service
public class Facultyservice {
	@Autowired
	private Facultyrepo frepo;
	@Autowired
	private Studentrepo srepo;

	public Object getfaculty(String course) {
		return frepo.getByCourse(course);
	}
	public void eneterstudentmarks(String rollno, int marks, String grade) {
		 Studentdetails student=srepo.getByRollno(rollno);
		 student.setMarks(marks);
		 student.setGrade(grade);
		 srepo.save(student);
		
	}
	public List<Studentdetails> viewstudents() {
		List<Studentdetails> students=srepo.findAll();
		return students;
	}

	

}
