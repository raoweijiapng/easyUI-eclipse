package com.mst.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mst.dao.CityDao;
import com.mst.entity.City;

@Service("cityserviceImpl")
public class CityServiceImpl implements CityService {

	@Autowired private CityDao citydao;
	
	@Override
	public int findAllNumber() {
		return citydao.findAllNumber();
	}
	 
	@Override 
	public List<City> findAllByFy(int offset,int rows){
		return citydao.findAllByFy(offset, rows);
	}
	
	@Override
	public int findAllNumberIf(String name,String pinyin) {
		return citydao.findAllNumberIf(name, pinyin);
	}
	
	@Override
	public List<City> findAllByFyIf(String name,String pinyin,int offset,int rows){
		return citydao.findAllByFyIf(name, pinyin, offset, rows);
	}
	
	
	
	
}
