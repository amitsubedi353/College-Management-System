package com.springmvcweb.studentmgmt;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvcweb.studentmgmt.models.Student;
import com.springmvcweb.studentmgmt.services.StudentService;

@Controller
public class PassingDataFromControllerToView {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String userModelDemo(Model model) {
		List<String> slist = new ArrayList<String>();
		slist.add("Ram");
		slist.add("Shyam");
		slist.add("Hari");
		
		model.addAttribute("types", "Model");
		model.addAttribute("student_id", 1);
		model.addAttribute("slist", slist);
		
		return "index";
	}
	
	
	@RequestMapping(value = "/modelMap", method = RequestMethod.GET)
	public String userModelDemo(ModelMap modelMap) {
		
		List<String> slist = new ArrayList<String>();
		slist.add("Ram");
		slist.add("Shyam");
		slist.add("Hari");
		
		modelMap.addAttribute("types", "ModelMap");
		modelMap.addAttribute("student_id", 1);
		modelMap.addAttribute("slist", slist);
		
		return "index";
	}
	
	@RequestMapping(value = "/modelandview", method = RequestMethod.GET)
	public ModelAndView useModelAndViewDemo() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		List<String> slist = new ArrayList<String>();
		slist.add("Ram");
		slist.add("Shyam");
		slist.add("Hari");
		
		modelAndView.addObject("types", "ModelAndView");
		modelAndView.addObject("student_id", 1);
		modelAndView.addObject("slist", slist);
		modelAndView.setViewName("index");
		
		return modelAndView; 
	}
	
	@RequestMapping(value = "/studentlist", method = RequestMethod.GET)
	public ModelAndView useModelAndView() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		List<Student> slist = studentService.getAllStudents();
		
		modelAndView.addObject("types", "ModelAndView");
		modelAndView.addObject("slist", slist);
		modelAndView.setViewName("index");
		
		return modelAndView; 
	}

}
