package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@Autowired
	EmpRepo erepo;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		System.out.println("I am in display");
		List<Emplyoee> list=erepo.findAll();
		m.addAttribute("list", list);
		return "display.jsp";
	}
	
	@RequestMapping("add")
	public String add(Model m)
	{
		System.out.println("I am in add controller");
		Emplyoee e= new Emplyoee();
		m.addAttribute("emp", e);
		return "add.jsp";
	}
	
	@RequestMapping("save")
	public String save(Emplyoee e)
	{
		System.out.println(e);
		System.out.println("I am in Save Controller");
		erepo.save(e);
		return "redirect:/";
	}
	
	@RequestMapping("delete/{eid}")
	public String delete(@PathVariable int eid, Model m)
	{
		System.out.println("I am in delete");
		erepo.deleteById(eid);
		List<Emplyoee> list =erepo.findAll();
		m.addAttribute("list", list);
		return "/";
	}
	
	@RequestMapping("{eid}")
	public String edit(@PathVariable int eid, Model m)
	{
		System.out.println("I am in edit:");
		Emplyoee e=erepo.getOne(eid);
		m.addAttribute("emp", e);
		return"add.jsp";
	}
	
	
}
