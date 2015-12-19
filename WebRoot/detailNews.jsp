<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="text/javascript">

function openChat(){

	window.open("${pageContext.request.contextPath }/hurui/Checklogin","","left=250   top=200   width=500   height=400");
}
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
			href="initindex_lw"><img src="${pageContext.request.contextPath }/image/d_r3_c5.jpg" width="64"
			height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="showproductlist_lw?pageNo=1"><img
			src="${pageContext.request.contextPath }/image/d_r3_c7.jpg" name="image1" width="94" height="40"
			border="0" id="image1" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="shownewslist_lw?pageNo=1"><img
			src="${pageContext.request.contextPath }/image/d_r3_c8.jpg" width="93" height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a
			href="#" onclick="openChat()"><img src="${pageContext.request.contextPath }/image/d_r3_c9.jpg" width="95"
			height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="messageBoard.jsp?pageNo=1" target="_blank"><img
			src="${pageContext.request.contextPath }/image/d_r3_c10.jpg" width="93" height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><a href="${pageContext.request.contextPath }/admin/index.jsp"><img src="${pageContext.request.contextPath }/image/d_r3_c13.jpg"
			width="85" height="40" border="0" /></a><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><img src="${pageContext.request.contextPath }/image/top_red.jpg" width="20"
			height="40" border="0" /><img src="${pageContext.request.contextPath }/image/d_r3_c25.jpg"
			width="36" height="40" /></td>
	</tr>
</table>

<link href="css/right.css" rel="stylesheet" type="text/css" />

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<TABLE height=28 cellSpacing=3 cellPadding=0 width=776 align=center
	background=zjej/btmunu.gif border=0>
	<TBODY>
		<TR vAlign=bottom>
			<TD>&nbsp;&nbsp;<A class=nav href="initindex_lw">首页</A><FONT
				class=nav> &gt; </FONT><A class=nav href="shownewslist_lw?pageNo=1">站内新闻</A></TD>
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
			<!--    右侧显示区域   开始 -->
			
			<table width="799" border="0" align="center" cellpadding="0"
				cellspacing="0" class="n">
				<tr>
					<td align="center" valign="top" background="${pageContext.request.contextPath }/image/cg5.jpg"
						bgcolor="#f4f4f4">
<link href="${pageContext.request.contextPath }/image/css.css" rel="stylesheet" type="text/css" />
<table width="193" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center" valign="middle"><a href="shownewslist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/cg1_r1_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
	  <tr>
        <td align="center" valign="middle"><a href="showproductlist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/cg1_r2_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><a href="after.jsp"><img src="${pageContext.request.contextPath }/image/cg1_r4_c2.jpg" width="175" height="25" border="0" /></a></td>
      </tr>
      <tr>
        <td align="center" valign="middle"><a href="about.jsp"><img src="${pageContext.request.contextPath }/image/cg1_r6_c2.jpg" width="175" height="25" border="0" /></a></td>
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
</td>
					<td width="608" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								
								<tr align="center" height="50">
									<td valign="middle" colspan="2" background="${pageContext.request.contextPath }/image/cg2.jpg"><span
										class="g03" style="font-weight: bold" >
									<c:out value="${requestScope.title}"></c:out></span></td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td height="370" align="right" valign="top">
							<table width="100%" border="0" cellspacing="32" cellpadding="0">
								<tr>
									<td align="left" valign="top">
									<p class="d061"><c:out value="${requestScope.content}"></c:out></p>
									<p class="d061">&nbsp;&nbsp;&nbsp;&nbsp;<br />
									&nbsp;&nbsp;&nbsp;&nbsp;</p>
									</td>
								</tr>
							</table>
							<p><img
								src="${pageContext.request.contextPath }/image/n10.jpg" width="165" height="72" /></p>
							<p><c:out value="${requestScope.time}"></c:out>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
							</td>
						</tr>
						
					</table>
					</td>
				</tr>
			</table>
			
			<!--    右侧显示区域   结束-->


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


