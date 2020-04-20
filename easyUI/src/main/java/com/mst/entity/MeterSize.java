package com.mst.entity;

public class MeterSize {
	private int id;
	private String metersize;
	private String createdate;
	
	public MeterSize(int id, String metersize, String createdate) {
		super();
		this.id = id;
		this.metersize = metersize;
		this.createdate = createdate;
	}
	
	public MeterSize(String metersize, String createdate) {
		super();
		this.metersize = metersize;
		this.createdate = createdate;
	}
	
	public MeterSize() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMetersize() {
		return metersize;
	}
	public void setMetersize(String metersize) {
		this.metersize = metersize;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	@Override
	public String toString() {
		return "Szie [id=" + id + ", metersize=" + metersize + ", createdate=" + createdate + "]";
	}
	
	
	
}
