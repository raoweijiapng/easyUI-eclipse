package com.mst.entity;

public class City {
	
	private String id;
	private String name;
	private String parentid;
	private String shortname;
	private String mergername;
	private String pinyin;
	
	public City(String id, String name, String parentid, String shortname, String mergername, String pinyin) {
		super();
		this.id = id;
		this.name = name;
		this.parentid = parentid;
		this.shortname = shortname;
		this.mergername = mergername;
		this.pinyin = pinyin;
	}
	
	public City() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public String getShortname() {
		return shortname;
	}
	public void setShortname(String shortname) {
		this.shortname = shortname;
	}
	public String getMergername() {
		return mergername;
	}
	public void setMergername(String mergername) {
		this.mergername = mergername;
	}
	public String getPinyin() {
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	@Override
	public String toString() {
		return "City [id=" + id + ", name=" + name + ", parentid=" + parentid + ", shortname=" + shortname
				+ ", mergername=" + mergername + ", pinyin=" + pinyin + "]";
	}
	
	
	
}
