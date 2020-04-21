package com.mst.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mst.dao.SizeDao;
import com.mst.entity.MeterSize;
import com.mst.entity.Producter;

@Service("sizeserviceImpl")
public class SizeServiceImpl implements SizeService {

	@Autowired private SizeDao sizedao;
	 
	@Override 
	public List<MeterSize> findAll() {
		return sizedao.findAll(); 
	}
	
	@Override 
	public int addSize(String meterszie,String createdate) {
		return sizedao.addSize(meterszie, createdate);	
	}
	
	@Override
	public int updateSize(String meterszie,int id) {
		return sizedao.updateSize(meterszie, id);
	}
	
	@Override
	public int deleteSize(int id) {
		return sizedao.deleteSize(id);
	}

	@Override
	public List<Producter> findAllProducter(){
		return sizedao.findAllProducter();
	}
	
	@Override
	public int addProducter(String productername,String createdate) {
		return sizedao.addProducter(productername, createdate);
	}
	
	@Override
	public int updateProducter(String productername,int id) {
		return sizedao.updateProducter(productername, id);
	}
	
	@Override
	public int deleteProducter(int id) {
		return sizedao.deleteProducter(id);
	}

}
