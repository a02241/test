package com.fr.peojectdemo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fr.peojectdemo.mapper.UserMapper;
import com.fr.peojectdemo.pojo.User;
import com.fr.peojectdemo.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;

	@Override
	public User loginSelect(String account) {
		return userMapper.loginSelect(account);
	}

	@Override
	public void registSave(User user) {
		userMapper.registSave(user);
	}

	@Override
	public String check(User user) {
		int checkUsername = userMapper.checkUsername(user.getUsername());
		int checkPhonenumber = userMapper.checkPhonenumber(user.getPhonenumber());
		int checkEmail = userMapper.checkEmail(user.getEmail());
		//验证用户名是否被注册
		if(checkUsername != 0) {
			return "1";
		}
		//验证电话是否被注册
		if(checkPhonenumber != 0) {
			return "2";
		}
		//验证邮箱是否被注册
		if(checkEmail != 0) {
			return "3";
		}
		return "5";
	}

	@Override
	public String searchUsername(String uid) {
		return userMapper.searchUsername(uid);
	}

	
	

}
