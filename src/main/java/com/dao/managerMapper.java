package com.dao;

import com.domain.manager;
import com.domain.users;

public interface managerMapper {
    int insert(manager record);
    
    String selectByUsername(String username);
    
   
    
    int insertSelective(manager record);
}