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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript">
		//删除提示
		function del(userid){
			 if(confirm("确定删除此用户?")){
				window.location.href = "${pageContext.request.contextPath }/zcUserServlet?method=removeUser&user_id="+userid;
			} 
		}
		
		
		 var text = "";
		
		 $(function(){
			/* 全选按钮 */
			 $("#allItem").click(function(){
				
				if($("#allItem").attr("checked")){
					$("input[name='item']").each(function(){
						$("input[name='item']").attr("checked",true);
					});
				} else{
					$("input[name='item']").each(function(){
						$("input[name='item']").attr("checked",false);
					});
				}
			});
			
			 $("#removebtn").click(function(){
					delAll();
					$("#form1").submit();
				});
		}); 
		
			/*  批量删除按钮  
			 function delAll(){
				 var dellist = document.getElementsByName("item");
			       
			        //遍历所有的checkbox，将被选中的checkbox的value组合成一个字符串
			        for (var i = 0; i < dellist.length; i++) {
			            if (dellist[i].checked) {
			                text += dellist[i].value + ":";
			            }
			        }   
			}
			document.getElementById("form1").action="${pageContext.request.contextPath}/zcUserServlet?method=removeSelUser&user_id_str="+text; */
		</script>
</head>
<body>
		<table width="100%" height="100%" cellpadding="4" cellspacing="1"
			class="tableborder" id="table3">
			
		    <td width="42%"><form id = "form1"name="form1" action="zcUserServlet?method=removeSelUser"  method="post">
			<tr>
				<td colspan="4" class="header">
					用户管理
				</td>
			</tr>
			<tr>
			  <td align="center" class="altbg1">
		        <input type="checkbox" name="checkbox" id="allItem" ></td>
				<td width="34%" align="center" class="altbg1">
					<b>用户名</b>				</td>
				<td width="5%" align="center" class="altbg1">
					<b>身份代码</b>				</td>
				<td width="4%" align="center" class="altbg1">
					<b>
				  <INPUT  
							type="submit" id = "removebtn"  value="删除"> </b>
			  </td>
			</tr>
			<c:forEach var="list" items="${page.data}">
			<tr>
			  <td align="center" class="altbg2"><input name="item" type="checkbox" id="item" value="${list.user_id}" ></td>
				<td align="center" class="altbg2">
					${list.username}
				</td>
				<td class="altbg2" align="center">
					${list.user_id} 
				</td>
				<td class="altbg2" align="center">
					<a href="javascript:del(${list.user_id})">删除</a>
				</td>
			</tr>
			
		</c:forEach>


<tr><td class="altbg2" colspan="7" rowspan="2" align="right">
				总共【${page.totalPage}】页 &nbsp;&nbsp;${page.pageNo}/${page.totalPage}&nbsp;&nbsp; <a href="zcUserServlet?method=showPage&pageNo=1">首页</a> <c:choose>
					<c:when test="${requestScope.page.pageNo > 1}">
						<a href="zcUserServlet?method=showPage&pageNo=${page.pageNo-1}">上一页</a>
					</c:when>
					<c:otherwise>
						上一页
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${page.pageNo < page.totalPage}">
						<a href="zcUserServlet?method=showPage&pageNo=${page.pageNo+1}">下一页</a>
					</c:when>
					<c:otherwise>
						下一页
					</c:otherwise>
				</c:choose>
				  <a href="zcUserServlet?method=showPage&pageNo=${page.totalPage}">尾页</a>			</td>
			</tr>

	
			
</table>
</body>
</html>