<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻上传</title>

<link rel="stylesheet" type="text/css" href="glsc/css/sc.css">
<script type="text/javascript" src="glsc/js/sc.js"></script>

</head>



<body ng-controller="Aaa">
	<div>

		<div id="head_img">
			<img id="head_img1" src="glsc/img/0000.png">
		</div>
     <form action="http://localhost:8080/ssm/updateNew" method="post"  enctype="multipart/form-data">
     		
				
				<input hidden="true" name="newId" type="text" value="${New.newId}">
			
			<div id="author">
				<span>作者：</span> 
				<input id="author_t" name="author" type="text" value="${New.author}">
			</div>

			<div id="title">
				<span>题目：</span> 
				<input id="title_t" name="title" type="text" value="${New.title}">
			</div>

			<div id="date">
				<span>时间：</span> 
				<input id="date_t" name="date" type="date" value="${New.date}">
			</div>

			<div class="container" id="image" >
				<span>图片：</span> 
				<input type="file" name="file" multiple id="image_t" />
			</div>
			<div id="content">
				<div id="content_t" >
					<p>内容：</p>
			</div>

				<textarea cols="75" rows="10" name="content" >${New.content}</textarea>
			</div>

			<div id="btn">
				<input id="btn_b" type="submit" value="确定">
			</div>
			<div>
				<br>
				<br>
			</div>
	</form>

  </div>
</body>
</html>