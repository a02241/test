package com.fr.peojectdemo.pojo;

public class Area_List {
	private long index;
	private String code;
	private String name;
	private String area;
	public long getIndex() {
		return index;
	}
	public void setIndex(long index) {
		this.index = index;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Area_List(long index, String code, String name, String area) {
		super();
		this.index = index;
		this.code = code;
		this.name = name;
		this.area = area;
	}
	public Area_List() {
		super();
	}
	@Override
	public String toString() {
		return "Area_List [index=" + index + ", code=" + code + ", name=" + name + ", area=" + area + "]";
	}
	
}
