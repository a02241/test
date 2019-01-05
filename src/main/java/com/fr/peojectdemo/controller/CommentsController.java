package com.fr.peojectdemo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fr.peojectdemo.pojo.Comments;
import com.fr.peojectdemo.service.CommentsService;
import com.fr.peojectdemo.util.Test;
import com.fr.peojectdemo.util.VerifyImageUtil;




@Controller
public class CommentsController {
	
	@Autowired
	private CommentsService commentsService;
	
	
	
	@RequestMapping("comment")
	public String comment(HttpSession session,String username,String message,Date time,String readNumber,String commentsNumber,String title,String forwordNumber,ModelMap model,String blogId) throws Exception {
		/*model.put("username", username);
		model.put("message", message);
		model.put("time", time);
		model.put("readNumber", readNumber);
		model.put("commentsNumber", commentsNumber);
		model.put("title", title);
		model.put("forwordNumber", forwordNumber);*/
		List<Comments> list = commentsService.findComments(blogId);
//		model.put("comments", list);
		session.setAttribute("username", username);
		session.setAttribute("message", message);
		session.setAttribute("time", time);
		session.setAttribute("readNumber", readNumber);
		session.setAttribute("commentsNumber", commentsNumber);
		session.setAttribute("title", title);
		session.setAttribute("forwordNumber", forwordNumber);
		session.setAttribute("blogId", blogId);
 		session.setAttribute("comments", list);
		return "WEB-INF/jsp/blog/comment";
	}
	
	/**
	 * 展示个评论页面保存评论信息类
	 *
	 * @author: chenzhuo
	 * @Description:
	 * @Date: 2019/1/4
	 * @Modified By:
	 */
	@RequestMapping("saveComment")
	@ResponseBody
	public String saveComment(HttpServletRequest request,HttpServletResponse response,String content,Comments comments,ModelMap model,String blogId) throws Exception {
		commentsService.saveComment(comments);
		HashMap<String,String> resultMap=new HashMap<String,String>();
		resultMap.put("date", "success");
		return "success";
	}
	
	/**
	 * 展示个评论页面删除评论信息类
	 *
	 * @author: chenzhuo
	 * @Description:
	 * @Date: 2019/1/4
	 * @Modified By:
	 */
	@RequestMapping("delectComment")
	@ResponseBody
	public String delectComment(Comments comments) throws Exception {
		commentsService.deleteComment(comments);
		return "success";
	}
	
	/**
	 * 滑块验证测试类
	 *
	 * @author: chenzhuo
	 * @Description:
	 * @Date: 2019/1/4
	 * @Modified By:
	 */
	@RequestMapping("yanzheng")
	public String yanzheng() {
		return "WEB-INF/jsp/blog/yanzheng";
	}
	
	public int slideVerification() {
		Test test = new Test();
		int x=0;
        try {
            test.testCode();
            test.testImg();
            x =VerifyImageUtil.getX();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return x;
	}
}
