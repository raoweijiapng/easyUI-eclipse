package com.mst.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mst.entity.City;

public interface CityService {
	
	public int findAllNumber();
	
	public List<City> findAllByFy(int page,int rows);
	
	public int findAllNumberIf(String name,String pinyin);
	
	public List<City> findAllByFyIf(String name,String pinyin,int offset,int rows);         

	
}
