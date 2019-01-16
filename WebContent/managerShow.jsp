<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Show</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">后台管理</a> &nbsp;&nbsp;
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">管理选项 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a id="bookManage">图书管理</a></li>
							<li role="separator" class="divider"></li>
							<li><a id="userManage">用户管理</a></li>
						</ul></li>
					<li><a href="manageToShow">回到登录</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="row bs-examples" id="showBook"></div>
	<br>
	<br>
	<div align="left" id="addButton"></div>

	<table class="table table-hover" id="table">
	</table>


	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel"></h4>
				</div>
				<div class="modal-body">
					<form action="" id="updateForm">
						<div class="form-group" align="left">
							<label for="recipient-name" class="control-label">您的账号为</label>
							<input type="text" class="form-control" id="recipient-name"
								name="username" readonly="readonly">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">请输入要修改的密码</label>
							<input type="text" class="form-control" id="recipient-name"
								name="password">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">请输入要修改的支付密码</label>
							<input type="text" class="form-control" id="recipient-name"
								name="paypass">
						</div>
					</form>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="send">Send
							message</button>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel"></h4>
				</div>
				<div class="modal-body">
					<form action="" id="updateBookForm">
						<div class="form-group" align="left">
							<label for="recipient-name" class="control-label">图书名称</label>
							<input type="text" class="form-control" id="updateBookName"
								name="bookname" readonly="readonly">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">请输入要修改的作者</label>
							<input type="text" class="form-control" id="recipient-name"
								name="author">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">请输入要修改的价钱</label>
							<input type="text" class="form-control" id="recipient-name"
								name="price">
						</div>
					</form>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="updateBtton">Send
							message</button>
					</div>
				</div>
			</div>
		</div>
	</div>


<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel"></h4>
				</div>
				<div class="modal-body">
					<form action="" id="addBookForms">
					<div class="form-group" align="left">
							<label for="recipient-name" class="control-label">图书序号</label>
							<input type="text" class="form-control" id="bookname"
								name="bookid" >
						</div>
						<div class="form-group" align="left">
							<label for="recipient-name" class="control-label">图书名称</label>
							<input type="text" class="form-control" id="bookname"
								name="bookname" >
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">图书作者</label>
							<input type="text" class="form-control" id="recipient-name"
								name="author">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">图书价钱</label>
							<input type="text" class="form-control" id="recipient-name"
								name="price">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">图书数量</label>
							<input type="text" class="form-control" id="recipient-name"
								name="account">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">图书封面</label>
							<input type="text" class="form-control" id="recipient-name"
								name="cover">
						</div>
						<div class="form-group" align="left">
							<label for="message-text" class="control-label">图书类型</label>
							<input type="text" class="form-control" id="recipient-name"
								name="bid">
						</div>
					</form>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="addTOBtton">Send
							message</button>
					</div>
				</div>
			</div>
		</div>
	</div>











	<script>
		$("#bookManage").click(function() {
			book();
		});
		$("#userManage").click(function() {
			user();
		});

		function book() {
			$.ajax({
				method : "get",
				url : "showAllBook",
				success : function(data) {
					getBooks(data);
				}

			});
		}

		function getBooks(data) {
			$("#showBook").empty();
			$("#table").empty();
			$("#addButton").empty();
			var body = $("#showBook");
			$.each(data.map.allBook,
					function(index, item) {
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
						div.append($("<button id="+"bookDelete"+"></button>")
								.addClass("btn btn-danger btn-sm").append("删除")
								.append("<span></span>").addClass(
										"glyphicon glyphicon-trash"));
						div.append("&nbsp;");
						div.append($("<button id="+"bookUpdate"+"></button>")
								.addClass("btn btn-info btn-sm").append("修改")
								.append("<span></span>").addClass(
										"glyphicon glyphicon-pencil"));
						div.append("<br><br>");
						body.append("&nbsp;");
						body.append(div);
					})
			body.append("<br><br>");
			var addButton = $('<button id="addBook"></button>');
			$("#addButton").append(
					addButton.addClass("btn btn-primary btn-lg btn-block")
							.append("新增图书"));
		}
		
		
		$(document).on('click', '#addBook', function() {
			$('#addModal').modal('show');
		});
		
		$(document).on('click', '#addTOBtton', function() {
			$.ajax({
				method : "post",
				url : "addBookss",
				data : $("#addBookForms").serialize(),
				success : function(data) {
					$('#addModal').modal('hide');
					book();
				}
			});
		});
		$(document).on('click', '#bookDelete', function() {
			var bookName = $(this).prev().prev().text();
			$.ajax({
				method : "get",
				url : "deleteBook",
				data : "bookName=" + bookName,
				success : function(data) {
					book();
				}
			});
		});

		$(document).on('click', '#bookUpdate', function() {
			var bookName = $(this).prev().prev().prev().text();
			$("#updateBookName").val(bookName);
			$('#updateModal').modal('show');
		});
		
		$(document).on('click', '#updateBtton', function() {
			$.ajax({
				method : "post",
				url : "updateBooks",
				data : $("#updateBookForm").serialize() +"&_method=put",
				success : function(data) {
					$("#updateModal").modal('hide');
					book();
				}
			});
		});
		
		

		function user() {

			$.ajax({
				method : "get",
				url : "getUserss",
				success : function(data) {
					getUsers(data);
				}
			});

		}
		function getUsers(data) {
			$("#showBook").empty();
			$("#table").empty();
			$("#addButton").empty();
			var table = $("#table");
			var tbody = $("<tbody></tbody>");
			var thead = $("<thead></thead>");
			var tr = $("<tr></tr>");
			tr.append($("<th></th>").append("序号"));
			tr.append($("<th></th>").append("账号"));
			tr.append($("<th></th>").append("密码"));
			tr.append($("<th></th>").append("支付密码"));
			thead.append(tr);
			table.append(thead);
			$.each(data.map.users, function(index, item) {
				var tr = $("<tr></tr>");
				tr.append($("<th></th>").append((index + 1)));
				tr.append($("<td></td>").append(item.username));
				tr.append($("<td></td>").append(item.password));
				tr.append($("<td></td>").append(item.paypass));
				tr.append($("<td></td>").append(
						$("<button id="+"userDelete"+"></button>").addClass(
								"btn btn-danger btn-xs").append("删除").append(
								"<span></span>").addClass(
								"glyphicon glyphicon-trash")));
				tr.append($("<td></td>").append(
						$("<button id="+"userInsert"+"></button>").addClass(
								"btn btn-info btn-xs").append("修改").append(
								"<span></span>").addClass(
								"glyphicon glyphicon-pencil")));
				tbody.append(tr);
			})
			table.append(tbody);
		}

		$(document).on('click', '#userDelete', function() {
			var username = $(this).parent().prev().prev().prev().text();
			$.ajax({
				method : "delete",
				url : "deleteUser/" + username,
				success : function() {
					user();
				}
			});
		});

		$(document).on('click', '#userInsert', function() {
			var username = $(this).parent().prev().prev().prev().prev().text();
			$("#recipient-name").val(username);
			$('#exampleModal').modal('show');
		});

		$(document).on('click', '#send', function() {
			$.ajax({
				method : "post",
				url : "update",
				data : $("#updateForm").serialize() + "&_method=put",
				success : function(data) {
					$("#exampleModal").modal('hide');
					user();
				}
			});
		});
	</script>










</body>
</html>