package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.shopcarMapper;



@Service
public class selectNum implements com.service.selectNum{

	
	@Autowired
	private shopcarMapper mapper;
	
	public int selectNum(String bookId) {
		return mapper.selectNum(bookId);
	}

	

}
