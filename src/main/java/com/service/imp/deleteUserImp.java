package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.usersMapper;
import com.service.deleteUser;

@Service
public class deleteUserImp implements deleteUser{

	@Autowired
	private usersMapper mapper;
	public void deleteByUsername(String username) {
		mapper.deleteByUsername(username);
	}

}
