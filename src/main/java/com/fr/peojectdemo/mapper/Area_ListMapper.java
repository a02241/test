package com.fr.peojectdemo.mapper;

import java.util.List;

import com.fr.peojectdemo.pojo.Area_List;

public interface Area_ListMapper {
	
	public long selectCode(String name)throws Exception;
	
	public List<Area_List> selectName(String name)throws Exception;
}
