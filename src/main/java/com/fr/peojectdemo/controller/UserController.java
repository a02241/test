package com.fr.peojectdemo.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fr.peojectdemo.pojo.User;
import com.fr.peojectdemo.util.Mail;
import com.fr.peojectdemo.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/userLogin")
	public String userLogin(Model model,HttpServletRequest request,HttpSession session) {
		String loginStr = request.getParameter("username_phonenumber_email");
		String password = request.getParameter("password");
		User user = userService.loginSelect(loginStr);
		if (user != null) {
			if (password.equals(user.getPassword())) {
				return "WEB-INF/jsp/index";
			}else {
				model.addAttribute("msg", "密码错误！");
			}
		}
		model.addAttribute("msg", "账号不存在！");
		return "userLogin";
	}
	
	/**
	 * 
	 * @param cz
	 * @date 2018年12月28日 下午1:17:25
	 */
	@RequestMapping("/userRegist")
	public String userRegist(User user) {
		return "WEB-INF/jsp/index";
	}
	@RequestMapping("/emailCode")
    public void emailCode(String email,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception{
		System.out.println("发送邮件");
		String str="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuilder sb=new StringBuilder(4);
		for(int i=0;i<4;i++)
		{
		     char ch=str.charAt(new Random().nextInt(str.length()));
		     sb.append(ch);
		}
		System.out.println(sb.toString()); 

		int res=Mail.sendEmail("smtp.163.com", "b02241@163.com", "cz950427", "b02241@163.com", new String[]{email},
    			"短信验证", "验证码为：" + sb.toString(),"text/html;charset=utf-8");
    	System.out.println("\n发送结果:"+res);
		try {   
        	if(res == 1) {
        		response.getWriter().write(sb.toString());
    		}else {
    			response.getWriter().write("error");
    		}       	
            
        } catch (IOException e) {
                e.printStackTrace();
        }  
	}
	@RequestMapping("/check")
	@ResponseBody
	public void check(User user , HttpServletRequest request,HttpServletResponse response,HttpSession session,@RequestParam(defaultValue="0")String emailCode, @RequestParam(defaultValue="9")String checkCode) throws Exception{
		String check = userService.check(user);
		System.out.println(emailCode+":"+checkCode);
		try {   
					
					if(check.equals("5")&&!emailCode.equals(checkCode)) {
						check="4";
					}
					System.out.println(check+"~~~~");
					if(check.equals("5")&&emailCode.equals(checkCode)) {
					//默认头像
					user.setIcon("default.png");
					//默认投资年龄
					user.setInvestmentage(1);
					//默认投资简介
					user.setPrivacy(1);
					//默认状态码
					user.setState(1);
					//默认激活码
					user.setCode("a123");
					//注册信息
					userService.registSave(user);
					}
					response.getWriter().write(check);
		} catch (IOException e) {
			e.printStackTrace();
		}  
	}
	@RequestMapping("/blog")
	public String blog() {
		return "WEB-INF/jsp/blog/index";
	}
}
