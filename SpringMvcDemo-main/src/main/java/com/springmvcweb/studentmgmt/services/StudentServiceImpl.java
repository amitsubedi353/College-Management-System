package com.springmvcweb.studentmgmt.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springmvcweb.studentmgmt.models.Student;

@Service
public class StudentServiceImpl implements StudentService {

	static List<Student> slist = new ArrayList<Student>();
	static {
		
		Student student = new Student();
		student.setStudentId(1);
		student.setFirstName("Toni");
		student.setMiddleName("");
		student.setLastName("Panday");
		student.setGender("Male");
		student.setMobileNo("12321784687");
		student.setEmail("toni@gmail.com");
		slist.add(student);
		
		student = new Student();		
		student.setStudentId(2);
		student.setFirstName("Luka");
		student.setMiddleName("");
		student.setLastName("Shrestha");
		student.setGender("female");
		student.setMobileNo("0937247");
		student.setEmail("luka@gmail.com");
		slist.add(student);
	}
	
	@Override
	public List<Student> getAllStudents() {
		return slist;
		
	}

	@Override
	public Student addStudent(Student student) {
		slist.add(student);
		return student;
	}
	
}
