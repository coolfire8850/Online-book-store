<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>My Order</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Order Process:
			<span class="red_bold">1.Confirmation</span> > 2.Delivery Address  > 3.Success
		</div>
		<div class="fill_message">

			<table class="tab_login">
				<tr>
					<td valign="top" class="w1" style="text-align: left">
						<b>Number</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>Name</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>Unit price</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>Quantites</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>SubTotal</b>
					</td>
				</tr>

				<s:iterator value="items" var="i" status="sts">
				<!-- 订单开始 -->
					<tr>
						<td valign="top">
							${sts.count }
						</td>
						<td valign="top">
							${i.pro.product_name }
						</td>
						<td valign="top">
							${i.pro.book_price }
						</td>
						<td valign="top">
							${i.num }
						</td>
						<td valign="top">
							<c1:retainTwo/>
						</td>
					</tr>
					
				<!-- 订单结束 -->
				</s:iterator>
				
				<tr>
					<td valign="top" class="w1" style="text-align: left" colspan="5">
						<b>Total${totalDang }</b>
					</td>
				</tr>
			</table>
			<br />
			<br />
			<br />
			<div class="login_in">
				<a href="../cart/cart"><input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="Cancel" /></a>
			
				<a href="addressForm"><input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="Next" /></a>
		
			</div>

		</div>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

