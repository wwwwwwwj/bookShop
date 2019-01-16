package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.bookMapper;
import com.domain.book;
import com.service.selectByBid;


@Service
public class selectByBidImp implements selectByBid{

	
	@Autowired
	private bookMapper mapper;
	
	public List<book> selectByBid(Integer bid) {
		return mapper.selectByBid(bid);
	}

}
