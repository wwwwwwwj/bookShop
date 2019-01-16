package com.controller;

import java.lang.reflect.Method;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.domain.book;
import com.domain.bookMap;
import com.service.insert;
import com.service.selectByManagerUsername;
import com.service.selectUsers;
import com.service.updateByBookName;
import com.service.updateByUsername;

@Controller
public class ManagerController {

	
	@Autowired
	private selectByManagerUsername selectManagerPassword;
	@Autowired
	private selectUsers users;
	@Autowired
	private com.service.deleteUser deleteUser;
	@Autowired
	private updateByUsername updateUsername;
	@Autowired
	private com.service.deleteBook deleteBook;
	@Autowired
	private updateByBookName updateBook;
	@Autowired
	private insert insert;
	@RequestMapping("verifyManager")
	public String verify(@RequestParam(value="username") String username,@RequestParam(value="password") String password) {
		String pass = selectManagerPassword.selectByUsername(username);
		if(pass!=null&&pass.equals(password)) 
			return "managerShow";
		else
			return "managerLogIn";
	}
	
	@RequestMapping("toManagerShow")
	public String logIn() {
		return "managerLogIn";
	}
	
	@RequestMapping("getUserss")
	@ResponseBody
	public bookMap getUsers() {
		List<com.domain.users> list = users.selectAll();
		return bookMap.add("users",list);
	}
	
	@RequestMapping(value="deleteUser/{username}",method=RequestMethod.DELETE)
	@ResponseBody
	public String deleteUser(@PathVariable(value="username") String username) {
		deleteUser.deleteByUsername(username);
		return "manageShow";
	}
	
	@RequestMapping(value="update",method=RequestMethod.PUT)
	@ResponseBody
	public String updateUser(com.domain.users user) {
		updateUsername.updateByUsername(user);
		return "manageShow";
	}
	
	@RequestMapping(value="deleteBook")
	@ResponseBody
	public void deleteBook(@RequestParam(value="bookName") String bookName) {
		System.out.println(bookName);
		deleteBook.deleteByBookName(bookName);
	}
	
	@RequestMapping("manageToShow")
	public String toShow() {
		return "login";
	}
	
	@RequestMapping("updateBooks")
	@ResponseBody
	public String update(book book) {
		updateBook.updateByBookName(book);
		return "managerShow";
	}
	
	@RequestMapping(value="addBookss",method=RequestMethod.POST)
	@ResponseBody
	public String addBooks(book book) {
		insert.insert(book);
		return "managerShow"; 
	}
	
	
	
	
	
}
