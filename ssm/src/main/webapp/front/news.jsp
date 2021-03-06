<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> -->
	<title>新闻中心</title>
	<link rel="stylesheet" href="css/fenye.css">
	<!-- <link href="style/bootstrap.min.css" rel="stylesheet">
	    <link href="style/animate.min.css" rel="stylesheet" media="all"> -->
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/head1.css">
	<link rel="stylesheet" href="xin/css/footer.css">
	<link rel="stylesheet" href="css/nwes.css">
	<script src="css/size.js"></script>
<style>
	.ulword dl{padding-top:25px;}
	.ulword a{
		text-decoration: none;
	    color:#fff;}
</style>
</head>

<body>
<div  class="">
	<div id="wrapper"class="header1">
        <div class="overlay"></div>
    
    
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       Menu
                    </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-home"></i>首页</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-folder"></i>产品服务</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-file-o"></i>典型案例</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-cog"></i>新闻中心</a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i>咨询中心<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">Dropdown heading</li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-bank"></i>解决方案</a>
                </li>
                <li>
                    <a href="me.html"><i class="fa fa-fw fa-dropbox"></i>关于我们</a>
                </li>
               
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
          <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
        
        </div>
	</div>
	<div class="phone-top">新闻中心 | news</div>
	<header>
	    <ul id="ull">
	        <li class="ulword">
	            <div><a href="me.html.html">关于我们</a></div>
	        </li>
	        <li class="ulword">
	            <div><a href="index.html#jjfa">解决方案</a></div>
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

	<div class="tab">
		<div>
			<img id="img1" src="images/xw.jpg" alt="">
			<h1 id="h1">公司动态</h1>
		</div>
		<ul id="ul" class="gwidth">
			<li><a href="news.html">公司动态</a></li>
			<li><a href="news-.html">新闻聚焦</a></li>
			<li><a href="shipin.html" class="b-none">视频中心</a></li>
		</ul>

	</div>
	<div class="bot">
		<div class="gwidth botDiv">
		
		</div>

		
	</div>
</div>
	<div class="bottom-bot"style="">
		<div class="bottom-01">
			<div class="bottom-bot-01">
				<div class="bottom-bot-02 linkjj jj-z">
					<a href="me.html">网站地图</a> | <a href="me.html">联系我们</a> | <a href="#">隐私保护</a> | <a href="#">法律声明</a></div>
				<div class="bottom-bot-03"style="color: #fff">
					Copyright © 2015 廊坊数字空间科技有限公司 All Rights Reserved. 冀ICP备15019216号</div>
			</div>
		</div>
	</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="menu.js"></script>
<script src="js/news.js"></script>
<script src="js/ajax.js"></script>
<script>

ajax_all_Filed("true", "false", "GET", "http://localhost:8080/ssm/showAllNews", "json", "", myFn);
</script>
</body>
</html>