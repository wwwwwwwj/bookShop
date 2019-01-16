<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>E Shop Cart Widget A Flat Responsive Widget Template ::
	W3layouts</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="E Shop Cart Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Android Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.close1').fadeOut('slow', function(c) {
				$('.close1').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close2').on('click', function(c) {
			$('.close2').fadeOut('slow', function(c) {
				$('.close2').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close3').on('click', function(c) {
			$('.close3').fadeOut('slow', function(c) {
				$('.close3').remove();
			});
		});
	});
</script>
<!-- //Remove-Item-JavaScript -->

</head>

<!-- Body-Starts-Here -->
<body>

	<h1>SHOP CAR</h1>

	<!-- Content-Starts-Here -->
	<div class="container">

		<!-- Mainbar-Starts-Here -->
		<div class="main-bar">
			<div class="product">
				<h3>Product</h3>
			</div>
			<div class="quantity">
				<h3>Quantity</h3>
			</div>
			<div class="price">
				<h3>Price</h3>
			</div>
			<div class="clear"></div>
		</div>
		<!-- //Mainbar-Ends-Here -->

		<!-- Items-Starts-Here -->
		<div class="items">
			<table class="table table-hover">
				<tbody id="allGoods">
				</tbody>
			</table>


			<!-- Total-Price-Starts-Here -->
			<div class="total">
				<div class="total1">Total Price</div>
				<div class="total2" id="totalNum"></div>
				<div class="clear"></div>
			</div>
			<!-- //Total-Price-Ends-Here -->

			<!-- Checkout-Starts-Here -->
			<div class="checkout" align="right">
				<div align="right">

					<button type="button" class="btn btn-primary" id="pay"
						data-toggle="modal" data-target=".bs-example-modal-sm">结算</button>
					&nbsp;&nbsp;&nbsp;&nbsp; <a href="carToShow"><button
							type="button" class="btn btn-primary" id="pay"
							data-toggle="modal" data-target=".bs-example-modal-sm">回到首页</button></a>
				</div>
			</div>
			<!-- //Checkout-Ends-Here -->

		</div>




		<div class="modal fade bs-example-modal-sm" tabindex="-1"
			role="dialog" aria-labelledby="mySmallModalLabel" id="exampleModal">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<form action="verifyPayPass" method="post">
						<div class="form-group" align="left">
							<div>
								<br> <label for="recipient-name" class="control-label">请输入支付密码</label>
							</div>
							<div>
								<input type="password" class="form-control" id="recipient-name"
									name="paypass">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="sendPass">Send</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<script>
	/*  $("#sendPass").click(function(){
		var password = $(this).parent().prev().children().first().next().text();
		 alert(password); 
		$.ajax({
			method:"post",
			url:"verifyPayPass",
			data:"paypass="+password,
			success:function(data){
			}
		}); 
	}); 
	 */
	 
	
	
		 $(function(){
			showGoods();			
		})  
		function showGoods(){
			$.ajax({
				method: "get",
				url: "showCarGoods",
				success : function(data1){
					showGoods1(data1);
				}
			});
		} 
		
		function showGoods1(data1){
			$("#allGoods").empty();
			var body = $("#allGoods");
			var a = $("#totalNum");
			var total = 0;
			$.each(data1.map.allGoods,function(index,item){
				var tr = $("<tr></tr>");
				var th = $("<th></th>");
				th.append(item.cover);
				var td1 = $("<td></td>");
				td1.append('<input type="number"  disabled="disabled"  style="height:30px;line-height:40px;" value="'+item.num+'">');
				var td2 = $("<td></td>");
				td2.append(item.bookname);
				var td3 = $("<td></td>");
				td3.append(parseFloat(parseFloat(item.price)*parseFloat(item.num)));
				tr.append(th);
				tr.append(td2);
				tr.append(td1);
				tr.append(td3);
				body.append(tr);
				total = parseFloat(total)+parseFloat(item.price*item.num);
			})
			a.append(total);
			var b ="<%=session.getAttribute("1")%>";

				if (!isEmpty(b)) {
					alert(b);
		<%session.setAttribute("1", null);%>
			}
			}
			function isEmpty(obj) {
				if (typeof obj == "undefined" || obj == null || obj == "") {
					return true;
				} else {
					return false;
				}
			}
		</script>
</body>

</html>