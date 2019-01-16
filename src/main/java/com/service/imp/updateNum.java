package com.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.shopcarMapper;
import com.domain.shopcar;
@Service
public class updateNum implements com.service.updateNum{

	@Autowired
	private shopcarMapper mapper;
	public void updateNum(shopcar s) {
		mapper.updateNum(s);
	}

}
