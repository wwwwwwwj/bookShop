package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.shopcarMapper;

@Service
public class selectBookid implements com.service.selectBookid{

	@Autowired
	private shopcarMapper mapper;
	public List<String> selectBookid() {
		return mapper.selectBookid();
	}

}
