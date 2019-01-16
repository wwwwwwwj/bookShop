package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.usersMapper;
import com.domain.users;
import com.service.selectUsers;
@Service
public class selectUsersImp implements selectUsers{

	@Autowired
	private usersMapper mapper;
	public List<users> selectAll() {
		return mapper.selectAll();
	}

}
