//����ť��ز���
$(function(){
	$(".list_r_list_button").click(function(){
		var href = $(this).find("a").attr("href");
		var v_flag = false;//���û�ӵ����ݣ���Ϊtrue����ת��ִ��������
		var info = $(this).next(".mycartinfo");
		info.html("");
		info.html("<img src='../images/my/ajax_loader.gif' />");
		$.ajax({
			type:"GET",
			url:href,
			success:function(data){
				if(data.flag){
					info.html("<a href='../cart/cart'>Buy with success, click here for the details</a>");
				}else if(data.flag==undefined){
				info.html("<a href='../user/tologinAction'>You don't log in,Click here for Log in</a>");
				}else{
					info.html("Sorry,System is busy,Please try it laterley");
				}
			}
		});
		return false;
	});
	
});