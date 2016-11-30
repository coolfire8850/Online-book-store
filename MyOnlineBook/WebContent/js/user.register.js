//����֤
$(function() {
	var E=false,N=false,P=false,R=false,V=false;
	//��������֤����ͨ��ʱ����ť�����Ч
	$("#btnClientRegister").click(function(){
		if(E && N && P && R && V){
			return true;
		}else{
			return false;
		}
	});
	
	// email ��ַ
	var e_color = $("#email\\.info").css("color");
	$("#txtEmail").blur(function() {
		E = false;
		var val = $(this).val();
		var info = $("#email\\.info");
		info.html("");
		info.css("color",e_color);
		if (val == "") {
			info.css("color","red");
			info.text("Email required");
		} else if (!val.match(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/)) {
			info.css("color","red");
			info.text("Email's format is not correct");
		} else {
			info.html("<img src='../images/my/ajax_loader.gif' />");
			$.post(
				"registVali!valiEmail",
				{'user.email':val},
				function(data){
					if(data.flag){
						info.html("<img src='../images/my/ajax_ok.png' />Congrats,This Email is avalible").css('color','green');
						E = true;
					}else{
						info.css("color","red");
						info.text("Email exists!");
					}
				}
			);
			
		}
	});

	// �ǳ�
	$("#txtNickName").blur(function() {
		N = false;
		var val = $(this).val();
		var info = $("#name\\.info");
		info.html("");
		if (val == "") {
			info.css("color","red");
			info.text("Nick name required");
		} else if (!val.match(/^[a-z0-9\u4e00-\u9efa5]{4,20}$/)) {
			info.css("color","red");
			info.text("Nick name incorrect format.");
		} else {
			N = true;
			info.html("<img src='../images/my/ajax_ok.png' />");
		}
	});
	// ����
	$("#txtPassword").blur(function() {
		P = false;
		var val = $(this).val();
		var info = $("#password\\.info");
		info.html("");
		if (val == "") {
			info.css("color","red");
			info.text("Password required");
		} else if (!val.match(/^[a-zA-Z0-9]{6,20}$/)) {
			info.css("color","red");
			info.text("Password incorrect format");
		} else {
			P = true;
			info.html("<img src='../images/my/ajax_ok.png' />");
		}
	});
	
	// �ٴ�����������֤
	$("#txtRepeatPass").blur(function() {
		R = false;
		var val = $(this).val();
		var info = $("#password1\\.info");
		info.html("");
		if (val == "") {
			info.css("color","red");
			info.text("Repeat password required ");
		} else if (val != $("#txtPassword").val()) {
			info.css("color","red");
			info.text("Password doesn't match!");
		} else {
			R = true;
			info.html("<img src='../images/my/ajax_ok.png' />");
		}
	});
	
	// ��֤��
	$("#txtVerifyCode").blur(function() {
		V = false;
		var val = $(this).val();
		var info = $("#number\\.info");
		info.html("");
		if (val == "") {
			info.css("color","red");
			info.text("Verification code required");
		}else {
			info.html("<img src='../images/my/ajax_loader.gif' />");
			$.post("registVali!valiCheckCode",
					{'checkCode':val}, //��input��ǩ��name������ֵ
					function(data){
						if(data.flag){
							info.html("<img src='../images/my/ajax_ok.png' />");
							V = true;
						}else{
							info.css("color","red");
							info.text("Verification code is not correct!");
						}
					}
				);
		}
	});
	
});

//ˢ����֤��
$(function(){
	$("#checkCode").click(function(){
		$("#imgVcode").attr("src","checkCode.action?dt="+new Date().getTime());
	});
});
