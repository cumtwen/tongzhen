$(document).ready(function(){
	if($.cookie("rmbUser")=="true"){
		$("#checkbox").attr("checked",true);
		$("#username").val($.cookie("name"));
		$("#password").val($.cookie("pwd"));
		
	}
	
});

function Save(){
	if($("#checkbox:checked").length==1){
		var str_username=$("#username").val();
		var str_password=$("#password").val();
		$.cookie("rmbUser","true",{expires:7});
		$.cookie("name",str_username,{expires:7});
		$.cookie("pwd",str_password,{expires:7});
	}else{
		$.cookie("rmbUser","false",{expires:-1});
		$.cookie("name","",{expires:-1});
		$.cookie("pwd","",{expires:-1});
	}
	
};