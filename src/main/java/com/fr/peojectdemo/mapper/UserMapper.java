package com.fr.peojectdemo.mapper;

import com.fr.peojectdemo.pojo.User;

public interface UserMapper {
	public User loginSelect(String account);
	
	public void registSave(User user);
	
	public int checkUsername(String username);
	
	public int checkPhonenumber(String phonenumber);
	
	public int checkEmail(String email);
	
	public String searchUsername(String uid);
	
}
