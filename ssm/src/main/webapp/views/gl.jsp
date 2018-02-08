<span style="font-size:12px;"><span style="font-size:14px;">
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >


<style type="text/css">  

#bdimg{width: 90px;height: 50px;margin-left: 10px;}

table {  
   *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0;
    width: 80%;  
}  

#tr {  
    height: 30px;  
    border: 1px solid red;  
text-align:center;
vertical-align:middle;
}  


.bordered {
    border: solid #ccc 1px;

     
}

.bordered tr:hover {
    background:#ffccff;
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
    text-align: left;    
}

.bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
}


.bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}


</style>  

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>


    <br>  
    <br>  
    <table align="center" class="bordered">  
    <thead id="thead">
        <tr id="tr">  
            <th>  
              	序号
            </th>  
            <th>  
             	作者
            </th>  
            <th>  
               	标题 
            </th>  
            <th>  
                                        时间
            </th>  
            
            <th>  
               	图片 
            </th>  
            
            <th>  
                                        内容
            </th>  
            <th colspan="2">  
                <img alt="logo" src="http://localhost:8080/ssm/glsc/img/0000.png" id="bdimg">
            </th>  
            
        </tr>  
  </thead>
   <c:forEach items="${newsList}" var="n">       
        <tr >
            <td>  
            <c:out value="${n.newId}" />  
            </td>  
            <td>  
               <c:out value="${n.author}" />
            </td>  
            <td>  
                <c:out value="${n.title}" />
            </td>  
            <td>  
       			<fmt:formatDate value="${n.date}" type="both"/> 
            </td>  
            <td>  
                <img  src="${n.image}"  width="90" height="90" />
            </td>  
            <td>  
                <c:out value="${n.content}" />
            </td> 
            <td>  
               <a href="selectById?id=${n.newId}">修改</a> 
            </td> 
            <td>  
               <a href="deleteById?id=${n.newId}" id="waitWork">删除</a>  
  			</td> 
        </tr>  
        </c:forEach>  
    </table>  
    
 

</body>

</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
</span></span>  