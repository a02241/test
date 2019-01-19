package com.fr.peojectdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fr.peojectdemo.mapper.Area_ListMapper;
import com.fr.peojectdemo.pojo.Area_List;
import com.fr.peojectdemo.pojo.Shares;
import com.fr.peojectdemo.service.Area_ListService;

@Service
public class Area_listServiceImpl implements Area_ListService {

	@Autowired
	private Area_ListMapper area_ListMapper;
	
	@Override
	public long selectCode(String name) throws Exception {
		return area_ListMapper.selectCode(name);
	}

	@Override
	public List<Area_List> selectName(String name) throws Exception {
		return area_ListMapper.selectName(name);
	}

}
