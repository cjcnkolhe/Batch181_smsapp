package edu.cjc.smsapp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.smsapp.app.model.Student;
import edu.cjc.smsapp.app.servicei.StudentServiceI;

@Controller
public class AdminController {
	int a=10;
	int b=20;
	@Autowired
	StudentServiceI ssi;
	
	@RequestMapping("/")
	public String preLogin() {
		
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("username") String username,
			@RequestParam("password") String password,Model m) 
	{
	
		
		
		 if("ADMIN".equals(username) && "ADMIN".equals(password)) {
			 List<Student> list=ssi.getStudents();
			 System.out.println("return");
			 m.addAttribute("data", list);
			 return "adminscreen";
		 }else
		 {
			  
			 Student s=ssi.loginUser(username,password);
			 if(s!=null) {
					m.addAttribute("data", s);
					return "studentscreen";		 
				}
				else {
					m.addAttribute("message","invalid creadential");
					return "login";
				}
		 }
		
	
	}

	@RequestMapping("/enroll_student")
	public String addStudent(@ModelAttribute Student s) {
	      
		ssi.addStudent(s);
		return "adminscreen";
	}
	
	
	
	@RequestMapping("/search")
	public String getBatchStudent(@RequestParam("batchNumber") String batchNumber,Model m)
	{
	   
		List<Student> result=ssi.searchBatch(batchNumber);
		
		m.addAttribute("data", result);
		return "adminscreen";
	}
	
	@RequestMapping("/fees")
	public String fees(@RequestParam("id") int id,Model m) {
		Student st=ssi.getSingleStudent(id);
		m.addAttribute("st", st);
		return "fees";
	}
	
	@RequestMapping("/payfees")
	public String payOnfees(@RequestParam("studentid") int id,@RequestParam("ammount") float ammount,Model m) {
		
		ssi.updateStudentFees(id,ammount);
		List<Student> list=ssi.getStudents();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	@RequestMapping("/removeStudent")
	public String removeStudent(@RequestParam("id") int id,Model m) {
		 
		ssi.removeStudent(id);
		
		List<Student> list=ssi.getStudents();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	
	@RequestMapping("/batchShift")
	public String batchShift(@RequestParam("id") int id,Model m) {
		Student st=ssi.getSingleStudent(id);
		m.addAttribute("st", st);
		return "batch";
	}
	@RequestMapping("/updateBatch")
	public String updateBatch(@RequestParam("studentid") int id,@RequestParam("batchNumber") String batchNumber,Model m) {
		
		ssi.updateBatchNumber(id,batchNumber);
		
		List<Student> list=ssi.getStudents();
		m.addAttribute("data",list);
		return "adminscreen";
	}
	
	
	
}
