package com.dao;

import java.util.List;

import com.domain.book;

public interface bookMapper {
    int deleteByPrimaryKey(String bookid);

    int insert(book record);

    int insertSelective(book record);
    
    int selectByBookName(String author);
    
    List<book> selectByBid(Integer bid);
    
    List<book> selectAll();
    
    book selectByPrimaryKey(String bookid);

    int updateByPrimaryKeySelective(book record);

    int updateByPrimaryKey(book record);
    
    void deleteByBookName(String bookName);
    
    void updateByBookName(book book);
    
    List<book> searchByBookName(String bookName);
}