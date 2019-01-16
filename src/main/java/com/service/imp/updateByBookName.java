package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.domain.book;

@Service
public class updateByBookName implements com.service.updateByBookName{

	@Autowired
	private bookMapper mapper;
	public void updateByBookName(book book) {
		mapper.updateByBookName(book);
	}

	
}
