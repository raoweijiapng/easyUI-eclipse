package com.mst.entity;

public class Producter {
	private int id;
	private String productername;
	private String createdate;
	
	public Producter(int id, String productername, String createdate) {
		super();
		this.id = id;
		this.productername = productername;
		this.createdate = createdate;
	}
	
	public Producter(String productername, String createdate) {
		super();
		this.productername = productername;
		this.createdate = createdate;
	}
	
	public Producter() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductername() {
		return productername;
	}
	public void setProductername(String productername) {
		this.productername = productername;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	@Override
	public String toString() {
		return "Szie [id=" + id + ", productername=" + productername + ", createdate=" + createdate + "]";
	}
	
	
	
}
