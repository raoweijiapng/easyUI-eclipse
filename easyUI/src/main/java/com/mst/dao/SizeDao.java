package com.mst.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mst.entity.MeterSize;

@Repository
public interface SizeDao {
	
	public List<MeterSize> findAll();  
            
	public int addSize(@Param("metersize")String meterszie,@Param("createdate")String createdate);

	public int updateSize(@Param("metersize")String meterszie,@Param("id")int id);
	
	public int deleteSize(@Param("id")int id);
}
