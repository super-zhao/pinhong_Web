package com.team5.zhaochao.bean;

/**
 * 管理员的bean类
 * 
 * @author zhaochao
 *
 */

public class Administrator {
	private int admin_id;   //管理员的编号
	private String username;  //管理员的用户名
	private String password;  //管理员的密码
	
	//构造方法
	public Administrator() {
	}
	
	//get和set方法
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
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
	
}
