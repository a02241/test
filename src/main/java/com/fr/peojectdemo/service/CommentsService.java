package com.fr.peojectdemo.service;

import java.util.List;

import com.fr.peojectdemo.pojo.Comments;

public interface CommentsService {
	
	public List<Comments> findComments(String commentId)throws Exception;
	
	public void saveComment(Comments comments)throws Exception;
	
	public void deleteComment(Comments comments)throws Exception;
}
