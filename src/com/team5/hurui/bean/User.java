package com.team5.hurui.bean;

import java.sql.Date;

public class User {
    private int userid;
    private String username;
    private String password;
    private Date register_date;
    
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegister_date() {
		return register_date;
	}
	public void setRegister_date(Date registerDate) {
		register_date = registerDate;
	}
}
