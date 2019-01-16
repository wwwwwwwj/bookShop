package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.shopcarMapper;
import com.domain.shopCarGoods;
@Service
public class selectAllGoods implements com.service.selectAllGoods{

	
	@Autowired
	private shopcarMapper mapper;
	public List<shopCarGoods> selectAllGoods() {
		return mapper.selectAllGoods();
	}

}
