package com.fr.peojectdemo.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fr.peojectdemo.pojo.Blog;
import com.fr.peojectdemo.service.BlogService;
import com.fr.peojectdemo.service.UserService;
import com.fr.peojectdemo.util.PageBean;

@Controller
public class BlogController {
	
	@Autowired
	private BlogService blogService;
	
	@Autowired
	private UserService userService;
	
	/**
	 * 展示个人博客及分页类
	 *
	 * @author: chenzhuo
	 * @Description:传递页码和用户id进行个人页码展示（未完善）
	 * @Date: 2019/1/3
	 * @Modified By:
	 */
	@RequestMapping("/searchblog")
	public String PageBean(Blog blog,@RequestParam(defaultValue="1") int pageCode,ModelMap model,@RequestParam(defaultValue="")String uid) throws Exception {
		Map<String,Object> conditions = new HashMap<String,Object>();
		if(uid.trim().length()>0||uid==null) {
			conditions.put("uid",uid);
		}
		PageBean pb = blogService.findBy(conditions, 10, pageCode);
		String username = userService.searchUsername(uid);
		model.put("pageBean", pb);
		model.put("username", username);
		return "WEB-INF/jsp/blog/index";	
	}
	
}
