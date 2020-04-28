package com.mst.entity;

import java.util.List;

public class FenyeResult {
	
	private int total;
	private List<City> rows;
	
	public FenyeResult(int total, List<City> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}

	public FenyeResult() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<City> getRows() {
		return rows;
	}

	public void setRows(List<City> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "FenyeResult [total=" + total + ", rows=" + rows + "]";
	}

	
	
	
}
