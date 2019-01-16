package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.service.deleteBook;
@Service
public class deleteBookImp implements deleteBook{

	@Autowired
	private bookMapper mapper;
	public void deleteByBookName(String bookName) {
		mapper.deleteByBookName(bookName);
	}

}
