$(function(){
  var save=false;
  $("#ensure_password").bind("blur",function(e){         
        var ensure_password=$("#ensure_password").val();
	var new_password=$("#new_password").val();
         ensurePassword(new_password,ensure_password,save);
        });
        $("#ensure_password").keypress(function(e){
                 var keycode = (event.keyCode ? event.keyCode : event.which); 
                 var ensure_password=$("#ensure_password").val();
		 var new_password=$("#new_password").val();
                 if(keycode=="13" && ensurePassword(new_password,ensure_password,save)){
                $("#save").removeClass("disabled");   
		$("#save").focus();
		$("#save").addClass("btn-info");   
             };
        });
	  $("#old_password").keypress(function(e){
                 var keycode = (event.keyCode ? event.keyCode : event.which); 
                 var old_password=$("#old_password").val();
                 if(keycode=="13" && old_password!="" ){
		$(".container_1 .form-group:eq(0) span").remove(); 
		$("#new_password").focus();   
             }else if(keycode=="13"){
			$(".container_1 .form-group:eq(0) span").remove();
			$(".container_1 .form-group:eq(0)").removeClass("has-warning has-feedback");
            		$(".container_1 .form-group:eq(0)").addClass("has-warning has-feedback");
            		$(".container_1 .col-md-6:eq(0)").append("<span class='glyphicon glyphicon-warning-sign form-control-feedback'></span>");
            		$(".container_1 .col-md-6:eq(0)").append("<span class='help-block'>请输入你的旧密码</span>");
}
        });
	 $("#new_password").keypress(function(e){
                 var keycode = (event.keyCode ? event.keyCode : event.which); 
                 var new_password=$("#new_password").val();
		 var old_password=$("#old_password").val();
                 if(keycode=="13"){
                    if(new_password==old_password){
			$(".container_1 .form-group:eq(1) span").remove();
            		$(".container_1 .form-group:eq(1)").addClass("has-warning has-feedback");
            		$(".container_1 .col-md-6:eq(1)").append("<span class='glyphicon glyphicon-warning-sign form-control-feedback'></span>");
            		$(".container_1 .col-md-6:eq(1)").append("<span class='help-block'>新旧密码一样，请重新输入你的新密码</span>");
		}else{   $(".container_1 .form-group:eq(1) span").remove();
			 $(".container_1 .form-group:eq(1)").removeClass("has-warning has-feedback");
 			 $("#ensure_password").focus();
} 
             };
        });

})
 function ensurePassword(old,ensure,save){
  if(old!=""){
   if(old==ensure){
	save=true;
	 $(".container_1 .form-group:eq(2) span").remove();
         $(".container_1 .form-group:eq(2)").addClass("has-success has-feedback");
         $(".container_1 .col-md-6:eq(2)").append("<span class='glyphicon glyphicon-ok form-control-feedback'></span>");
         $("#save").focus();
	return true;
}else{
	$(".container_1 .form-group:eq(2) span").remove();
            $(".container_1 .form-group:eq(2)").addClass("has-warning has-feedback");
            $(".container_1 .col-md-6:eq(2)").append("<span class='glyphicon glyphicon-warning-sign form-control-feedback'></span>");
            $(".container_1 .col-md-6:eq(2)").append("<span class='help-block'>两次输入的密码不相同，请重新输入</span>");
            save=false;
	    return false;
}
  }
}

