package com.fr.peojectdemo.service;

import java.util.List;
import java.util.Map;

import com.fr.peojectdemo.pojo.Shares;

public interface SharesService {
	
	public List<Shares> selectShares(Map<String,Object> map)throws Exception;
}
