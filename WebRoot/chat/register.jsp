<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/right.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function  checkForm(register){

	if(register.userName.value==""){
		alert("请输入‘用户名’。");	
		return false;
	}else{
		if(register.password.value==""){
			alert("密码不能为空。");
			return false;
		}else{
			if(register.password.value != register.password2.value){
				alert("两次输入的密码不一致。");
				return false;
			}
			
			return true;			
		}
	}
}

</script>
</head>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">


			<form action="../hurui/Zhuce" method="post" name="form1" onSubmit="return checkForm(this)">
				<table width="399" border="0" align="center" cellpadding="0"
				cellspacing="0" bordercolor="#EBEBEB">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr align="left">
					<td height="35" colspan="2" bgcolor="#EAF0FB" class="p16">
					<div align="center"><span class="d6"><strong>会
					员 注 册 </strong></span></div>
					</td>
				</tr>

				<tr>
					<td width="141" height="45" align="center" bgcolor="#EBEBEB"
						class="d5">用户名：</td>
					<td width="258" align="left" bgcolor="#EBEBEB"><input
						name="userName" type="text" /></td>
				</tr>
				<tr>
					<td height="45" align="center" bgcolor="#EBEBEB" class="d5">密
					码：</td>
					<td align="left" bordercolor="#EBEBEB" bgcolor="#EBEBEB"><input
						name="password" type="password" size="21" /></td>
				</tr>
				<tr>
					<td height="45" align="center" bgcolor="#EBEBEB" class="d5">
					确认密码：</td>
					<td align="left" bordercolor="#EBEBEB" bgcolor="#EBEBEB"><input
						name="password2" type="password" size="21" /></td>
				</tr>

				<tr align="left">
					<td height="35" colspan="2" align="right" bgcolor="#EAF0FB"
						class="p16">
					
					</td>
				</tr>
				<tr>
					<td height="60" colspan="2" valign="bottom">
					<div align="center"><input name="submit" type="submit"
						class="d6" value="提  交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input
						name="reset" type="reset" class="d6" value="重  置" /></div>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>				
			</table></form>


</BODY>
</HTML>
