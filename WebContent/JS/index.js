$(function(){
	$("#login").click(function(){
		$("#gray").show();
	    $("#sign-in-page").show();	    
	    login_center();
	});
	
	$("#register").click(function(){
		$("#gray").show();
	    $("#sign-up-page").show();	    
	    register_center();
	});
	
	$("#sign-in-page").mousedown(function(e){
		var offset = $("#sign-in").offset();
		var x = e.pageX - offset.left;
		var y = e.pageY - offset.top;
		if(x<0||x>500||y<0||y>500){
			$("#sign-in-page").fadeOut(500);	
			$("#gray").fadeOut(500);
		}	    
	});
	
	$("#sign-up-page").mousedown(function(e){
		var offset = $("#sign-up").offset();
		var x = e.pageX - offset.left;
		var y = e.pageY - offset.top;
		if(x<0||x>500||y<0||y>500){
			$("#sign-up-page").fadeOut(500);	
			$("#gray").fadeOut(500);
		}	    
	});
	
	$(window).resize(function(){
		login_center();
		register_center();
	});

	function login_center(){
		var _top=($(window).height()-$("#sign-in-page").height())/2;
		var _left=($(window).width()-$("#sign-in-page").width())/2;		
		$("#sign-in-page").css({top:_top,left:_left});
	}	
	
	function register_center(){
		var _top=($(window).height()-$("#sign-up-page").height())/2;
		var _left=($(window).width()-$("#sign-up-page").width())/2;		
		$("#sign-up-page").css({top:_top,left:_left});
	}
	
	$("#sign-up-la").click(function(){
		$("#sign-in-page").hide();
		$("#sign-up-page").show();
		register_center();
	})
	
	$("#sign-in-la").click(function(){
		$("#sign-up-page").hide();
		$("#sign-in-page").show();
		login_center();
	})
	
	$("#author").click(function(){
		$("#author").addClass("am-active");
		$("#article").removeClass("am-active");
	})
	
	$("#article").click(function(){
		$("#article").addClass("am-active");
		$("#author").removeClass("am-active");
	})
})