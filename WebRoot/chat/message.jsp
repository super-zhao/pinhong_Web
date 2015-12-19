<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <%
       request.setCharacterEncoding("UTF-8");
       String name=(String)session.getAttribute("uname"); 
       List messagelist=(List)application.getAttribute("messagelist");
       String mess=request.getParameter("message");
       if(messagelist==null||messagelist.size()==0){
			messagelist=new ArrayList();
			application.setAttribute("messagelist", messagelist);
			//messagelist.add("<img src='../image/iboy.gif' />&nbsp;<font color='blue'>"+name + "&nbsp;<b>说：</b></font><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
					//+ message);
		}
		if(mess!=null&&!mess.equals("")){
			messagelist.add("<img src='../image/iboy.gif' />&nbsp;<font color='blue'>"+name + "&nbsp;<b>说：</b></font><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
					+ mess);
		}%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>message</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="refresh" content="3">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="image/css.css" rel="stylesheet" type="text/css" />
</head>

<body onload="scroll(0,9999)">
<table width="100%" border="0" align="left" cellpadding="0"
	cellspacing="0">
		<% 
       for(int i=0;i<messagelist.size();i++){
           String uname=(String)messagelist.get(i);
        %>
	<tr align="left">
		<td height="20" class="p16"><%=uname %></td>
	</tr>
	
	<%
	  } 
	%>
</table>
</body>
</html>
