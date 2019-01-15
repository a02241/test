package com.fr.peojectdemo.service;

import java.util.List;
import java.util.Map;

import com.fr.peojectdemo.pojo.Comments;
import com.fr.peojectdemo.util.PageBean;

public interface CommentsService {
	
	public PageBean findComments(Map<String, Object> conditions ,int pageSize, int pageCode) throws Exception;
	
	public void saveComment(Comments comments)throws Exception;
	
	public void deleteComment(Comments comments)throws Exception;
}
