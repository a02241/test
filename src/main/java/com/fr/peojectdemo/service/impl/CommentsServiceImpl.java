package com.fr.peojectdemo.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fr.peojectdemo.mapper.CommentsMapper;
import com.fr.peojectdemo.pojo.Blog;
import com.fr.peojectdemo.pojo.Comments;
import com.fr.peojectdemo.service.CommentsService;
import com.fr.peojectdemo.util.PageBean;

@Service
public class CommentsServiceImpl implements CommentsService{
	@Autowired
	private CommentsMapper commentsMapper;

	@Override
	public void saveComment(Comments comments) throws Exception {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String newtime = sdf.format(date);
		Date time = sdf.parse(newtime);
		comments.setCommentTime(time);
		commentsMapper.saveComment(comments);
	}

	@Override
	public void deleteComment(Comments comments) throws Exception {
		commentsMapper.deleteComment(comments);
	}

	@Override
	public PageBean findComments(Map<String, Object> conditions, int pageSize, int pageCode) throws Exception {
		PageBean pb = new PageBean();
		int allCount = commentsMapper.findAllCountComments(conditions);//查询数据总数
		pb.setAllCount(allCount);//把数据总数放入分页类
		pb.setPageSize(pageSize);//把页面放入分页类
		if(pageCode > pb.getAllPages()) {//判断页码
			pageCode = pb.getAllPages();
		}
		pb.setPageCode(pageCode);
		conditions.put("pageSize", pageSize);
		conditions.put("pageCode", pageCode);
		List<Comments> list = commentsMapper.findComments(conditions);
		pb.setDatas(list);
		return pb;
	}




}
