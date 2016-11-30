var R = false, A = false, P=false;//������֤��

//�������
$(function(){
	$("#addressId").val(-1);
	var ops = $("#address");//�����б�
	$.ajax({
		type:"POST",
		url:"address",
		dataType:"json",
		async:false,
		success:function(data){
			var addrs = data.addrs;
			appendOps(addrs);
			ops.change(function(){
				fillForm(addrs,$(this).val());
			});
		}
	});
	
	//��̬���������б�
	function appendOps(addrs){
		for(var i=0;i<addrs.length;i++){
			ops.append("<option value='"+i+"'>"+i+":"+addrs[i].full_address.substr(0,6)+"...</option>");
		}
	}
	
	//����ѡ���������
	function fillForm(addrs,index){
		if(index==-1){
			$("#receiveName").val('');
			$("#fullAddress").val('');
			$("#postalCode").val('');
			$("#phone").val('');
			$("#mobile").val('');
			$("#addressId").val(-1);
			return;
		}
		A=true;
		R=true;
		P=true;
		$("#nameValidMsg>span").html('');
		$("#addressValidMsg>span").html('');
		$("#receiveName").val(addrs[index].receive_name);
		$("#fullAddress").val(addrs[index].full_address);
		$("#postalCode").val(addrs[index].postal_code);
		$("#phone").val(addrs[index].phone);
		$("#mobile").val(addrs[index].mobile);
		
		$("#addressId").val(addrs[index].id);
		
	}
});

//����֤
$(function(){
	//��֤�ռ�������
	$("#receiveName").blur(function(){
		R = false;
		var val = $(this).val();
		var info = $("#nameValidMsg>span");
		info.text("");
		if(val == ""){
			info.text("�ռ��˲���Ϊ��");
		}else{
			info.html("<img src='../images/my/ajax_ok.png' />");
			R = true;
		}
	});
	
	//��֤��ϸ��ַ
	$("#fullAddress").blur(function(){
		A = false;
		var val = $(this).val();
		var info = $("#addressValidMsg>span");
		info.text("");
		if(val == ""){
			info.text("���ŵ�ַ����Ϊ��");
		}else{
			info.html("<img src='../images/my/ajax_ok.png' />");
			A = true;
		}
	});
	
	//��֤�ʱ�
	$("#postalCode").blur(function(){
		P = false;
		var val = $(this).val();
		var info = $("#codeValidMsg>span");
		info.text("");
		if(val == ""){
			info.text("�������벻��Ϊ��");
		}else if (!val.match(/^[0-9]{6,6}$/)) {
			info.text("�ʱ��ʽ����ȷ");}else{
			info.html("<img src='../images/my/ajax_ok.png' />");
			P = true;
		}
	});
	
	//����ַ���ռ�����ȷ��д�󣬲��ܵ���ύ
	$("#btnClientRegister").click(function(){
		if(A && R && P){
			return true;
		}else{
			return false;
		}
	});
		

});