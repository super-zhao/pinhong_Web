	<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理人员-管理</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style_admin.css">
		<script type="text/javascript">
		//删除提示
		function del(proid){
			if(confirm("确定删除此商品?")){
				window.location.href = "zcProServlet?method=remove&pro_id="+proid;
			}
		}
		</script>
</head>
<body>
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<form name="form1" action="showUserList.htm" method="post">
			<tr>
				<td colspan="15" class="header">
					商品管理
				</td>
			</tr>
			<tr>
				<td align="center" class="altbg1">
					<b>商品编号</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品名称</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品商标</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品型号</b>
				</td>
				<td align="center" class="altbg1">
					<b>商品价格</b>
				</td>				
				<td align="center" class="altbg1">
					<b>修改</b>
				</td>
				<td align="center" class="altbg1">
					<b>删除</b>
				</td>
			</tr>
			<c:forEach var="list" items="${page.data}">
			<tr>
				<td rowspan="2" align="center" class="altbg2">
					${list.pro_id}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${list.pro_name}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${list.pro_brand}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${list.pro_version}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${list.pro_price}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					<a href="zcProServlet?method=updateForm&pro_id=${list.pro_id}">修改</a>
				</td>				
				<td class="altbg2" rowspan="2" align="center">
					<a href="javascript:del(${list.pro_id})">删除</a>
				</td>
			</tr>
			<tr>

			</tr>
			</c:forEach>

			
	
			<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
				总共【${page.totalPage}】页 &nbsp;&nbsp;${page.pageNo}/${page.totalPage}&nbsp;&nbsp; <a href="zcProServlet?method=showPage&pageNo=1">首页</a> 
				<c:choose>
					<c:when test="${requestScope.page.pageNo > 1}">
						<a href="zcProServlet?method=showPage&pageNo=${page.pageNo-1}">上一页</a>
					</c:when>
					<c:otherwise>
						上一页
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${page.pageNo < page.totalPage}">
						<a href="zcProServlet?method=showPage&pageNo=${page.pageNo+1}">下一页</a>
					</c:when>
					<c:otherwise>
						下一页
					</c:otherwise>
				</c:choose>
				  <a href="zcProServlet?method=showPage&pageNo=${page.totalPage}">尾页</a>			</td>
			</tr>
			
			</table>
</body>
</html>