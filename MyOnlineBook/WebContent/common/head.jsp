<%@page contentType="text/html;charset=utf-8"%>
<link href="${pageContext.request.contextPath}/css/book_head090107.css" rel="stylesheet" type="text/css" />
<div class="head_container">
	<div class="head_welcome">
		<div class="head_welcome_right">
			<span class="head_welcome_text"> </span>
			<span class="head_welcome_text"> <span class="little_n">
					| <a href="#" name="mydangdang" class="head_black12a">Book Store</a> | <a
					href="../common/introduce.jsp" name="helpcenter" class="head_black12a" >Help</a>
					| </span> </span>
			<div class="cart gray4012">
				<a href="${pageContext.request.contextPath}/cart/cart">Cart</a>
			</div>
		</div>
		<span class="head_toutext" id="logininfo">
		<b><span style="color:blue;font-size:15px">${s_user.nickname }</span>
		 Welcome to online bookstore!</b>
		<%if(session.getAttribute("s_user")!=null){ %>
		[&nbsp;<a href="<%=request.getContextPath() %>/user/logout" class="b">Log out</a>&nbsp;]
		<%} else{%>
		
		[&nbsp;<a href="${pageContext.request.contextPath}/user/tologinAction" class="b">Login</a>|<a
			href="${pageContext.request.contextPath}/user/toRegistAction" class="b">Register</a>&nbsp;]
		<%} %>
		</span>
	</div>
	<div class="head_head_list">
		<div class="head_head_list_left">
			<span class="head_logo"><a href="${pageContext.request.contextPath}/main/mainAction" name="backtobook"><img
						src="${pageContext.request.contextPath}/images/booksaleimg/booklogo.png" /> </a> </span>
		</div>
		<div class="head_head_list_right">

			<div class="head_head_list_right_b">
			</div>
		</div>
	</div>
	<div class="head_search_div">

	</div>
	<div class="head_search_bg"></div>
</div>
