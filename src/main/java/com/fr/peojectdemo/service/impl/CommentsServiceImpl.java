package com.fr.peojectdemo.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fr.peojectdemo.mapper.CommentsMapper;
import com.fr.peojectdemo.pojo.Comments;
import com.fr.peojectdemo.service.CommentsService;

@Service
public class CommentsServiceImpl implements CommentsService{
	@Autowired
	private CommentsMapper commentsMapper;

	@Override
	public List<Comments> findComments(String commentId) throws Exception {
		return commentsMapper.findComments(commentId);
	}

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




}
