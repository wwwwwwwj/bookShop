package com.dao;

import java.util.List;

import com.domain.shopCarGoods;
import com.domain.shopcar;

public interface shopcarMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(shopcar record);

    int insertSelective(shopcar record);

    shopcar selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(shopcar record);

    int updateByPrimaryKey(shopcar record);
    
    List<String> selectBookid();
    
    int selectNum(String bookId);
    
    void updateNum(shopcar s);
    
    List<shopCarGoods> selectAllGoods();
}