<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.team5.hurui.bean.Message"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% Message m=(Message)request.getAttribute("message");
   int meid=(Integer)request.getAttribute("mid");
   int pno=(Integer)request.getAttribute("pageNo");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>回复留言</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="留言本">
		<link href="${pageContext.request.contextPath}/img/1/jd100.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
		    function Checkreply(){
		    if(document.form.writer.value.trim()==""||document.form.content.value.trim()=="")
		       // alert("亲! 请不要空着偶");
		        return  false;
		    }else{
		        return true;
		    }
		</script>
	</head>
	<body background=${pageContext.request.contextPath}/img/1/bookbg.gif leftmargin='0' topmargin='3'
		marginwidth='0' marginheight='0'>
		<div align='center'>
			<IMG src=${pageContext.request.contextPath}/img/1/welcome.jpg>
		</div>
		<!--   留言信息显示    开始 -->
		<div align='center'>
			<table width='750' border='0' cellspacing='1' cellpadding='4'
				align='center'>
				<tr>
					<td height='20' colspan='2' class='unnamed2'>
						<marquee onMouseOut=start(); onMouseOver=stop(); scrollamount=3>
							<b><font color=#000099>欢迎您使用&nbsp;留言本&nbsp;</font> </b>
						</marquee>
					</td>
				</tr>
				<tr>
					<td height='20' class='unnamed1'>
						主题:<%=m.getTitle() %>
					<td height='20' class='unnamed1' align='right'></td>
				</tr>
			</table>
			
			<div align='center' style='width=750'>
				<div align='left'>
					<table width='%' height='20' border='0' cellpadding='0'
						cellspacing='0'>
						<tr>
							<td width='11' background='${pageContext.request.contextPath}/img/1/titlemu_1.gif'></td>
							<td width='*' background='${pageContext.request.contextPath}/img/1/titlemu_2.gif'>
								<a href='${pageContext.request.contextPath}/initindex_lw' class=jdmenu ><b>返回首页</b>
								</a>
								<div align='center'>
									<a href='../messageBoard.jsp?pageNo=<%=pno %>' class=jdmenu><b>留言</b></a>
								</div>
							</td>
							<td width='12' background='${pageContext.request.contextPath}/img/1/titlemu_3.gif'></td>
							
						</tr>
					</table>
				</div>
			</div>
			
			<TABLE width='750' border=0 align='center' cellPadding=0
				cellSpacing=0 borderColor=#111111 style='BORDER-COLLAPSE: collapse'>
				<TBODY>
					<TR>
						<TD width='2%'>
							<IMG src='${pageContext.request.contextPath}/img/1/T_left.gif' border=0>
						</TD>
						<TD width='96%' background='${pageContext.request.contextPath}/img/1/Tt_bg.gif'></TD>
						<TD width='2%'>
							<IMG src='${pageContext.request.contextPath}/img/1/T_right.gif' border=0>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE width='750' border=1 align=center cellPadding=0 cellSpacing=0
				class='jd_tab' style='border-collapse:collapse'>

				<tr>
					<td height='150' valign='top' class='jd_tab'>
						<table width='100%' height='20' border='0' cellpadding='0'
							cellspacing='0'
							style='table-layout:fixed;word-break:break-all;word-wrap:break-word;'>
							<tr>
								<td style='word-break:break-all' class=jd_title>
									&nbsp; ※&nbsp;
									<b><%=m.getTitle()%>
									</b>
								</td>
							</tr>
						</table>
						<table width='100%' border='0' cellpadding='3'
							style='table-layout:fixed;word-break:break-all;word-wrap:break-word;'>
							<tr>
								<td width='' style='word-break:break-all'>
									<div class=unnamed2>
										<%=m.getContent() %>
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height='18' valign='bottom' class='jd_tab'
						style='font-size: 12px;'>
						<font color=#666666><%=m.getAuthor() %>写于&nbsp;<%=m.getTime() %>&nbsp;
							&nbsp;</font>
					</td>
				</tr>
			</table>


			<TABLE width='750' border=0 align='center' cellPadding=0
				cellSpacing=0 style='BORDER-COLLAPSE:collapse'>
				<TBODY>
					<TR>
						<TD>
							<IMG src='${pageContext.request.contextPath}/img/1/T_bottomleft.gif' border=0>
						</TD>
						<TD width='100%' background='${pageContext.request.contextPath}/img/1/T_bottombg.gif'></TD>
						<TD>
							<IMG src='${pageContext.request.contextPath}/img/1/T_bottomright.gif' border=0>
						</TD>
					</TR>
				</TBODY>
			</TABLE>


			<table width='750' border='0' cellspacing='1' cellpadding='4'
				align='center'>
				<tr>
					<td width='' height='20' align='right' class='unnamed1'></td>
				</tr>
			</table>

			<!-- 留言显示  结束 -->
			<!-- 回复   开始 -->

            <c:forEach var="rl" items="${requestScope.replylist}">
			<TABLE width='750' border=0 align='center' cellPadding=0
				cellSpacing=0>
				<TR>
					<TD height=5 align="left" class='unnamed1'>
						回复内容：
					</TD>
				</TR>
			</TABLE>
			
			<TABLE width='750' border=0 align='center' cellPadding=0
				cellSpacing=0 borderColor=#111111 style='BORDER-COLLAPSE: collapse'>
				<TBODY>
					<TR>
						<TD width='2%'>
							<IMG src='${pageContext.request.contextPath}/img/1/T_left.gif' border=0>
						</TD>
						<TD width='96%' background='${pageContext.request.contextPath}/img/1/Tt_bg.gif'></TD>
						<TD width='2%'>
							<IMG src='${pageContext.request.contextPath}/img/1/T_right.gif' border=0>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE width='750' border=1 align=center cellPadding=0 cellSpacing=0
				class='jd_tab' style='border-collapse:collapse'>

				<tr>
					<td height='150' valign='top' class='jd_tab'>
						<table width='100%' border='0' cellpadding='3'
							style='table-layout:fixed;word-break:break-all;word-wrap:break-word;'>
							<tr>
								<td width='' style='word-break:break-all'>
									<div class=unnamed2>
										${rl.content }&nbsp;
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height='18' valign='bottom' class='jd_tab'
						style='font-size: 12px;'>
						<font color=#666666>&nbsp;${rl.username }&nbsp;写于${rl.time }&nbsp;</font>
					</td>
				</tr>
			</table>
			<TABLE width='750' border=0 align='center' cellPadding=0
				cellSpacing=0 style='BORDER-COLLAPSE:collapse'>
				<TBODY>
					<TR>
						<TD>
							<IMG src='${pageContext.request.contextPath}/img/1/T_bottomleft.gif' border=0>
						</TD>
						<TD width='100%' background='${pageContext.request.contextPath}/img/1/T_bottombg.gif'></TD>
						<TD>
							<IMG src='${pageContext.request.contextPath}/img/1/T_bottomright.gif' border=0>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<!-- 回复  结束    -->
			</c:forEach>
			<table width='750' border='0' cellspacing='1' cellpadding='4'
				align='center'>
				<tr>
					<td width='' height='20' align='right' class='unnamed1'></td>
				</tr>
			</table>
			<TABLE width='750' height=0 border=1 align=center cellPadding=0
				cellSpacing=0 class='jd_tab' style='border-collapse:collapse'>
				<TBODY>
					<TR>
						<TD height=25 class=jd_titlemu>
							<div align='center'>
								<strong>快 速 回 复 </strong>
							</div>
						</TD>
					</TR>
					<TR>
						<TD align=middle valign='top'>
						<form name='form' method='post' action='Replyadd'
									onSubmit='return Checkreply()'>
							<table width='100%' border='0' align='center' cellpadding='1'
								cellspacing='1' class='unnamed1'>
								    <input type="hidden" name="meid" value="<%=meid %>"/>
								    <input type="hidden" name="pageNo" value="<%=pno%>"/>
								<tr>
									<td width='86' align='right'>
										姓名：
									</td>
									<td width='577'>
										<input name='writer' type='text' class='input1' value=''
											size='20' maxLength=10>
										<font color='#FF0000'>*</font>
									</td>
								</tr>
								<tr>
									<td align='right'>
										标题：
									</td>
									<td>
										<input name='title' type='text' class='input1' value=''
											size='30' maxlength=50>
									</td>
								</tr>
								<tr>
								    
									<td align='right' valign='top'>
										内容：
									</td>
									<td>
										<textarea name='content' cols='80' rows='6' class='input1'></textarea>
										<br>
										&nbsp;&nbsp;
										<input type='submit' name='Submit' value=' 提 交 '>
										&nbsp;
										<br>
									</td>
								</tr>
							</table>
							</form>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</div>

		<br>
	</body>
</html>