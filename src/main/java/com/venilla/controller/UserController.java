package com.venilla.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.venilla.service.BookService;
import com.venilla.service.UserService;
import com.venilla.user.Book;
import com.venilla.user.User;




@Controller
@RequestMapping("auth")

public class UserController {

	@Autowired
	private UserService userservice;
	@Autowired
	private BookService bookservice;
@GetMapping
public String home(){
	
	return "login";
			}

		
	@GetMapping("/list")
	public String List(ModelMap modelMap)
	{
		System.out.println("inside the controller");
		List<Book> book = bookservice.findAll();
		modelMap.addAttribute("books", book);
		return "hello";

	}
	@PostMapping("/login")
public String insert(@RequestParam("username")String username,@RequestParam("password")String password,HttpSession session,ModelMap modelmap)
{
	System.out.println("login controller called");
	User user = userservice.findByusernameandpassword(username, password);
	
	System.out.println(user);
	if(user != null){
		session.setAttribute("loggedinuser", user);
		return("redirect:../auth/list");
	}else
		
	{
		return("login");
	}
}
	
	@GetMapping("/register")
	public String adduser()
	{System.out.println("controller called");
			 return"Register";
	}
	
	@PostMapping("/adduser")
	public String register(@RequestParam("name")String name,@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam("mobileno")Long mobileno,@RequestParam("emailid")String emailid)
	{
		System.out.println("adduser");
		User user= new User( name,username,password,mobileno,emailid,"A"); 
			userservice.save(user);	
		return"login";
	
}
	@GetMapping("/{id}")
	public String Show(@PathVariable("id") int id,HttpSession session)
	{
		System.out.println("showbook"+id);
		Book book= bookservice.findOne(id);
		session.setAttribute("selectedbook",book);
		return"show";
	}
	@GetMapping("/logout")
	
		public String logout(HttpSession session)
		{
			session.invalidate();
			return"login";
		}
	}





