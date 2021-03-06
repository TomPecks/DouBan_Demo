$(function() {
	$("#up-userName").change(function() {
		var usern = /^[a-zA-Z0-9_]{1,}$/;
		var name = $("#up-userName").val();
		if (name.length == 0 || !name.match(usern)) {
			$("#txt-username").removeClass("am-form-success");
			$("#ico-username").removeClass("am-icon-check");
			$("#txt-username").addClass("am-form-error");
			$("#ico-username").addClass("am-icon-times");
			$("#up-userName").focus();
		} else {
			$.ajax({
				type : "post",
				dataType : "text",
				url : "../CheckName!ajaxexecute",
				contentType : "application/x-www-form-urlencoded",
				data : {
					username : name
				},
				success : function(data) {
					if (data == "yes") {
						$("#ico-username").removeClass("am-icon-times");
						$("#txt-username").removeClass("am-form-error");		
						$("#txt-username").addClass("am-form-success");
						$("#ico-username").addClass("am-icon-check");
					} else {
						alert("用户名：[" + data + "]已经存在，请换一个。");
						$("#txt-username").removeClass("am-form-success");
						$("#ico-username").removeClass("am-icon-check");
						$("#txt-username").addClass("am-form-error");
						$("#ico-username").addClass("am-icon-times");
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

	$("#up-password").change(function() {
		var pass = $("#up-password").val();
		if (pass.length == 0) {
			$("#txt-password").removeClass("am-form-success");
			$("#ico-password").removeClass("am-icon-check");
			$("#txt-password").addClass("am-form-error");
			$("#ico-password").addClass("am-icon-times");
			$("#up-password").focus();
		} else {
			$("#ico-password").removeClass("am-icon-times");
			$("#txt-password").removeClass("am-form-error");
			$("#txt-password").addClass("am-form-success");
			$("#ico-password").addClass("am-icon-check");
		}
	})

	$("#up-phonenum").change(function() {
		var phonen = /^1[34578]\d{9}$/;
		var value = $("#up-phonenum").val();
		if (value.length == 0 || !value.match(phonen)) {
			$("#txt-phonenum").removeClass("am-form-success");
			$("#ico-phonenum").removeClass("am-icon-check");
			$("#txt-phonenum").addClass("am-form-error");
			$("#ico-phonenum").addClass("am-icon-times");
			$("#ico-phonenum").show();
			$("#up-phonenum").focus();
		} else {
			$("#ico-phonenum").removeClass("am-icon-times");
			$("#txt-phonenum").removeClass("am-form-error");
			$("#txt-phonenum").addClass("am-form-success");
			$("#ico-phonenum").addClass("am-icon-check");
		}
	})

	$("#up-submit").click(
			function() {
				if ($("#up-userName").val() != ""
						&& $('#up-password').val() != ""
						&& $('#up-phonenum').val() != "") {
					$('#up-form').submit();
				}else{
					return false;
				}
			})

	$("#in-submit").click(function(){
		var name = $("#in-userName").val();
		var pass = $('#in-password').val();
		if(name != "" && pass != "" ){
			$.ajax({
				type : "post",
				dataType : "text",
				url : "../CheckPass!ajaxexecute",
				contentType : "application/x-www-form-urlencoded",
				data : {
					username : name,
					password: pass
				},
				success : function(data) {
					if (data == "yes") {
						$('#in-form').submit();
					} else {
						alert("密码和用户名不一致！");
						return false;
					}
				},
				error : function(XMLResponse) {
					return false;
					alert(XMLResponse.responseText);
				}
			});
		}else{
			return false;
		}
	})
})