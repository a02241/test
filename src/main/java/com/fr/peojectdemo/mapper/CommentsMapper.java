package com.fr.peojectdemo.mapper;

import java.util.List;
import java.util.Map;

import com.fr.peojectdemo.pojo.Comments;


public interface CommentsMapper {
	
	public int findAllCountComments(Map<String,Object> map);
	
	public List<Comments> findComments(Map<String,Object> map)throws Exception;
	
	public void saveComment(Comments comments)throws Exception;
	
	public void deleteComment(Comments comments)throws Exception;
}
