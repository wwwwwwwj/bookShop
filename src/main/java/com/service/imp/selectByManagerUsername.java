package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.managerMapper;

@Service
public class selectByManagerUsername implements com.service.selectByManagerUsername{

	@Autowired
	private managerMapper mapper;
	public String selectByUsername(String username) {
		return mapper.selectByUsername(username);
	}

}
