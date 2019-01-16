package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.domain.bookMap;
import com.domain.shopCarGoods;
import com.domain.users;
import com.service.selectAllGoods;
import com.service.selectBookid;

@Controller
public class shopCarController {

	
	
	@Autowired
    private selectAllGoods goods;	
	
	@RequestMapping("showCar")
	public String showCar() {
	 return	"showCar";
	}
	
	@RequestMapping("showCarGoods")
	@ResponseBody
	public bookMap showCarGoods() {
		List<shopCarGoods> list = goods.selectAllGoods();
		 return	bookMap.add("allGoods", list);
	}
	
	@RequestMapping("verifyPayPass")
	public String verifyPayPass(@RequestParam(value="paypass") String payPass,HttpSession session) {
		users user = (users) session.getAttribute("user");
		if(user.getPaypass().equals(payPass))
		 session.setAttribute("1", "÷ß∏∂≥…π¶");
		else
			 session.setAttribute("1","√‹¬Î¥ÌŒÛ£¨÷ß∏∂ ß∞‹");
		return "showCar";
	}
	
	@RequestMapping("carToShow")
	public String toShow() {
		return "show";
	}
	
	
	
	
	
	
	
	
	
	
	
}
