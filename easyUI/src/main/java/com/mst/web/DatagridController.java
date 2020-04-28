package com.mst.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPObject;
import com.mst.entity.City;
import com.mst.entity.FenyeResult;
import com.mst.service.CityServiceImpl;

@Controller
public class DatagridController {
	@Autowired private CityServiceImpl cityserviceImpl;

	@RequestMapping("/newtest")
    public  String tolTest() {		
		return "newtest";
	}
	
	//查找所有的口径表并分页
	@RequestMapping("/findSizefenye")
	@ResponseBody
    public String findAllByfy(HttpServletRequest request) {
		
		String name = request.getParameter("name");
		
		String pinyin = request.getParameter("pinyin");
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		int rows = Integer.parseInt(request.getParameter("rows"));
		
		int offset = (page-1)*rows;
		
		int total = 0;
		
		List<City> allcity = null;
		
		if(name == null && pinyin == null) {			
			
			total = cityserviceImpl.findAllNumber();
			
			//
			allcity = cityserviceImpl.findAllByFy(offset, rows);
		}else if(name == null && pinyin != null) {
			name = "%"+name+"%";
			
			total = cityserviceImpl.findAllNumberIf(name,pinyin);
			
			//使用mybatis查找所有的口径
			allcity = cityserviceImpl.findAllByFyIf(name,pinyin,offset, rows);
			
			
		}else if(name != null && pinyin == null) {
			pinyin = "%"+pinyin+"%";
			
			total = cityserviceImpl.findAllNumberIf(name,pinyin);
			
			//使用mybatis查找所有的口径
			allcity = cityserviceImpl.findAllByFyIf(name,pinyin,offset, rows);
		}else {
			name = "%"+name+"%";
			pinyin = "%"+pinyin+"%";
			
			total = cityserviceImpl.findAllNumberIf(name,pinyin);
			
			//使用mybatis查找所有的口径
			allcity = cityserviceImpl.findAllByFyIf(name,pinyin,offset, rows);
		}
		
		FenyeResult fenyeresult = new FenyeResult();
		fenyeresult.setTotal(total);
		fenyeresult.setRows(allcity);
		/*
		 * JSONObject ab = new JSONObject(); ab.put("total", total); ab.put("rows",
		 * allcity); //转换list集合为json字符串 String jsonString1 = JSON.toJSON(ab).toString();
		 */
		String jsonString = JSON.toJSON(fenyeresult).toString();
		
		System.out.println(jsonString);		
		
		return jsonString;
	}
	
}
