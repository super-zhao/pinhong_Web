<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>留言本</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="留言本">
		<link href="img/1/jd100.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/json.js"></script>
    </head>
	<body background=img/1/bookbg.gif leftmargin='0' topmargin='3' id='body1'
		marginwidth='0' marginheight='0'>
		<div align='center'>
			<IMG src=img/1/welcome.jpg>
		</div>
		<div align='center'>
			<table width='750' border='0' cellspacing='1' cellpadding='4'
				align='center'>
				<tr>
					<td height='20' colspan='2' align='right' class='unnamed2'>
						<marquee onMouseOut=start(); onMouseOver=stop(); scrollamount=3>
							<b><font color=#000099>欢迎您使用&nbsp;留言本&nbsp;</font> </b>
						</marquee>
					</td>
				</tr>

			</table>
			<div align='center' style='width=750'>
				<div align='left'>
					<table width='%' height='20' border='0' cellpadding='0'
						cellspacing='0'>
						<tr>							
							<td width='11' background='img/1/titlemu_1.gif'></td>
							<td width='*' background='img/1/titlemu_2.gif'>
								<a href='${pageContext.request.contextPath}/initindex_lw' class=jdmenu ><b>返回首页</b>
								</a>
								<div align='center'>
									<a href='newMessage.jsp' class=jdmenu><b>新留言</b>
									</a>
								</div>
									
							</td>
							<td width='12' background='img/1/titlemu_3.gif'></td>
						</tr>
					</table>
				</div>
			</div>
			<form name='form' method='post' action='index.asp'
				onSubmit='submitonce(this)'>
				<TABLE width='750' border=0 align='center' cellPadding=0
					cellSpacing=0 borderColor=#111111 style='BORDER-COLLAPSE: collapse'>
					<TBODY>
						<TR>
							<TD width='2%'>
								<IMG src='img/1/T_left.gif' border=0>
							</TD>
							<TD width='96%' background='img/1/Tt_bg.gif'></TD>
							<TD width='2%'>
								<IMG src='img/1/T_right.gif' border=0>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE width='750' height=51 border=1 align=center cellPadding=3
					cellSpacing=0 class='jd_tab' id="table1"
					style='border-collapse:collapse;word-wrap:break-word;'>
					<TBODY>
						<TR class=jd_titlemu>
							<TD width='5%' class='jd_tab'>
								<div align='center'>
									回复
								</div>
							</TD>
							<TD width='50%' class='jd_tab'>
								<div align='center'>
									标题
								</div>
							</TD>
							<TD width='20%' class='jd_tab'>
								<div align='center'>
									作者
								</div>
							</TD>
							<TD width='25%' class='jd_tab'>
								<div align='center'>
									时间
								</div>
							</TD>
						</TR>
						<c:forEach var="dop" items="${requestScope.pb.data}">
						<TR class=unnamed1>
							<TD width='6%' height='25' align=middle valign='top'
								class='jd_tab'>
								${dop.num }
							</TD>
							<TD width='53%' height='25' align=left valign='top'
								class='jd_tab'>
								<a
									href='hurui/Rever?messageID=${dop.id }&pageNo=${requestScope.pb.pageNo}'>
									<img src='img/1/jd-to.gif' border='0'>&nbsp;${dop.title }
								</a>
							</TD>
							<TD width='20%' height='25' align=middle valign='top'
								class='jd_tab'>
								<font color=#666666>${dop.username }</font>
							</TD>
							<TD width='14%' height='25' align=left valign='top'
								class='jd_tab'>
								<font color=#666666>${dop.time }</font>
							</TD>
						</TR>
						</c:forEach>
						</TBODY>
						<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
				总共【${requestScope.pb.totalPage }】页 &nbsp;&nbsp;
				${requestScope.pb.pageNo }/${requestScope.pb.totalPage }&nbsp;&nbsp; 
				<a href="${pageContext.request.contextPath }/messageBoard.jsp?pageNo=1">首页</a>
				
				<c:choose>
				  <c:when test="${requestScope.pb.pageNo>1}">
				   <a href="${pageContext.request.contextPath }/messageBoard.jsp?pageNo=${requestScope.pb.pageNo-1 }">上一页</a>
				  </c:when>
				  <c:otherwise>
				     上一页
				  </c:otherwise>
				</c:choose>
				
				 <c:choose>
				  <c:when test="${requestScope.pb.pageNo<requestScope.pb.totalPage}">
				   <a href="${pageContext.request.contextPath }/messageBoard.jsp?pageNo=${requestScope.pb.pageNo+1 }">下一页</a>
				  </c:when>
				  <c:otherwise>
				     下一页
				  </c:otherwise>
				</c:choose>
			
				 
				  <a href="${pageContext.request.contextPath }/messageBoard.jsp?pageNo=${requestScope.pb.totalPage }">尾页</a>			</td>
			</tr>
				</TABLE>
				<TABLE width='750' border=0 align='center' cellPadding=0
					cellSpacing=0 style='BORDER-COLLAPSE:collapse'>
					<TBODY>
						<TR>
							<TD>
								<IMG src='img/1/T_bottomleft.gif' border=0>
							</TD>
							<TD width='100%' background='img/1/T_bottombg.gif'></TD>
							<TD>
								<IMG src='img/1/T_bottomright.gif' border=0>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE width='10' border=0 align='center' cellPadding=0
					cellSpacing=0>
					<TR>
						<TD height=5>&nbsp;</TD>
					</TR>
				</TABLE>
			</form>
		</div>

	</body>
</html>