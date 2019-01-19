package com.fr.peojectdemo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fr.peojectdemo.pojo.Comments;
import com.fr.peojectdemo.service.CommentsService;
import com.fr.peojectdemo.util.PageBean;
import com.fr.peojectdemo.util.Test;
import com.fr.peojectdemo.util.VerifyImageUtil;




@Controller
public class CommentsController {
	
	@Autowired
	private CommentsService commentsService;
	
	
	
	@RequestMapping("comment")
	public String comment(@RequestParam(defaultValue="1") int pageCode,HttpSession session,String username,String message,Date time,String readNumber,String commentsNumber,String title,String forwordNumber,ModelMap model,String blogId) throws Exception {
		Map<String,Object> conditions = new HashMap<String,Object>();
		if(blogId.trim().length()>0||blogId==null) {
			conditions.put("blogId",blogId);
		}
		PageBean pb = commentsService.findComments(conditions, 3, pageCode);
		session.setAttribute("username", username);
		session.setAttribute("message", message);
		session.setAttribute("time", time);
		session.setAttribute("readNumber", readNumber);
		session.setAttribute("commentsNumber", commentsNumber);
		session.setAttribute("title", title);
		session.setAttribute("forwordNumber", forwordNumber);
		session.setAttribute("blogId", blogId);
 		session.setAttribute("pageBean", pb);
		return "WEB-INF/jsp/blogarea";
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
