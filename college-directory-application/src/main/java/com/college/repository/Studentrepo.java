package com.college.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.college.model.Studentdetails;

public interface Studentrepo extends JpaRepository<Studentdetails, Integer>{

	Studentdetails getByMailid(String mailid);

	Studentdetails getByRollno(String rollno);
}
