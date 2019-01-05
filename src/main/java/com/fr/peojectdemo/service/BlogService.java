package com.fr.peojectdemo.service;

import java.util.Map;

import com.fr.peojectdemo.util.PageBean;

public interface BlogService {
	
	public PageBean findBy(Map<String, Object> conditions ,int pageSize, int pageCode) throws Exception;
	
}
