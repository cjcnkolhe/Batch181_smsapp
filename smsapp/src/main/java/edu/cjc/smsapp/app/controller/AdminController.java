package edu.cjc.smsapp.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.smsapp.app.model.Student;
import edu.cjc.smsapp.app.servicei.StudentServiceI;

@Controller
public class AdminController {
	
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
	
	
	
	
}
