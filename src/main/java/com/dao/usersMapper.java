package com.dao;

import java.util.List;

import com.domain.users;

public interface usersMapper {
    int insert(users record);

    users selectByUsername(String username);
    
    List<users> selectAll();
    
    void updateByUsername(users user);
    
    void deleteByUsername(String username);
    
    int insertSelective(users record);
}