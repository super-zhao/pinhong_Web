<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
    List userlist=(List)application.getAttribute("userlist");
    String uname=(String)session.getAttribute("uname");
    if(userlist==null||userlist.size()==0){
        userlist=new ArrayList();
        application.setAttribute("userlist",userlist);
    }
    if(uname!=null&&!uname.equals("")){
    if(!userlist.contains("<img src='../image/iboy.gif' />&nbsp;"+uname)){
        userlist.add("<img src='../image/iboy.gif' />&nbsp;"+uname);
        }
    }
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>message</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="refresh" content="3">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body onload="scroll(0,9999)">
<table width="100%" border="0" align="left" cellpadding="0"
	cellspacing="0" bordercolor="#EBEBEB">
	
<%
    for(int i=0;i<userlist.size();i++){
      String name=(String)userlist.get(i);
 %>

	<tr align="left">
		<td height="20"class="p16"><%=name %></td>
	</tr>	
<%
}
 %>	


</table>
</body>
</html>
