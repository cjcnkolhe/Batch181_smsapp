package edu.cjc.smsapp.app.servicei;

import java.util.List;

import edu.cjc.smsapp.app.model.Student;

public interface StudentServiceI {
	public void addStudent(Student s);

	public Student loginUser(String username, String password);

	public List<Student> getStudents();

}
