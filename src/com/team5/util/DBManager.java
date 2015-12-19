package com.team5.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBManager {
	    private static final String ClassName="com.mysql.jdbc.Driver";
	    private static final String url="jdbc:Mysql://127.0.0.1:3306/temp";
	    private static final String user="root";
	    private static final String pass="123456";
	    public static Connection getConnection(){
	    	Connection conn=null;
	    	try {
				Class.forName(ClassName);
	            conn=DriverManager.getConnection(url, user, pass) ;        
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	return conn;
	    }
	    public static void closeAll(ResultSet rs,Statement st,Connection conn){
	    	try {
				if(rs!=null){
					rs.close();
				}
				if(st!=null){
					st.close();
				}
				if(conn!=null){
					conn.close();
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	
	    }
}
