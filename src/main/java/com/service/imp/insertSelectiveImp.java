package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.shopcarMapper;
import com.domain.shopcar;
import com.service.insertSelective;

@Service
public class insertSelectiveImp implements insertSelective{

	
	@Autowired
	private shopcarMapper mapper;
	public int insertSelective(shopcar record) {
		return mapper.insertSelective(record);
	}

}
