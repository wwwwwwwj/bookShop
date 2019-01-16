package com.domain;

import java.util.HashMap;

public class bookMap {

	public HashMap<String, Object> map = new HashMap<String, Object>();
	
	public static bookMap add(String key,Object value) {
		bookMap map = new bookMap();
		map.map.put(key, value);
		return map;
	}
}
