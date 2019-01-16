<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by FreeHTML5.co" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />




<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="show/css/animate.css">
<link rel="stylesheet" href="show/css/icomoon.css">
<link rel="stylesheet" href="show/css/bootstrap.css">
<link rel="stylesheet" href="show/css/owl.carousel.min.css">
<link rel="stylesheet" href="show/css/owl.theme.default.min.css">
<link rel="stylesheet" href="show/css/style.css">
<script src="show/js/modernizr-2.6.2.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>

	<div id="fh5co-page">

		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
		<aside id="fh5co-aside" role="complementary" class="border">

			<h1 id="fh5co-logo">图书销售</h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<h4><li><a href="#" id="xuanyi">悬疑</a></li></h4>
					<li><a href="#" id="jisuanji">计算机科学</a></li>
					<li><a href="#" id="mingzhu">名著</a></li>
					<li><a href="#" id="wuxia">武侠</a></li>
					<li><a href="#" id="lishi">历史</a></li>
					<li><a href="#" id="junshi">军事</a></li>
				</ul>
			</nav>

		</aside>
		
		<div id="fh5co-main" class="row">
		<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">欢迎${sessionScope.username }</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="personal"><button type="button" class="btn btn-default btn-sm active">
    <span class="glyphicon glyphicon-user"></span>个人中心 
</button><span class="sr-only"></span></a></li>
        <li class="dropdown">
        </li>
      </ul>
      <div>
      <div class="col-md-8">
      <form class="navbar-form navbar-left" >
          <input type="text" class="form-control" placeholder="搜索图书" >
        <button type="button" class="btn btn-default" id="searchButton">Submit</button>
      </form>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="showCar"><button class="btn btn-info btn-sm active" type="submit"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>我的购物车</button></a></li>
      &nbsp;   <li><a href="showCar"><button class="btn btn-info btn-sm active" type="submit"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>退出登录</button></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
			<div class="fh5co-narrow-content" >
				<div class="row bs-examples" id="showBook" >
				
				</div>
			</div>
		</div>
	</div>


	<script>
	$(document).on('click','#searchButton',function(){
		var name = $(this).prev().val();
		$.ajax({
			method:"get",
			url:"searchBooks",
			data:"name="+name,
			success:function(data){
				showBook(data);
			}
		})
	});
		$(function() {
			getBook();
		})
		function getBook() {
			$.ajax({
				method : "get",
				url : "showAllBook",
				success : function(data) {
					showBook(data);
				}
			});
		}

		function showBook(data) {
			$("#showBook").empty();
			var body = $("#showBook");
			$.each(data.map.allBook,function(index,item){
				var div = $("<div></div>");
				div.addClass("col-xs-6 col-md-4");
				div.append(item.cover);
				var div1 = $("<div></div>");
				var strong = $("<strong></strong>");
				strong.addClass("J_33200653968");
				strong.append($("<em></em>").append("￥"));
				strong.append($("<i></i>").append(item.price));
				div1.append(strong);
				var h2 = $("<h5></h5>");
				h2.append(item.bookname);
				var p1 = $("<p></p>");
				p1.append(item.author);
				div.append(div1);
				div.append(h2);
				div.append(p1);
				div.append($("<button></button>").addClass(
				"btn btn-success btn-sm").append("加入购物车")
				.append("<span></span>").addClass(
						"glyphicon glyphicon-shopping-cart"));
				div.append("<br><br>");
				body.append(div);
			})
		}
		
		$(document).on("click",".btn-success",function(){
			var author = $(this).prev().prev().text();
			$.ajax({
				method:"post",
				url:"insertCar",
				data:"author="+author,
				success:function(data){
					getBook();
				}
			});
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		$("#xuanyi").click(function(){
			getBook1();
		});
		function getBook1() {
			$.ajax({
				method : "get",
				url : "showBook1",
				data: "num="+2,
				success : function(data) {
					showBook(data);
				}
			});
		}
		
		$("#jisuanji").click(function(){
			getBook2();
		});
		function getBook2() {
			$.ajax({
				method : "get",
				url : "showBook1",
				data: "num="+1,
				success : function(data) {
					showBook(data);
				}
			});
		}
		
		$("#mingzhu").click(function(){
			getBook3();
		});
		function getBook3() {
			$.ajax({
				method : "get",
				url : "showBook1",
				data: "num="+3,
				success : function(data) {
					showBook(data);
				}
			});
		}
		
		$("#wuxia").click(function(){
			getBook4();
		});
		function getBook4() {
			$.ajax({
				method : "get",
				url : "showBook1",
				data: "num="+4,
				success : function(data) {
					showBook(data);
				}
			});
		}
		
		
		$("#lishi").click(function(){
			getBook5();
		});
		function getBook5() {
			$.ajax({
				method : "get",
				url : "showBook1",
				data: "num="+5,
				success : function(data) {
					showBook(data);
				}
			});
		}
		
		$("#junshi").click(function(){
			getBook6();
		});
		function getBook6() {
			$.ajax({
				method : "get",
				url : "showBook1",
				data: "num="+6,
				success : function(data) {
					showBook(data);
				}
			});
		}
	</script>






























































































	<script src="show/js/jquery.min.js"></script>
	<script src="show/js/jquery.easing.1.3.js"></script>
	<script src="show/js/bootstrap.min.js"></script>
	<script src="show/js/owl.carousel.min.js"></script>
	<script src="show/js/jquery.stellar.min.js"></script>
	<script src="show/js/jquery.waypoints.min.js"></script>
	<script src="show/js/jquery.countTo.js"></script>
	<script src="js/main.js"></script>

</body>
</html>

