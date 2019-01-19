package com.fr.peojectdemo.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fr.peojectdemo.pojo.Area_List;
import com.fr.peojectdemo.service.impl.Area_listServiceImpl;

@Controller
public class Area_listController {

	@Autowired
	private Area_listServiceImpl area_listServiceImpl;
	
	@RequestMapping("selectName")
	@ResponseBody
	public List<Area_List> selectName (@Param("name")String name) throws Exception {
		List<Area_List> list = area_listServiceImpl.selectName(name);
		return list;
	}
}
