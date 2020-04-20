package com.mst.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mst.entity.MeterSize;

public interface SizeService {
	
	public List<MeterSize> findAll();

	public int addSize(String meterszie,String createdate);
	
	public int updateSize(String meterszie,int id);

	public int deleteSize(int id);
}
