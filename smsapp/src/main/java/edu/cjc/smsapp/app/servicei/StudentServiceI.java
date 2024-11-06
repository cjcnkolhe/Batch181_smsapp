package edu.cjc.smsapp.app.servicei;

import java.util.List;

import edu.cjc.smsapp.app.model.Student;

public interface StudentServiceI {
	public void addStudent(Student s);

	public Student loginUser(String username, String password);

	public List<Student> getStudents();
	
	public List<Student> searchBatch(String batchNumnber);

	public Student getSingleStudent(int id);

	public void updateStudentFees(int id, float ammount);

	public void removeStudent(int id);

	public void updateBatchNumber(int id, String batchNumber);

}
