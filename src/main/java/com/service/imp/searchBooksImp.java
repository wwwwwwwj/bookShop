package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.domain.book;
import com.service.searchBooks;

@Service
public class searchBooksImp implements searchBooks{

	@Autowired
	private bookMapper mapper;
	public List<book> searchByBookName(String bookName) {
		return mapper.searchByBookName(bookName);
	}

}
