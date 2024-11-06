package edu.cjc.smsapp.app.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import edu.cjc.smsapp.app.model.Student;
import edu.cjc.smsapp.app.repositary.StudentRepositary;
import edu.cjc.smsapp.app.servicei.StudentServiceI;
@Service
public class StudentServiceImpl implements StudentServiceI
{

	@Autowired
	StudentRepositary sr;
	
	@Override
	public void addStudent(Student s) {
		sr.save(s);
		
	}

	@Override
	public Student loginUser(String username, String password) {
		
		
		
			 return sr.findByStudentEmailAndStudentContact(username, password);
		
	}

	@Override
	public List<Student> getStudents() {
		
		return sr.findAll();
	}

	@Override
	public List<Student> searchBatch(String batchNumnber) {
		
		return sr.findAllByBatchNumber(batchNumnber);
	}

	@Override
	public Student getSingleStudent(int id) {
		return sr.findById(id).get();
	}

	@Override
	public void updateStudentFees(int id, float ammount) {
		Optional<Student> op   =  sr.findById(id);
		    if(op.isPresent()) {
		    	 Student s      = op.get(); 
		    	 s.setFeesPaid(s.getFeesPaid()+ammount);
		    	 sr.save(s);
		    }
	}

	@Override
	public void removeStudent(int id) {
       sr.deleteById(id);		
	}

	@Override
	public void updateBatchNumber(int id, String batchNumber) {
		       Optional<Student> op=sr.findById(id);
		
		       if(op.isPresent()) {
		    	   Student s=op.get();
		    	   s.setBatchNumber(batchNumber);
		    	   sr.save(s);
		       }
	}

}
