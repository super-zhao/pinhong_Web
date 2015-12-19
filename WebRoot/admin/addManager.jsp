<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style_admin.css">
		<script type="text/javascript" src = "${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript">

			$(document).ready(
					function(){
						var check1 = false;
						var check2 = false;
						var check3 = false;
						//alert(check);
						$("#userName").blur(
								function userName(){
									if($("#userName").val()==""){
										$("#checkName").html("<img src = '${pageContext.request.contextPath }/img/error.png'>     请输入用户名!");
										check1 = false;
									}else{
									 $.get("${pageContext.request.contextPath }/zcAdminServlet",{method:"checkName",username:$("#userName").val()},function(data){
										if(data=="用户名可用!"){
										 $("#checkName").html("<img src = '${pageContext.request.contextPath }/img/ok.png'>");
										 check1 = true;
										}else{
										 $("#checkName").html("<img src = '${pageContext.request.contextPath }/img/error.png'>     用户名被占用!");
										 check1 = false;
										}
									}); 
									}
								});
						$("#password").blur(
								function password(){
									if($("#password").val()==""){
										$("#passwordEmpty").html("<img src = '${pageContext.request.contextPath }/img/error.png'>     请输入密码!");
										check2 = false;
									}else{
								$("#passwordEmpty").html("<img src = '${pageContext.request.contextPath }/img/ok.png'>");
									check2 = true;
							}
						});
						//判断两次密码是否一致
						$("#confirmpassword").blur(
								function confirmp(){
									if($("#confirmpassword").val()==""){
										$("#checkPassword").html("<img src = '${pageContext.request.contextPath }/img/error.png'>     请再次输入密码!");
										check3 = false;
									}else{
										if($("#password").val()!=$("#confirmpassword").val()){
											$("#checkPassword").html("<img src = '${pageContext.request.contextPath }/img/error.png'>     两次密码输入不一致!");
											check3 = false;
										}else{
											$("#checkPassword").html("<img src = '${pageContext.request.contextPath }/img/ok.png'>");
											check3 = true;
										}
									}
									
						});
						
						$("#submitbtn").click(
								function(){
									if(!(check1==true&&check2==true&&check3==true)){
										alert("请完善信息!");
									}else{
										$("#form1").submit();
										alert("管理员添加成功!");
									}
								});
					});
		</script>
		
	</head>

	<body>
		<form id="form1" name="form1" action="${pageContext.request.contextPath }/zcAdminServlet?method=doAdd" method="post">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<input type="hidden" name="action" value="save" />
				<tr>
					<td colspan="12" class="header">
						管理员-添加
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						管理员名称：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="userName" size="34" id = "userName" placeholder="用户名">
						<span id = "checkName"></span>
					</td>
					
						
					
				</tr>
				<tr>
					<td class="altbg1">
						密&nbsp; 码：
					</td>
					<td class="altbg2" colspan="11">
						<input type="password" name="password" size="34" id = "password" placeholder="密码">
						<span id = "passwordEmpty"></span>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						确认密码：
					</td>
					<td class="altbg2" colspan="11">
						<input name="confirmpassword" size="34" type="password" id = "confirmpassword" placeholder="确认密码">
						<span id = "checkPassword"></span>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<input type="button" value="提交" name="B1" 
							id="submitbtn">
						&nbsp;
						<input type="reset" value="重置" name="B2">
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>