<span style="font-size: 12px;"><span style="font-size: 14px;">
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<style type="text/css">
#bdimg {
	width: 90px;
	height: 50px;
	margin-left: 10px;
}

table {
	*border-collapse: collapse; /* IE7 and lower */
	border-spacing: 0;
	width: 100%;
}

#tr {
	height: 30px;
	border: 1px solid red;
	text-align: center;
	vertical-align: middle;
}

.bordered {
	border: solid #ccc 1px;
}

.bordered tr:hover {
	background: #ffccff;
	-o-transition: all 0.1s ease-in-out;
	-webkit-transition: all 0.1s ease-in-out;
	-moz-transition: all 0.1s ease-in-out;
	-ms-transition: all 0.1s ease-in-out;
	transition: all 0.1s ease-in-out;
}

.bordered td, .bordered th {
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	padding: 10px;
	text-align: center ;
}

.bordered th {
	background-color: #dce9f9;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc),
		to(#dce9f9));
	background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: -moz-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: -ms-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: -o-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: linear-gradient(top, #ebf3fc, #dce9f9);
	-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	border-top: none;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
}
.th1{
	width:6%;
}
.th2{
	width:24%;
}
.bordered tr:last-child td:first-child {
	-moz-border-radius: 0 0 0 6px;
	-webkit-border-radius: 0 0 0 6px;
	border-radius: 0 0 0 6px;
}
#table1{
	
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>招聘管理</title>
</head>
<body>


	<br>
	<br>
	<table align="center" class="bordered" text-align="center">
		<thead id="thead">
			<tr id="tr">
				<th class="th1">职位名称：</th>
				<th class="th1">职位类别：</th>
				<th class="th1">工作地点：</th>
				<th class="th1">招聘人数：</th>
				<th class="th1">更新日期：</th>
				<th class="th1">薪资待遇：</th>
				<th class="td2">工作职责：</th> 
				<th class="td2">职位要求：</th>
				<th class="td2">工作待遇：</th> 
				<th colspan="2"><img alt="logo" src="http://localhost:8080/ssm/glsc/img/0000.png"
					id="bdimg"></th>
			</tr>
		</thead>
		<c:forEach items="${recruitmentList}" var="r">
			<tr>
	            <td>  
	           	 <c:out value="${r.name}" />  
	            </td>
	            <td>  
	           	 <c:out value="${r.type}" />  
	            </td>
	            <td>  
	           	 <c:out value="${r.address}" />  
	            </td>
	            <td >  
	           	 <c:out value="${r.num}"  />  
	            </td>
	            <td>  
	           	 <fmt:formatDate value="${r.date}" type="date"/>  
	            </td>
	            <td>  
	           	 <c:out value="${r.salary}" />  
	            </td>
	            <td>  
	           	 	<textarea  cols="50" rows="10" readonly="readonly" >${r.duty}</textarea>
	            </td>
	            <td>  
	           	 	<textarea cols="50" rows="10" readonly="readonly" >${r.requirement}</textarea>  
	            </td>
	            <td>  
	           		<textarea cols="40" rows="10" readonly="readonly" >${r.welfare}</textarea> 
	            </td>
	            <td>  
		         <a href="selectRecruitmentById?id=${r.rId}">修改</a> 
		        </td> 
		        <td>  
              	 <a href="deleteRecruitmentById?id=${r.rId}" id="waitWork">删除</a>  
  				</td> 
			</tr>  
		</c:forEach>   
	</table>



</body>

		</html>
</span><span style="font-size: 24px; color: rgb(255, 0, 0);"> </span></span>
