package com.mst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mst.entity.City;


@Repository
public interface CityDao {
	
	public int findAllNumber();
	
	public List<City> findAllByFy(@Param("offset")int offset,@Param("rows")int rows);
	
	public int findAllNumberIf(@Param("name")String name,@Param("pinyin")String pinyin);
	
	public List<City> findAllByFyIf(@Param("name")String name,@Param("pinyin")String pinyin,@Param("offset")int offset,@Param("rows")int rows);             

	
}
