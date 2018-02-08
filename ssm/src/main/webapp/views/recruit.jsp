<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>招聘</title>

<style type="text/css">
#head_img {
	margin: 0 auto;
	text-align: center;
	text-align: center;
}

#table {
	text-align: center;
	margin: 0 auto;
	width: 80%;
	height: 230px;
	border: none;
}

.table_td {
	width: 50%;
	height: 80px;
	font-size: 25px;
	font-family:"微软雅黑";
}

.td_in {
	width: 30%;
	height: 35%;
}

p {
	margin-right: 66%;
}

#zw_requirement {
	margin-top: -10px;
}

#btn {
	text-align: center;
}

#btn_in {
	width: 150px;
	height: 40px;
	font-size: 25px;
	background-color: #cccccc;
}
</style>


</head>
<body>
	<div>
		<div id="head_img">
			<img id="head_img1" src="../glsc/img/0000.png">
		</div>

		<form method="get" action="http://localhost:8080/ssm/addRecruitment">
			<table id="table" border="1px" cellpadding="0" cellspacing="0">
				<tr>
					<!--第一行 -->
					<td class="table_td">职位名称：<input id="zw_name" class="td_in"
						type="text" name="name">
					</td>
					<td class="table_td">招聘人数：<input id="zw_num" class="td_in"
						type="text" name="num">
					</td>

				</tr>

				<tr>
					<!--第二行 -->
					<td class="table_td">职位类别：<input id="zw_type" class="td_in"
						type="text" name="type">
					</td>
					
					<td class="table_td">职位薪资：<input id="zw_salary" class="td_in"
						type="text" name="salary">
					</td>
					

				</tr>

				<tr>
					<!--第三行 -->
					<td class="table_td">工作地点：<input id="zw_address" class="td_in"
						type="text" name="address">
					</td>

					<td class="table_td">工作待遇：<input id="zw_duty" class="td_in"
						type="text" name="welfare">
					</td>
				</tr>

			
				
				
				<tr>
					<!--第三行 -->
					<td class="table_td">职位要求：
					<textarea rows="8" cols="29" name="requirement" id="contentText"style="vertical-align:top"></textarea>
					</td>

					<td class="table_td">工作职责：
					<textarea rows="8" cols="29" name="duty" id="contentText"style="vertical-align:top"></textarea>
					</td>

				</tr>
			</table>
			<div id="btn">
			<input id="btn_in" type="submit" value="确定">
		</div>
		</form>
		
	</div>


</body>
</html>