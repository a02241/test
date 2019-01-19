package com.fr.peojectdemo.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fr.peojectdemo.mapper.BlogMapper;
import com.fr.peojectdemo.pojo.Blog;
import com.fr.peojectdemo.service.BlogService;
import com.fr.peojectdemo.util.PageBean;

@Service
public class BlogServiceImpl implements BlogService{
	@Autowired
	private BlogMapper blogMapper;

	
	@Override
	public PageBean findBy(Map<String, Object> conditions, int pageSize, int pageCode) throws Exception {
		PageBean pb = new PageBean();
		int allCount = blogMapper.findAllCountLike(conditions);//查询数据总数
		pb.setAllCount(allCount);//把数据总数放入分页类
		pb.setPageSize(pageSize);//把页面放入分页类
		if(pageCode > pb.getAllPages()) {//判断页码
			pageCode = pb.getAllPages();
		}
		pb.setPageCode(pageCode);
		
	
		conditions.put("pageSize", pageSize);
		conditions.put("pageCode", pageCode);
		List<Blog> list = blogMapper.find(conditions);
		pb.setDatas(list);
		return pb;
	}



}
