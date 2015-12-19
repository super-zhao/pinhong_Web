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
<title>管理员-修改</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style_admin.css">

<script type="text/javascript">


		function fun_check_form(){
			if(document.form1.serialNumber.value==""){
				alert("请输入商品编号（系列）信息信息。");
				return false;
			}else if(document.form1.name.value==""){
				alert("请输入商品名称。");
				return false;
			}else if(document.form1.brand.value==""){
				alert("请输入商品商标。");
				return false;
			}else if(document.form1.model.value==""){
				alert("请输入商品型号。");
				return false;
			}else if(document.form1.price.value==""){
				alert("请输入商品价格。");
				return false;
				if(!isNaN(document.form1.price.value)){
					alert("");
					return false;
				}
			}else if(document.form1.picture.value==""){
				alert("请选择商品图片。");
				return false;
			} else{
				return true;
			}
		}
		
		
		 function   checkIsFloat(){  
          var   nc=event.keyCode;            
          if(nc < 48 || nc > 57 ){         
          		if(nc==46){  
              		var s=document.form1.price.value;  
              		for(var   i=0;i<s.length;i++){  
                 		 if(s.charAt(i)=='.'){  
                      		 event.keyCode=0;   
                      		 return;  
                  		}  
              		}  
          		}else{  
             		 event.keyCode=0;return;  
          
      			}
      		}
      }  
		</script>
</head>

<body>
	<c:set scope="request" var="pro" value="${requestScope.pro}"/>
<form name="form1" action="zcProServlet?method=update&old_pro_id=${pro.pro_id}" method="post"
	onSubmit="return fun_check_form()" enctype="multipart/form-data">
<table cellspacing="1" cellpadding="4" width="100%" class="tableborder"
	id="table3">
	<input type="hidden" name="action" value="save">
	<tr>
		<td colspan="12" class="header">修改商品信息</td>
	</tr>
	<tr>
		<td class="altbg1">商品编号（系列）：</td>
		<td class="altbg2" colspan="11"><input type="text"
			name="serialNumber" size="34" value=${pro.pro_id} ></td>
	</tr>
	<tr>
		<td class="altbg1">商品名称：</td>
		<td class="altbg2" colspan="11"><input type="text" name="name"
			size="34" value="${pro.pro_name}"></td>
	</tr>
	<tr>
		<td class="altbg1">商品商标：</td>
		<td class="altbg2" colspan="11"><input type="text" name="brand"
			size="34" value="${pro.pro_brand}"></td>
	</tr>
	<tr>
		<td class="altbg1">商品型号：</td>
		<td class="altbg2" colspan="11"><input type="text" name="model"
			size="34" value="${pro.pro_version}"></td>
	</tr>
	<tr>
		<td class="altbg1">商品价格：</td>
		<td class="altbg2" colspan="11"><input type="text" name="price"
			size="34" onkeypress="checkIsFloat();"  value="${pro.pro_price}"/></td>
	</tr>
	<tr>
		<td class="altbg1">商品图片：</td>
		<td class="altbg2" colspan="11"><input type="file" name="picture"
			size="34" value="${pro.pro_image}"></td>
	</tr>
	<tr>
		<td class="altbg1">商品介绍：</td>
		<td class="altbg2" colspan="11"><textarea rows="5" cols="60"
			name="description">${pro.pro_introduce}</textarea></td>
	</tr>


	<tr>
		<td class="altbg1"></td>
		<td class="altbg2" colspan="11"><input type="submit" value="提交"
			name="B1"  /> &nbsp; <input type="button" value="取消" onclick = "javascript:window.location.href = 'zcProServlet?method=showPage&pageNo=1'" name="B2" /></td>
	</tr>

</table>
</form>
</body>

</html>
