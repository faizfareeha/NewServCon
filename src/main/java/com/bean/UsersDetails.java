package com.bean;

public class UsersDetails {
	private String userId;
	private String name;
	private String email;
	private String pwd;
	private String role;
	private String mobile;
	private String division;
	private String subdivision;
	private String section;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getSubdivision() {
		return subdivision;
	}
	public void setSubdivision(String subdivision) {
		this.subdivision = subdivision;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	
	@Override
	public String toString() {
		return "UsersDetails [userId=" + userId + ", name=" + name + ", email=" + email
				+ ", pwd=" + pwd + ", role=" + role + ", mobile=" + mobile + ", division=" + division
				+ ", subdivision=" + subdivision + ", section=" + section + "]";
	}
}
