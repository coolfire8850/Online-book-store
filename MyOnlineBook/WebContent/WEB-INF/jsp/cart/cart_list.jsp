<%@page pageEncoding="utf-8" %>
<%@page import="com.tarena.web.action.cart.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Welcome My Online book</title>
		<link href="${pageContext.request.contextPath}/css/book.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/second.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/shopping_vehicle.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/cart.list.js"></script>
	</head>
	<body>
		<br />
		<br />
		<div class="my_shopping">
			<img class="pic_shop" src="../images/pic_myshopping.gif" />

		</div>
		<div id="div_choice" class="choice_merch">
			<h2 id="cart_tips">
				You have chosen these products:<span style="color:red">${cart_empty}</span>
				&nbsp;&nbsp;&nbsp;<span style="color:red"><a href="cart!clear">Clean Cart</a></span>
			</h2>
			<div class="choice_bord">
				<table class="tabl_buy" id="tbCartItemsNormal">
					<tr class="tabl_buy_title">
						<td class="buy_td_6">
							<span>&nbsp;</span>
						</td>
						<td>
							<span >Product</span>
						</td>
						<td><span >Pics</span>
						</td>
						<td class="buy_td_5">
							<span class="span_w2">Price</span>
						</td>
						<td class="buy_td_4">
							<span class="span_w3">Discount</span>
						</td>
						<%-- <td class="buy_td_1">
							<span class="span_w2">Numbers</span>
						</td> --%>
						<td class="buy_td_2">
							<span>Number</span>
						</td>
						<td class="buy_td_1">
							<span>Delete</span>
						</td>
					</tr>
					<tr class='objhide' over="no">
						<td colspan="8">
							&nbsp;
						</td>
					</tr>
					
                      <!-- 购物列表开始 -->
                      <s:iterator value="ciBuy" var="ci">
						<tr class='td_no_bord'>
						
						
							<td style='display: none'>
							
							</td>
							<td class="buy_td_6">
								<span class="objhide"><img /> </span>
							</td>
							<td>
							<a href="http:${pageContext.request.contextPath}/main/book_view?id=${ci.pro.id }">${ci.pro.product_name }</a>
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/main/book_view?id=${ci.pro.id }"><IMG id=img_show_prd
										src="../productImages/${ci.pro.product_pic }" width="75px"></td>
							<td class="buy_td_5">
								<span class="c_gray">${ci.pro.fixed_price}</span>
							</td>
							<td class="buy_td_4">
								&nbsp;&nbsp;
								<span>￥${ci.pro.book_price}</span>
							</td>
							
							<%-- <td class="buy_td_1">
								&nbsp;&nbsp;${ci.num }
							</td> --%>

							<td >
								<input class="del_num" value="${ci.num }" type="text" size="3" maxlength="4"/>
								<a href="cart!modify?id=${ci.pro.id }&num=">Change</a>
							</td>
							<td>
								<a href="cart!delete?id=${ci.pro.id }">Delete</a>
							</td>
						</tr>
						</s:iterator>
					<!-- 购物列表结束 -->
				</table>
				<div id="div_no_choice" class="objhide">
					<div class="choice_title"></div>
					<div class="no_select">
						You don't have chosen the product
					</div>
				</div>
				<div class="choice_balance">
					<div class="select_merch">
						<a href="${pageContext.request.contextPath}/main/mainAction">Continue to buy</a>
					</div>
					<div class="total_balance">
						<div class="save_total">
							Saving：
							<span class="c_red"> $<span id="total_economy"><c1:retainTwo/></span>
							</span>
							<span id='total_vip_economy' class='objhide'> ( 其中享有优惠： <span
								class="c_red"> ￥<span id='span_vip_economy'><c1:retainTwo/></span> </span>
								) </span>
							<span style="font-size: 14px">|</span>
							<span class="t_add">Total：</span>
							<span class="c_red_b"> $<span id='total_account'>${totalDang}</span>
							</span>
						</div>
						<div id="balance" class="balance">
							<a name='checkout' href='../order/confirm' > 
								<img src="${pageContext.request.contextPath}/images/butt_balance.gif" alt="Checkout" border="0" title="结算" />
							</a>
						
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 用户删除恢复区 -->


		<div id="divCartItemsRemoved" class="del_merch">
			<div class="del_title">
				You have deleted your products, if you want to recover them, click the button Recovery
			</div>
			<table class=tabl_del id=del_table>
				<tbody>

					<s:iterator value="ciDel" var="cDel">
					<tr>
						<td width="58" class=buy_td_6>
							&nbsp;
						</td>
						<td width="365" class=t2>
							<a href="#">${cDel.pro.product_name }</a>
						</td>
						<td width="106" class=buy_td_5>
							￥${cDel.pro.fixed_price }
						</td>
						<td width="134" class=buy_td_4>
							<span>￥${cDel.pro.book_price }</span>
						</td>
						<td width="56" class=buy_td_1>
							<a href="cart!recovery?id=${cDel.pro.id }">Recovery</a>
						</td>
						<td width="16" class=objhide>
							&nbsp;
						</td>
					</tr>
					</s:iterator>


					<tr class=td_add_bord>
						<td colspan=8>
							&nbsp;
						</td>
					</tr>


				</tbody>
			</table>
		</div>
		<br />
		<br />
		<br />
		<br />
		<!--页尾开始 -->
		<%@include file="/common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>



