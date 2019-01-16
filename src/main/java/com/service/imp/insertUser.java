package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.usersMapper;
import com.domain.users;

@Service
public class insertUser implements com.service.insertUser{

	
	@Autowired
	private usersMapper mapper;
	public int insert(users record) {
		return mapper.insert(record);
	}

}
