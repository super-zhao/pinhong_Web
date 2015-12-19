<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>控制面板</title>
		<style type="text/css"> 
	.menutitle{ cursor:pointer; margin-bottom: 0px; background-image=url('images/menu_1.gif');color:#FFFFFF; width:158px; text-align:center; font-weight:bold; background-color:#698CC3; padding-left:0px; padding-right:0px; padding-top:2px; padding-bottom:2px }}
	.submenu{ margin-bottom: 0em; }
	.cn { FONT-SIZE: 9pt; COLOR: #006599; FONT-FAMILY: 宋体 }
</style>

		<script language="javascript" type="text/javascript">
if (document.getElementById){ 
document.write('<style type="text/css">\n')
document.write('.submenu{display: none;}\n')
document.write('</style>\n')
}

function SwitchMenu(obj){
	if(document.getElementById){
	var el = document.getElementById(obj);
	var ar = document.getElementById("masterdiv").getElementsByTagName("span"); 
		if(el.style.display != "block"){ 
			for (var i=0; i<ar.length; i++){
				if (ar[i].className=="submenu") 
				ar[i].style.display = "none";
			}
			el.style.display = "block";
		}else{
			el.style.display = "none";
		}
	}
}

function killErrors() {
return true;
}

window.onerror = killErrors;

function exitMethod() {
	 if(confirm("是否确认退出?")){
    		 window.location="${pageContext.request.contextPath }/zcAdminServlet?method=AdminOut";
    		 //self.localtion.href = "${pageContext.request.contextPath }/index.jsp";
    	 }
}
</script>

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style_admin.css">
		<base target="main">
	</head>

	<body topmargin="0" leftmargin="2" rightmargin="2" bottommargin="2"
		style="background-color: #698CC3">
		<div id="masterdiv">
			<table border="0" width="158" id="table1" cellpadding="4"
				style="border-collapse: collapse">
				<tr>
					<td>
						<font color="#FFFFFF"><b>系统后台管理面板</b>
						</font>
					</td>
				</tr>
				<tr>
					<td>
						<p align="center">
							<font color="#FFFFFF">[<a target="_parent"
								href="${pageContext.request.contextPath }/zcAdminServlet?method=AdminOut"><font color="#FFFFFF">安全退出</font>
							</a>] [<a target="_parent" href="${pageContext.request.contextPath }/initindex_lw"><font color="#FFFFFF">返回首页</font>
							</a>]</font>
					</td>
				</tr>
			</table>
			<div class="menutitle" onClick="SwitchMenu('sub1')">
				.系统管理
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub1">
				<table cellspacing="1" cellpadding="4" width="158"
					class="tableborder">
					<TR class=altbg1>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							&nbsp;&nbsp;
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="../admin/addManager.jsp">添加管理员</a>
						</TD>
					</TR>
					<TR class=altbg1>
						<TD height=25 width="100%" align="center"  bgcolor="#D6E0EF">
							&nbsp;&nbsp;
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="${pageContext.request.contextPath }/zcUserServlet?method=showPage&pageNo=1">用户管理&nbsp;&nbsp;</a>
						</TD>
					</TR>
				</table> </span>

			<div class="menutitle" onClick="SwitchMenu('sub8')">
				.新闻管理
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub8">
				<TABLE cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addNews.jsp">添加新闻</a>
						</TD>
					</TR>
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="${pageContext.request.contextPath }/zcNewsServlet?method=showPage&pageNo=1">管理新闻</a>
						</TD>
					</TR>
				</table> </span>

			<div class="menutitle" onClick="SwitchMenu('sub3')">
				.商品管理
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub3">
				<TABLE cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addProduct.jsp">添加商品</a>
						</TD>
					</TR>
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="${pageContext.request.contextPath }/zcProServlet?method=showPage&pageNo=1">管理商品</a>
						</TD>
					</TR>
				</table> </span>

		</div>



	</body>

</html>