package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.service.selectByBookName;

@Service
public class selectByAuthorImp implements selectByBookName{

	
	@Autowired
	private bookMapper mapper;
	public int selectByBookName(String author) {
		return mapper.selectByBookName(author);
	}

}
