
$(function(){
	$("#btnSignCheck").click(function(){
		var err = $("#txtLoginErr");
		if($("#txtUsername").val()==""||$("#txtPassword").val()==""){
			err.text("Please input the empty champ!");
			return false;
		}
	});
});