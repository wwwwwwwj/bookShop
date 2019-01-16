package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.managerMapper;
import com.dao.usersMapper;
import com.domain.users;
import com.service.updateByUsername;

@Service
public class updateByUsernameImp implements updateByUsername{

	@Autowired
	private usersMapper mapper;
	public void updateByUsername(users user) {
		mapper.updateByUsername(user);
	}

}
