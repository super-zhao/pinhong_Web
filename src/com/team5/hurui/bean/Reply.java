package com.team5.hurui.bean;

public class Reply {
    private String username;
    private String title;
    private String content;
    private String time;
    public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	private int id;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
