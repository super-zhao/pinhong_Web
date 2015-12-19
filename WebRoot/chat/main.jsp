<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>	
<title>在线聊天</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/right.css" rel="stylesheet" type="text/css" />
</head>

<frameset rows="85%,*">
	
	
	<frameset cols="80%,*">		
			
			
			<frame src="message.jsp" name="message" />			
		
			<frame src="userList.jsp" name="userList">		
		
		
	</frameset>
	
	<frame src="sendMessage.jsp" name="sendMessage" />
	
</frameset>
<noframes></noframes>
</html>
