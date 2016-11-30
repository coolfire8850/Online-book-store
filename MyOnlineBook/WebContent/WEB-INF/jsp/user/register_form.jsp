<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registration-My Online Book</title>
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/page_bottom.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.4.min.js"></script>
<script type="text/javascript" src="../js/user.register.js"></script>
</head>
<body>
	<%@include file="/common/head1.jsp"%>
	<div class="login_step">
		Registration: <span class="red_bold">1.Enter Information</span> >
		2.Verification > 3.Success
	</div>
	<div class="fill_message">
		<form name="ctl00" method="post" action="regist" id="f">
			<s:token></s:token>
			<s:actionerror />
				<h2>
					All fields are required
				</h2>
				<table class="tab_login" >
					<tr>
						<td valign="top" class="w1">
							Email address：
						</td>
						<td>
							<input name="user.email" type="text" id="txtEmail" class="text_input"/>
							<div class="text_left" id="emailValidMsg">
								
								
									<span id="email.info" style="color:black">Please fill in a valid email address</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Nick name:
						</td>
						<td>
							<input name="user.nickname" type="text" id="txtNickName" class="text_input" />
							<div class="text_left" id="nickNameValidMsg">
								
								<span id="name.info" style="color:black">Including letter and number,Length 4-20 characters</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Password：
						</td>
						<td>
							<input name="user.password" type="password" id="txtPassword"
								class="text_input" />
							<div class="text_left" id="passwordValidMsg">
								
								<span id="password.info" style="color:black">Including letter and number,Length 6-20 characters</span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Repeat password：
						</td>
						<td>
							<input name="repwd" type="password" id="txtRepeatPass"
								class="text_input"/>
							<div class="text_left" id="repeatPassValidMsg">
							<span id="password1.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Verification code：
						</td>
						<td>
							<img class="yzm_img" id='imgVcode' src="checkCode.action" />
							<input name="checkCode" type="text" id="txtVerifyCode"
								class="yzm_input"/>
							<div class="text_left t1">
								<p class="t1">
									<span id="vcodeValidMsg"></span>
										
									<span id="number.info" style="color:black">Please input the letter or number in picture</span>
								</p>
									<a href="#" id="checkCode">Not clear,wanna change?</a>
								<p
								
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<input id="btnClientRegister" class="button_1" name="submit"  type="submit" value="Register"/>
				</div>
			
		</form>
	</div>
	<%@include file="/common/foot.jsp"%>
</body>
</html>

