package com.bean;

public class Villages {

	int id;
	int districtId;
	int blockId;
	int panchayatId;
	String name;
	
	public Villages(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDistrictId() {
		return districtId;
	}
	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}
	public int getBlockId() {
		return blockId;
	}
	public void setBlockId(int blockId) {
		this.blockId = blockId;
	}
	public int getPanchayatId() {
		return panchayatId;
	}
	public void setPanchayatId(int panchayatId) {
		this.panchayatId = panchayatId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
