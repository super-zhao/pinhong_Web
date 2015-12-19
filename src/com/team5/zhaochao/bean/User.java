package com.team5.zhaochao.bean;

import java.util.Date;

/**
 * 用户的bean类
 * 
 * @author superzhao
 *
 */

public class User {
	private int user_id;    //用户的编号
	private String username;  //用户的用户名
	private String password;  //用户的密码
	private Date register_date;  //用户注册的日期
	private String email;  // 用户的邮箱
	
	//get和set方法
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//构造方法
	public User(int user_id, String username, String password,
			Date register_date, String email) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.register_date = register_date;
		this.email = email;
	}
	public User() {
	}
	
	
	
}
