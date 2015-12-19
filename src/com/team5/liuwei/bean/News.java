package com.team5.liuwei.bean;

import java.sql.Date;

public class News {
    private String news_title;
    private Date news_date;
    private String news_content;
    private int news_id;
    
	public News() {
		super();
	}
	public News(String newsTitle, Date newsDate, String newsContent, int newsId) {
		super();
		news_title = newsTitle;
		news_date = newsDate;
		news_content = newsContent;
		news_id = newsId;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String newsTitle) {
		news_title = newsTitle;
	}
	public Date getNews_date() {
		return news_date;
	}
	public void setNews_date(Date newsDate) {
		news_date = newsDate;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String newsContent) {
		news_content = newsContent;
	}
	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int newsId) {
		news_id = newsId;
	}
    
    
}
