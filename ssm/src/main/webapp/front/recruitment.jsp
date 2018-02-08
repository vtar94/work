<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>招聘</title>
	<link rel="stylesheet" href="css/head1.css">
    <link rel="stylesheet" href="css/zhaopin.css">
    <link rel="stylesheet" href="xin/css/footer.css">

</head>
<body>
	<div class="box">
		<header>
		    <ul id="ull">
		        <li class="ulword">
		            <div><a href="me.html.html">登录</a></div>
		        </li>
		        <li class="ulword">
		            <div><a href="me.html.html">关于我们</a></div>
		        </li>
		        <li class="ulword">
		            <div><a href="news.html#jjfa">解决方案</a></div>
		        </li>

		        <li class="ulword">
		            <div><a href="shipin.html">视频中心</a></div>
		        </li>
		        <li class="ulword">
		            <div><a href="news.html">新闻中心</a></div>
		        </li>
		        <li class="ulword">
		            <div><a href="index.html#dxal">典型案例</a></div>
		        </li >
		        <li class="ulword">
		            <div><a href="xin/cehui.html">产品服务</a></div>
		            <dl>
		                <dd ><a href="xin/cehui.html">测绘技术</a></dd>
		                <dd><a href="xin/ruanjian.html">软件开发</a></dd>
		                <dd ><a href="xin/dili.html">地理信息</a></dd>
		                <dd ><a href="xin/xitongjicheng.html">系统集成</a></dd>
		                <dd ><a href="xin/xunixianshi.html">虚拟现实</a></dd>
		            </dl>
		        </li>
		        <li class="ulword">
		            <div><a href="index.html">首页</a></div>
		        </li>
		        <li>
		            <img src="images/img/LOGO.png"id="img">
		        </li>
		    </ul>
		</header>
		<div id="lunbo">
		    <div id="imgbox">
		        <div class="img" id="img1"><img src="images/1.jpg" /></div>
		        <div class="img" id="img2"><img src="images/2.jpg" /></div>
		        <div class="img" id="img3"><img src="images/3.jpg" /></div>
		        <div class="img" id="img4"><img src="images/4.png" /></div>
		        <div class="img" id="img5"><img src="images/1.jpg" /></div>
		    </div>
		    <div id="labbox">
		        <div class="lab lab1"></div>
		        <div class="lab lab2"></div>
		        <div class="lab lab3"></div>
		        <div class="lab lab4"></div>
		        <div class="lab lab5"></div>
		    </div>
		</div>
		
		<div class="container">
			<table class="table table-hover table-expandable"id="table">
                <thead>
                    <tr class="btop">
                        <th>职位名称</th>
                        <th>职位类别</th>
                        <th>工作地点</th>
                        <th>薪资</th>
                        <th>人数</th>
                        <th>更新时间</th>
                        <th>展开</th>
                    </tr>
                </thead>
            </table>
		</div>
		<div class="bottom-bot"style="">
		    <div class="bottom-01">
		        <div class="bottom-bot-01">
		            <div class="bottom-bot-02 linkjj jj-z">
		                <a href="me.html">网站地图</a> | <a href="me.html">联系我们</a> | <a href="#">隐私保护</a> | <a href="#">法律声明</a>
		            </div>
		            <div class="bottom-bot-03"style="color: #fff">
		                Copyright © 2015 廊坊数字空间科技有限公司 All Rights Reserved. 冀ICP备15019216号
		            </div>
		        </div>
		    </div>
		</div>
	</div>
	<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/recruitment.js"></script>
	<script src="js/ajax.js"></script>
	<script type="text/javascript">
		ajax_all_Filed("true", "false", "GET", "http://localhost:8080/ssm/getAllRecruitment", "json", "", myfunc);
	</script>
</body>
</html>