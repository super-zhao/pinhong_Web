<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src = "${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">

function openChat(){

	window.open("${pageContext.request.contextPath }/hurui/Checklogin","","left=250   top=200   width=500   height=400");
}


$(document).ready(
		function(){
			$("#loginbtn").click(function(){
				$.get("${pageContext.request.contextPath }/zcAdminServlet",{method:"CheckValidity",userName:$("#userName").val(),password:$("#password").val()},function(data){
					if(data=="用户名或密码错误!"){
						$("#alertSpan").html(data);
					}else{
						window.location="index.jsp"
					}
				});
			});
		});
</script>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td height="3" background="${pageContext.request.contextPath }/image/d.jpg"></td>
	</tr>
</table>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="799" height="161" title="pinhong">
			<param name="movie" value="${pageContext.request.contextPath }/image/2.swf" />
			<param name="quality" value="high" />
			<embed src="${pageContext.request.contextPath }/image/2.swf" quality="high"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash" width="799" height="161"></embed>
		</object></td>
	</tr>
</table>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td height="3" background="${pageContext.request.contextPath }/image/d.jpg"></td>
	</tr>
</table>
<table width="799" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td><img src="${pageContext.request.contextPath }/image/d_r3_c1.jpg" width="60" height="40" /><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a
			href="${pageContext.request.contextPath }/initindex_lw"><img src="${pageContext.request.contextPath }/image/d_r3_c5.jpg" width="64"
			height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="${pageContext.request.contextPath }/showproductlist_lw?pageNo=1"><img
			src="${pageContext.request.contextPath }/image/d_r3_c7.jpg" name="image1" width="94" height="40"
			border="0" id="image1" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="${pageContext.request.contextPath }/shownewslist_lw?pageNo=1"><img
			src="${pageContext.request.contextPath }/image/d_r3_c8.jpg" width="93" height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a
			href="#" onclick="openChat()"><img src="${pageContext.request.contextPath }/image/d_r3_c9.jpg" width="95"
			height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="${pageContext.request.contextPath }/messageBoard.jsp?pageNo=1" target="_blank"><img
			src="${pageContext.request.contextPath }/image/d_r3_c10.jpg" width="93" height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="${pageContext.request.contextPath }/admin/index.jsp"><img src="${pageContext.request.contextPath }/image/d_r3_c13.jpg"
			width="85" height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><img src="${pageContext.request.contextPath }/image/d_r3_c25.jpg"
			width="36" height="40" /></td>
	</tr>
</table>

<link href="${pageContext.request.contextPath }/css/right.css" rel="stylesheet" type="text/css" />

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<TABLE height=28 cellSpacing=3 cellPadding=0 width=776 align=center
	background=zjej/btmunu.gif border=0>
	<TBODY>
		<TR vAlign=bottom>
			<TD>&nbsp;&nbsp;<A class=nav href="${pageContext.request.contextPath }/initindex_lw">首页</A><FONT
				class=nav> &gt; </FONT><A class=nav href="login.jsp">管理员登录</A></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE height=1 cellSpacing=0 cellPadding=0 width=776 align=center
	bgColor=#cccccc border=0>
	<TBODY>
		<TR>
			<TD></TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
	<TBODY>
		<TR>
			<TD vAlign=top width=195 background=zjej/ny3.gif bgColor=#ffffff
				height=186>
<link href="${pageContext.request.contextPath }/image/css.css" rel="stylesheet" type="text/css" />
<table width="193" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="middle"><a href="${pageContext.request.contextPath }/shownewslist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/cg1_r1_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
	  <tr>
        <td align="center" valign="middle"><a href="${pageContext.request.contextPath }/showproductlist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/cg1_r2_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><a href="${pageContext.request.contextPath }/after.jsp"><img src="${pageContext.request.contextPath }/image/cg1_r4_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><a href="${pageContext.request.contextPath }/about.jsp"><img src="${pageContext.request.contextPath }/image/cg1_r6_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr  height="1">
        <td align="center" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="2"><img src="${pageContext.request.contextPath }/image/cg1_r10_c1.jpg" width="188" height="28" /></td>
          </tr>
          <tr>
            <td width="33"><img src="${pageContext.request.contextPath }/image/cg5_1.jpg" width="21" height="28" /></td>
            <td width="158" class="d06">业务专线:010-88888888</td>
          </tr>
          <tr>
            <td width="33" colspan="2"><img src="${pageContext.request.contextPath }/image/tiao.jpg" /></td>
          </tr>
          <tr>
            <td width="33"><img src="${pageContext.request.contextPath }/image/cg5_1.jpg" width="21" height="28" /></td>
            <td width="158" class="d06">售后服务:010-66666666</td>
          </tr>
          <tr>
            <td width="33" colspan="2"><img src="${pageContext.request.contextPath }/image/tiao.jpg" /></td>
          </tr>
          <tr>
            <td width="33"><img src="${pageContext.request.contextPath }/image/cg5_1.jpg" width="21" height="28" /></td>
            <td width="158" class="d06">传&nbsp;&nbsp;真:010-12345678</td>
          </tr>
          <tr>
            <td width="33" colspan="2"><img src="${pageContext.request.contextPath }/image/tiao.jpg" /></td>
          </tr>
        </table></td>
      </tr>
    </table>
</TD>
			<TD vAlign=top width=3 bgColor=#e8e8e8></TD>
			<td valign="top" bgcolor="#ffffff" height="300">
		
		
		
			<!-- 管理员**********************************************************************登录 -->
			
			
			
			<form action="" method="post" name="form1" id = "form1">
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
					<div align="center"><span class="d6"><strong>管 理 
					员 登 录 </strong></span></div>
					</td>
				</tr>

				<tr>
					<td width="141" height="45" align="center" bgcolor="#EBEBEB"
						class="d5">您的帐号：</td>
					<td width="258" align="left" bgcolor="#EBEBEB"><input
						name="userName" type="text" id = "userName"/></td>
				</tr>
				<tr>

				</tr>
				<tr>
					<td height="45" align="center" bgcolor="#EBEBEB" class="d5">
					您的密码：</td>
					<td align="left" bordercolor="#EBEBEB" bgcolor="#EBEBEB"><input
						name="password" type="password" size="21" id = "password" /></td>
				</tr>
				<tr align="left">
					<td height="35" colspan="2" align="right" bgcolor="#EAF0FB"
						class="p16">
					<div align="center"><span class="d6" id = "alertSpan"><strong>&nbsp;</strong></span></div>
					</td>
				</tr>
				
				<tr>
					<td height="60" colspan="2" valign="bottom">
					<div align="center"><input name="submit" type="button" id="loginbtn"
						class="d6" value="登  录" /> &nbsp;&nbsp;&nbsp;&nbsp; <input
						name="reset" type="reset" class="d6" value="重  置" /></div>
					</td>
				</tr>
				<tr>
				</tr>				
			</table></form>
			</td>
		</TR>
	</TBODY>
</TABLE>

<link href="${pageContext.request.contextPath }/image/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style><table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800" height="29" align="center" background="${pageContext.request.contextPath }/image/d_r11_15.jpg"></td>
  </tr>
</table>
</BODY>
</HTML>


