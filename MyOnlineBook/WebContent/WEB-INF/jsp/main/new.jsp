<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	<span class="more"><a href="#" target="_blank">More&gt;&gt;</a> </span>New Arrival
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<s:iterator value="books">
	<div class="second_d_wai">
		<div class="img">
			<a href="${pageContext.request.contextPath}/main/book_view?id=${id }"><img
					src="${pageContext.request.contextPath}/productImages/${product_pic }" border=0 /> </a>
		</div>
		<div class="shuming">
			<a href="${pageContext.request.contextPath}/main/book_view?id=${id }" >${product_name }</a><a href="#" target="_blank"></a>
		</div>
		<div class="price">
			Price：$${fixed_price }
		</div>
		<div class="price">
			Discount：$${book_price }
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	</s:iterator>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>