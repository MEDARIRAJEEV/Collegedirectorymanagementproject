package com.college.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.college.model.Facultydetails;

public interface Facultyrepo extends JpaRepository<Facultydetails, Integer> {

	Facultydetails getByMailid(String mailid);

	Object getByCourse(String course);

}
