package com.service;

import java.util.List;

import com.domain.book;

public interface searchBooks {
	List<book> searchByBookName(String bookName);
}
