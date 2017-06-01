$(function() {
	$("#up-userName").change(function() {
		var usern = /^[a-zA-Z0-9_]{1,}$/;
		var name = $("#up-userName").val();
		if (name.length == 0 || !name.match(usern)) {
			$("#txt-username").addClass("am-form-error");
			$("#ico-username").addClass("am-icon-times");
			$("#ico-username").show();
			$("#up-userName").focus();
		} else {
			$.ajax({
				type : "post",
				dataType : "text",
				url : "../CheckName",
				contentType : "application/x-www-form-urlencoded",
				data : {
					username : name
				},
				success : function(data) {
					if (data == "yes") {
						$("#txt-username").removeClass("am-form-error");
						$("#ico-username").removeClass("am-icon-times");
						$("#txt-username").addClass("am-form-success");
						$("#ico-username").addClass("am-icon-check");
					} else {
						alert("用户名：[" + data + "]已经存在，请换一个。");
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
			$("#txt-password").addClass("am-form-error");
			$("#ico-password").addClass("am-icon-times");
			$("#ico-password").show();
			$("#up-password").focus();
		} else {
			$("#txt-password").removeClass("am-form-error");
			$("#ico-password").removeClass("am-icon-times");
			$("#txt-password").addClass("am-form-success");
			$("#ico-password").addClass("am-icon-check");
		}
	})

	$("#up-phonenum").change(function() {
		var phonen = /^1[34578]\d{9}$/;
		var value = $("#up-phonenum").val();
		if (value.length == 0 || !phonen.test(value)) {
			$("#txt-phonenum").addClass("am-form-error");
			$("#ico-phonenum").addClass("am-icon-times");
			$("#ico-phonenum").show();
			$("#up-phonenum").focus();
		} else {
			$("#txt-phonenum").removeClass("am-form-error");
			$("#ico-phonenum").removeClass("am-icon-times");
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
				}
			})

})