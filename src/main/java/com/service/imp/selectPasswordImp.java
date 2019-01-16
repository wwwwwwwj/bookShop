package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.usersMapper;
import com.domain.users;
import com.service.selectPassword;

@Service
public class selectPasswordImp implements selectPassword{

	@Autowired
	private usersMapper mapper;
	
	public users selectByUsername(String username) {
		return mapper.selectByUsername(username);
	}

}
