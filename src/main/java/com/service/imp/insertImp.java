package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.domain.book;
import com.service.insert;
@Service
public class insertImp implements insert{

	@Autowired
	private bookMapper mapper;
	public int insert(book record) {
		return mapper.insert(record);
	}

}
