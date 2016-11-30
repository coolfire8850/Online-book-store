<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>My Orders</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Order Process: > 1.Confirmation > 2.Delivery Address >
			<span class="red_bold">3.Success</span>
		</div>


		<div class="login_success">
			<div class="login_bj">
				<div class="succ">
					<img src="../images/login_success.jpg" />
				</div>
				<h5>
					 The order has been generated	
				</h5>
				<h6>
					Order number is:${order.id }，Total amount:${order.total_price }
				</h6>

				<ul>
					<li class="nobj">
						You can：
					</li>
					<li>
						<a href="../main/mainAction">Continue browsing and purchasing items</a>
					</li>
				</ul>
			</div>
		</div>

		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

