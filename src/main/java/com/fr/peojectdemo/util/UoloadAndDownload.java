/**
 * 
 */
package com.fr.peojectdemo.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Theo
 * @Description:
 * @Date:2019年1月8日
 * @Type:UoloadAndDownload
 */
public class UoloadAndDownload{
	@RequestMapping("IoReadImage")
	public String IoReadImage(String imgName,HttpServletRequest request,HttpServletResponse response) throws IOException {
		System.out.println(imgName+"~~~~~~~~~~~");
		ServletOutputStream out = null;
		FileInputStream ips = null;
		try {
			//获取图片存放路径
			String imgPath = "D:/photo/"+imgName;
			ips = new FileInputStream(new File(imgPath));
			response.setContentType("multipart/form-data");
			out = response.getOutputStream();
			//读取文件流
			int len = 0;
			byte[] buffer = new byte[1024 * 10];
			while ((len = ips.read(buffer)) != -1){
				out.write(buffer,0,len);
			}
			out.flush();
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			out.close();
			ips.close();
		}
		return null;
	}

}
