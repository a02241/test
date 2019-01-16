package com.fr.peojectdemo.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fr.peojectdemo.mapper.SharesMapper;
import com.fr.peojectdemo.pojo.Shares;
import com.fr.peojectdemo.service.SharesService;

@Service
public class SharesServiceImpl implements SharesService {

	@Autowired
	private SharesMapper sharesMapper;
	
	@Override
	public List<Shares> selectShares(Map<String, Object> map) throws Exception {
		return sharesMapper.selectShares(map);
	}

}
