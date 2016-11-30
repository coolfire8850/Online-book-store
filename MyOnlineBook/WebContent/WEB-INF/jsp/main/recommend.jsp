<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	Editor's Choice
</h2>
<div id=__bianjituijian/danpin>
	<div class=second_c_02>
	
	<s:iterator value="books">
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href="${pageContext.request.contextPath}/main/book_view?id=${id }" ><img src="${pageContext.request.contextPath}/productImages/${product_pic }" width=70 border=0 /> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href="${pageContext.request.contextPath}/main/book_view?id=${id }" title='${product_name }'>Name:${product_name }</a>
				</h3>
				<h4>
					Author：${author } 著
					<br />
					Publish：${publishing }&nbsp;&nbsp;&nbsp;&nbsp;Date：${publish_dt }
				</h4>
				<h5>
					Introduction:${description }
				</h5>
				<h6>
					Price：$${fixed_price }&nbsp;&nbsp;Discount：$${book_price }
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		</s:iterator>
		
	</div>
</div>
