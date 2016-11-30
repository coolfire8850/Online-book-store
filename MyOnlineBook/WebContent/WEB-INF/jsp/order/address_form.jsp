<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>My Order</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/order.address.js"></script>
		
		
		
	</head>
	<body>&nbsp; 
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Order Process: 1.Confirmation >
			<span class="red_bold"> 2.Delivery Address</span> > 3.Success
		</div>
		<div class="fill_message">
			<p>
				Choose address：
				<select id="address">
					<option value="-1">
						New Address
					</option>
				</select>
			</p>
			<form name="ctl00" method="post" action="orderSubmit" id="f">
				<s:token></s:token>
				<input type="hidden" name="addr.id" id="addressId" value="-1"/>

				<table class="tab_login">
					<tr>
						<td valign="top" class="w1">
							Name：
						</td>
						<td>
							<input type="text" class="text_input" name="addr.receive_name"
								id="receiveName" />
							<div class="text_left" id="nameValidMsg">
								<p>
									Please input valid name
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Address：
						</td>
						<td>
							<input type="text" name="addr.full_address" class="text_input"
								id="fullAddress" />
							<div class="text_left" id="addressValidMsg">
								<p>
									Please input the detailed information
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Zip code
						</td>
						<td>
							<input type="text" class="text_input" name="addr.postal_code"
								id="postalCode" />
							<div class="text_left" id="codeValidMsg">
								<p>
									Please input the valid post code
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Telephone
						</td>
						<td>
							<input type="text" class="text_input" name="addr.phone"
								id="phone" />
							<div class="text_left" id="phoneValidMsg">
								<p>
									Please input the valid telephone<span style="color:green">&nbsp;&nbsp;&nbsp;optional</span>
								</p>
								
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Mobile
						</td>
						<td>
							<input type="text" class="text_input" name="addr.mobile"
								id="mobile" />
							<div class="text_left" id="mobileValidMsg">
								<p>
									Please input the valid mobile phone<span style="color:green">&nbsp;&nbsp;&nbsp;optional</span>
								</p>
								
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<a href="confirm"><input id="btnClientRegister2" class="button_1" name="submit"
					type="button" value="Cancel" /></a>
			
				<input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="Next" />
				</div>
			</form>
		</div>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

		
		
		
		