package com.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.domain.book;
import com.domain.bookMap;
import com.domain.shopcar;
import com.domain.users;
import com.service.insertSelective;
import com.service.searchBooks;
import com.service.selectAllBook;
import com.service.selectBookid;
import com.service.selectByBookName;
import com.service.selectNum;
import com.service.selectByBid;
import com.service.selectPassword;
import com.service.updateNum;

@Controller
public class bookShowController {

	@Autowired
	private selectPassword service;
	@Autowired
	private selectAllBook selectAll;
	@Autowired
	private selectByBid selectBid;
	@Autowired
	private selectByBookName selectAuthor;
	@Autowired
	private insertSelective insertCar;
	@Autowired
	private selectBookid selectBookId;
	@Autowired
	private selectNum selectNum;
	@Autowired
	private updateNum updataNum;
	@Autowired
	private com.service.insertUser insert;
	@Autowired
	private searchBooks books;
	@RequestMapping("toShow")
	public String toShow(@RequestParam(value="username") String username,@RequestParam(value="password") String password,HttpSession session) {
		session.setAttribute("username", username);
		users user = service.selectByUsername(username);
		session.setAttribute("user", user);
		if(user!=null&&user.getPassword().equals(password)) 
			return "show";
		else
			return "login";
	}
	
	@RequestMapping("insertUser")
	public String insertUser(users user) {
		if(user.getPassword()==""||user.getPaypass()==""||user.getUsername()=="") {
			return "login";
		}
		insert.insert(user);
		return "login";
	}
	
	

	@RequestMapping("showAllBook")
	@ResponseBody
	public bookMap getAllBook() {
		List<book> list = selectAll.selectAll();
		return bookMap.add("allBook", list);
	}
	
	@RequestMapping("showBook1")
	@ResponseBody
	public bookMap getBook1(@RequestParam(value="num") String bid) {
		List<book> list = selectBid.selectByBid(Integer.parseInt(bid));
		return bookMap.add("allBook", list);
	}
	
	@RequestMapping("insertCar")
	@ResponseBody
	public String insertCar(@RequestParam(value="author") String author) {
			int sa = selectAuthor.selectByBookName(author);
			shopcar s = new shopcar();
			s.setBookid(Integer.toString(sa));
			List<String> list = selectBookId.selectBookid();
			if(list.size()==0) {
				s.setNum(1);
				insertCar.insertSelective(s);
			}else {
			for(String s1:list) {
				if(s1.equals(Integer.toString(sa))) {
					int sn = selectNum.selectNum(Integer.toString(sa));
					s.setNum(sn+1);
					updataNum.updateNum(s);
					break;
				}
			}
			if(s.getNum()==null) {
				s.setNum(1);
				insertCar.insertSelective(s);
			}
			}
			return "show";
	}
	
	@RequestMapping("searchBooks")
	@ResponseBody
	public bookMap search(@RequestParam(value="name") String name) {
		List<book> list = books.searchByBookName(name);
		return bookMap.add("allBook", list);
	}
	
	
	
}
