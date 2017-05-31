$(function(){
	$("#up-userName").change(function(){
		var usern = /^[a-zA-Z0-9_]{1,}$/;
		var name = $("#up-userName").val();
		if(name.length == 0 || !name.match(usern)){
			$("#txt-username").addClass("am-form-error");
			$("#ico-username").addClass("am-icon-times");
			$("#ico-username").show();
			$("#up-userName").focus();
		}else{
			$.ajax({
				type : "post",
				dataType : "text",
				url : "",
				contentType : "application/x-www-form-urlencoded",
				data : {
					username : name
				},
				success : function(data) {
					if (data == "yes") {
						$("#txt-username").addClass("am-form-success");
						$("#ico-username").addClass("am-icon-check");
						$("#txt-username").removeClass("am-form-error");
						$("#ico-username").removeClass("am-icon-times");
					} else {
						alert("用户名：["+data+"]已经存在，请换一个。");
						$('#up-userName').val("");
						$('#up-userName').focus();
					}
				},
				error : function(XMLResponse) {
					alert(XMLResponse.responseText);
				}
			});
		}
	})
})