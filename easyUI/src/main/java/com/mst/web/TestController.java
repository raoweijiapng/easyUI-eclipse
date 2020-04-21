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
import com.mst.entity.MeterSize;
import com.mst.entity.Producter;
import com.mst.entity.Result;
import com.mst.service.SizeServiceImpl;

@Controller
public class TestController {
	
	@Autowired
    private SizeServiceImpl sizeserviceImpl;
	
	@RequestMapping("/index")
    public  String tolTest() {		
		return "index";
	}
	
	//查找所有的口径表
	@RequestMapping("/findSize")
	@ResponseBody
    public String findAllSize() {
		//使用mybatis查找所有的口径
		List<MeterSize> allsize = sizeserviceImpl.findAll();
		
		//遍历查找的所有口径,并将数据库中的时间戳转换成时间
		for(int i=0;i<allsize.size();i++) {
		    //将字符串转换为长整形
		    long lt = Long.parseLong(allsize.get(i).getCreatedate());
		    //将长整形转换为日期类型
		    Date date = new Date(lt*1000);
		    //定义日期的表现形式 
		    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    //转换固定形式的日期字符串
		    String res = simpleDateFormat.format(date);			
			
			allsize.get(i).setCreatedate(res);			
		}
		
		//转换list集合为json字符串
		String jsonString = JSON.toJSON(allsize).toString();		
		//System.out.println(jsonString);		
		
		return jsonString;
	}
	
	//为口径表增加数据
	@RequestMapping("/addSize")
	@ResponseBody
    public  String toaddSize(HttpServletRequest request) {
		//获取前端传过来的表单的参数
		String metersize = request.getParameter("metersize");		
		//System.out.println(metersize);
		
		//获得系统时间秒数	
		long date = System.currentTimeMillis()/1000;	
		//将长整形转换为字符串
		String createdate= String.valueOf(date);
		//将口径和创建时间插入数据库
		int status = sizeserviceImpl.addSize(metersize,createdate);		
		//System.out.println(status);
		
		Result result = new Result();		
		//判断是否插入成功
		if(status == 1) {
			result.setStatus("success");
			result.setSuccessMsg("增加口径成功!");
		}else {
			result.setStatus("failed");
			result.setSuccessMsg("增加口径失败!");
		}
		//将Result对象转换为json字符串
		String jsonString =JSON.toJSONString(result);
		//System.out.println(jsonString);
		
		return jsonString;
	}
	
	//在口径表修改数据
	@RequestMapping("/updateSize")
	@ResponseBody
    public  String toupdateSize(HttpServletRequest request) {
		//获取前端传过来的表单的参数
		String metersize = request.getParameter("metersize");
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(metersize+"and"+id);
		
		//将口径和创建时间插入数据库
		int status = sizeserviceImpl.updateSize(metersize,id);		
		//System.out.println(status);
		
		Result result = new Result();		
		//判断是否插入成功
		if(status == 1) {
			result.setStatus("success");
			result.setSuccessMsg("修改口径成功!");
		}else {
			result.setStatus("failed");
			result.setSuccessMsg("修改口径失败!");
		}
		//将Result对象转换为json字符串
		String jsonString =JSON.toJSONString(result);
		//System.out.println(jsonString);
		
		return jsonString;
	}
	
	//在口径表删除数据
	@RequestMapping("/deleteSize")
	@ResponseBody
    public  String todeleteSize(HttpServletRequest request) {
		//获取前端传过来的表单的参数
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(+id);
		
		//将口径和创建时间插入数据库
		int status = sizeserviceImpl.deleteSize(id);		
		//System.out.println(status);
		
		Result result = new Result();		
		//判断是否插入成功
		if(status == 1) {
			result.setStatus("success");
			result.setSuccessMsg("删除口径成功!");
		}else {
			result.setStatus("failed");
			result.setSuccessMsg("删除口径失败!");
		}
		//将Result对象转换为json字符串
		String jsonString =JSON.toJSONString(result);
		//System.out.println(jsonString);
		
		return jsonString;
	}

	//查找所有的厂家表
	@RequestMapping("/findProducter")
	@ResponseBody
    public String findAllProducter() {
		//使用mybatis查找所有的厂家
		List<Producter> allProducter = sizeserviceImpl.findAllProducter();
		
		//遍历查找的所有口径,并将数据库中的时间戳转换成时间
		for(int i=0;i<allProducter.size();i++) {
		    //将字符串转换为长整形
		    long lt = Long.parseLong(allProducter.get(i).getCreatedate());
		    //将长整形转换为日期类型
		    Date date = new Date(lt*1000);
		    //定义日期的表现形式 
		    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    //转换固定形式的日期字符串
		    String res = simpleDateFormat.format(date);			
			
		    allProducter.get(i).setCreatedate(res);			
		}
		
		//转换list集合为json字符串
		String jsonString = JSON.toJSON(allProducter).toString();		
		//System.out.println(jsonString);		
		
		return jsonString;
	}
	
	//为厂家表增加数据
	@RequestMapping("/addProducter")
	@ResponseBody
    public  String toaddProducter(HttpServletRequest request) {
		//获取前端传过来的表单的参数
		String productername = request.getParameter("productername");		
		//System.out.println(productername);
		
		//获得系统时间秒数	
		long date = System.currentTimeMillis()/1000;	
		//将长整形转换为字符串
		String createdate= String.valueOf(date);
		//将厂家和创建时间插入数据库
		int status = sizeserviceImpl.addProducter(productername,createdate);		
		//System.out.println(status);
		
		Result result = new Result();		
		//判断是否插入成功
		if(status == 1) {
			result.setStatus("success");
			result.setSuccessMsg("增加厂家成功!");
		}else {
			result.setStatus("failed");
			result.setSuccessMsg("增加厂家失败!");
		}
		//将Result对象转换为json字符串
		String jsonString =JSON.toJSONString(result);
		//System.out.println(jsonString);
		
		return jsonString;
	}
	
	//在厂家表修改数据
	@RequestMapping("/updateProducter")
	@ResponseBody
    public  String toupdateProducter(HttpServletRequest request) {
		//获取前端传过来的表单的参数
		String productername = request.getParameter("productername");
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(productername+"and"+id);
		
		//将厂家名称和创建时间插入数据库
		int status = sizeserviceImpl.updateProducter(productername,id);		
		//System.out.println(status);
		
		Result result = new Result();		
		//判断是否插入成功
		if(status == 1) {
			result.setStatus("success");
			result.setSuccessMsg("修改厂家成功!");
		}else {
			result.setStatus("failed");
			result.setSuccessMsg("修改厂家失败!");
		}
		//将Result对象转换为json字符串
		String jsonString =JSON.toJSONString(result);
		//System.out.println(jsonString);
		
		return jsonString;
	}
	//在口径表删除数据
	@RequestMapping("/deleteProducter")
	@ResponseBody
    public  String todeleteProducter(HttpServletRequest request) {
		//获取前端传过来的表单的参数
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(+id);
		
		//将口径和创建时间插入数据库
		int status = sizeserviceImpl.deleteProducter(id);		
		//System.out.println(status);
		
		Result result = new Result();		
		//判断是否插入成功
		if(status == 1) {
			result.setStatus("success");
			result.setSuccessMsg("删除厂家成功!");
		}else {
			result.setStatus("failed");
			result.setSuccessMsg("删除厂家失败!");
		}
		//将Result对象转换为json字符串
		String jsonString =JSON.toJSONString(result);
		//System.out.println(jsonString);
		
		return jsonString;
	}


	
}
