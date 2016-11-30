<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registration Verification</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>

		<div class="login_step">
			Registration: 1.Enter Information>
			<span class="red_bold">2.Verification </span> > 3.Success
		</div>
		<form action="verify" method="post">
			<s:token></s:token>
			<div class="validate_email">
				<h2>
					Now follow the steps below to complete your registration!
				</h2>
				<div class="look_email">
					<h4>
						First:Verify your mailbox
					</h4>
					<div class="mess reduce_h">
						We send you a verification code in your mailbox：
						<a href="${pageContext.request.contextPath}/emailcode.jsp" target="_blank" ><span class="red"><span id="lblEmail">${s_user.email }</span></a>
						</span>
						<span class="t1"> 
						Pleas check it
					</div>
					<h4>
						Second：Input the received code
					</h4>
					<div class="mess">
						<span class="write_in">Please input the code：</span>
						<input name="code" type="text" id="validatecode" class="yzm_text" 
						value="${s_user.email_verify_code}-${s_user.id }" />
						<input class="finsh" type="submit" value="Finished" id="Button1" />
						<span id="errorMsg" class="no_right">${verify_err }</span>
					</div>
				</div>
			</div>
		</form>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

