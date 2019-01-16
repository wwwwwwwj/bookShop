package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.domain.book;
import com.service.selectAllBook;

@Service
public class selectAllBookImp implements selectAllBook{

	@Autowired
	private bookMapper mapper;
	public List<book> selectAll() {
		return mapper.selectAll();
	}

}
