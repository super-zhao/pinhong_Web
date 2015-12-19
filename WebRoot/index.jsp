<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>品红公司</title>
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
</style>
</head>

<body>
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
<table width="799" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="3" background="${pageContext.request.contextPath }/image/d.jpg"></td>
  </tr>
</table>
<table width="799" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="352" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0" >
          <tr>
            <td background="${pageContext.request.contextPath }/image/d02.jpg"><img src="${pageContext.request.contextPath }/image/d_r7_c1.jpg" width="101" height="35" /></td>
            <td align="right" background="${pageContext.request.contextPath }/image/d02.jpg"><img src="${pageContext.request.contextPath }/image/d_r7_c14.jpg" width="94" height="35" /></td>
          </tr>
          
          
          
          <!-- 新闻部分 -->
       
       
       
       <c:forEach var="news" items="${requestScope.nlist}" begin="0" end="7">
         <tr>
            <td height="26" colspan="2"> &nbsp;<a href="detailnews_lw?newsId=${news.news_id}" class="dong06">${news.news_title }&nbsp;&nbsp;&nbsp;<font color="#ff0000">[${news.news_date }]</font></a></td>
          </tr>
          <tr>
            <td colspan="2"><img src="${pageContext.request.contextPath }/image/d03.jpg" width="352" height="1" /></td>
          </tr> 
        </c:forEach>
         
           <tr>
            <td colspan="2" align="right"><a href="shownewslist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/d_r11_c15.jpg" width="51" height="33" border="0" /></a></td>
          </tr>
          
         <!-- 右侧四个图片 --> 
        
        </table></td>
        <td align="right" valign="top"><table width="268" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><a href="detailproduct_lw?proId=1"><img src="${pageContext.request.contextPath }/image/d_r11_5_r1_c1.jpg" width="268" height="63" border="0" /></a></td>
          </tr>
          <tr>
            <td><a href="detailproduct_lw?proId=2"><img src="${pageContext.request.contextPath }/image/d_r11_5_r3_c1.jpg" width="268" height="59" border="0" /></a></td>
          </tr>
          <tr>
            <td><a href="detailproduct_lw?proId=3"><img src="${pageContext.request.contextPath }/image/d_r11_5_r4_c1.jpg" width="268" height="61" border="0" /></a></td>
          </tr>
          <tr>
            <td><a href="detailproduct_lw?proId=4"><img src="${pageContext.request.contextPath }/image/d_r11_5_r5_c1.jpg" width="268" height="64" border="0" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td background="${pageContext.request.contextPath }/image/d_r11_8.jpg"><img src="${pageContext.request.contextPath }/image/d_r13_c1.jpg" width="160" height="27" /></td>
          <td align="right" background="${pageContext.request.contextPath }/image/d_r11_8.jpg"><a href="showproductlist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/d_r13_c21.jpg" width="66" height="27" border="0" /></a></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
        
        <c:forEach var="image1" items="${requestScope.prolist}" begin="0" end="3">
        	<td width="25%" align="center">
        		<a href="detailproduct_lw?proId=${image1.pro_id }">
        			<img src="${pageContext.request.contextPath }/${image1.pro_image}" width="143" height="112" border="0" />
        		</a>
        	</td>
        </c:forEach>
        
        </tr>
		 <tr>
		 
          <c:forEach var="image2" items="${requestScope.prolist}" begin="4" end="7">
        	<td width="25%" align="center">
        		<a href="detailproduct_lw?proId=${image2.pro_id }">
        			<img src="${pageContext.request.contextPath }/${image2.pro_image}" width="143" height="112" border="0" />
        		</a>
        	</td>
        </c:forEach>
        
        </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="25%" background="${pageContext.request.contextPath }/image/d_r11_11_r1_c15.jpg"><img src="${pageContext.request.contextPath }/image/d_r11_11_r1_c1.jpg" width="185" height="27" /></td>
          <td width="25%" background="${pageContext.request.contextPath }/image/d_r11_11_r1_c15.jpg">&nbsp;</td>
          <td width="25%" background="${pageContext.request.contextPath }/image/d_r11_11_r1_c15.jpg"><img src="${pageContext.request.contextPath }/image/d_r11_11_r1_c21.jpg" width="160" height="27" /></td>
          <td width="25%" align="right" background="${pageContext.request.contextPath }/image/d_r11_11_r1_c15.jpg"></td>
        </tr>
        <tr>
          <td width="50%" colspan="2" bgcolor="#FCFCFC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="28" height="29"><img src="${pageContext.request.contextPath }/image/d_r11_12_r1_c1.jpg" width="28" height="32" /></td>
              <td width="100" align="center" class="d06" style="font-weight: bold">&nbsp;业务专线：</td>
              <td class="d06" style="font-weight: bold">010-88888888</td>
            </tr>
            <tr>
              <td width="28" height="29"><img src="${pageContext.request.contextPath }/image/d_r11_12_r1_c1.jpg" width="28" height="32" /></td>
              <td width="100" align="center" class="d06">&nbsp;<span style="font-weight: bold">售后服务：</span></td>
              <td class="d06" style="font-weight: bold">010-66666666</td>
            </tr>
            <tr>
              <td width="28" height="29"><img src="${pageContext.request.contextPath }/image/d_r11_12_r1_c1.jpg" width="28" height="32" /></td>
              <td width="100" align="center" class="bold">&nbsp;<span class="d06" style="font-weight: bold">传&nbsp;&nbsp;真：</span></td>
              <td class="d06" style="font-weight: bold">010-88888888</td>
            </tr>
          </table></td>
          <td width="50%" colspan="3" bgcolor="#FCFCFC"><table width="287" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="97" height="47" align="center"><img src="${pageContext.request.contextPath }/image/f1.gif" width="90" height="33" /></td>
              <td width="97" height="47" align="center"><img src="${pageContext.request.contextPath }/image/f2.gif" width="88" height="33" /></td>
              <td width="97" height="47" align="center"><img src="${pageContext.request.contextPath }/image/f3.gif" width="90" height="33" /></td>
            </tr>
            <tr>
              <td width="97" height="47" align="center"><img src="${pageContext.request.contextPath }/image/d_r11_13_r6_c13.jpg" width="90" height="33" /></td>
              <td width="97" height="47" align="center"><img src="${pageContext.request.contextPath }/image/d_r11_13_r1_c1.jpg" width="90" height="33" /></td>
              <td width="97" height="47" align="center"><img src="${pageContext.request.contextPath }/image/d_r11_13_r1_c7.jpg" width="88" height="33" /></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    <td width="175" valign="top" bgcolor="#FCFCFC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top"><a href="showproductlist_lw?pageNo=1"><img src="${pageContext.request.contextPath }/image/d_r11_6.jpg" width="175" height="42" border="0" /></a></td>
      </tr>
      <tr>
        <td height="590">
  <!-- 指向链接图片url -->
<div id=demo style=overflow:hidden;height:600;width:180;background:#214984;color:#ffffff>
<div id=demo1>
<!-- 定义图片 -->
      <c:forEach var="image3" items="${requestScope.prolist}">
         <img src="${pageContext.request.contextPath }/${image3.pro_image }" width="100%" height="107" border="0" align="middle"/>
      </c:forEach> 
             
</div>
<div id=demo2></div>
       
      </div>   
         
         <script>
var speed=30;
demo2.innerHTML=demo1.innerHTML;
demo.scrollTop=demo.scrollHeight;
function Marquee(){
if(demo1.offsetTop-demo.scrollTop>=0)
demo.scrollTop+=demo2.offsetHeight;
else{
demo.scrollTop--;
}
}
var MyMar=setInterval(Marquee,speed);
demo.onmouseover=function() {clearInterval(MyMar)}
demo.onmouseout=function() {MyMar=setInterval(Marquee,speed);}
</script>

</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800" height="29" align="center" background="${pageContext.request.contextPath }/image/d_r11_15.jpg"></td>
  </tr>
</table>


</body>
</html>

