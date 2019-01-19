package com.fr.peojectdemo.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fr.peojectdemo.pojo.Shares;
import com.fr.peojectdemo.service.SharesService;

@Controller
public class SharesController {

	@Autowired
	private SharesService sharesService;
	
	@RequestMapping("graphical")
	@ResponseBody
	public Object[][] graphical(@RequestParam(defaultValue="1")String code) throws Exception{
		String regEx="[^0-9]";  
		Pattern p = Pattern.compile(regEx);  
		Matcher m = p.matcher(code);
		String realCode = m.replaceAll("").trim();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("sharesName", "`000001`");
		List<Shares> list = sharesService.selectShares(map);
		Object[][] obj = new Object[244][5];
		for (int i = 0; i < list.size(); i++) {
			obj[i][0]=list.get(i).getDate();
			obj[i][1]=list.get(i).getOpen();
			obj[i][2]=list.get(i).getClose();
			obj[i][3]=list.get(i).getLow();
			obj[i][4]=list.get(i).getHigh();
		}
		System.out.println(obj.toString()+"~~~~~~~~~~~~~~~~~~~");
		return obj;
	}
}
