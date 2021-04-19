<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>register</title>
</head>
<link href="../resources/css/UserForm.css" rel="stylesheet">
<body>
<!-- REGISTRATION FORM -->
<div class="text-center" style="padding:50px 0">
	<div class="logo">회원가입</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form action="${path}/user/register" method="post" id="register-form" class="text-left">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
					
						<label for="reg_username" class="sr-only">Username</label>
						<input type="text" class="form-control" id="reg_username" name="userId" placeholder="">
					</div>
					<div class="form-group">
						<label for="reg_password" class="sr-only">Password</label>
						<input type="password" class="form-control" id="reg_password" name="userPw" placeholder="">
					</div>
					<div class="form-group">
						<label for="reg_password_confirm" class="sr-only">Password Confirm</label>
						<input type="password" class="form-control" id="reg_password_confirm"  placeholder="">
					</div>
					
					<div class="form-group">
						<label for="reg_email" class="sr-only">Email&nbsp&nbsp&nbsp&nbsp&nbsp</label>
						<input type="text" class="form-control" id="reg_email" name="userEmail" placeholder="">
					</div>
					<div class="form-group">
						<label for="reg_fullname" class="sr-only">Full Name</label>
						<input type="text" class="form-control" id="reg_fullname" name="userName" placeholder="">
					</div>
					<div class="form-group login-group-checkbox">
						<input type="checkbox" class="" id="reg_agree" name="reg_agree">
						<label for="reg_agree">약관에 동의</label>
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right">L</i></button>
			</div>
			<div class="etc-login-form">
				<p>이미 회원이신가요?<a href="${path}/user/login">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp로그인하기</a></p>
			</div>
		</form>
	</div>
	<!-- end:Main Form -->
</div>
<script> 
	$(function () { $('input').iCheck({ checkboxClass: 'icheckbox_square-blue',
		
		 radioClass: 'iradio_square-blue', increaseArea: '20%'  
			  });
	   }); 
</script>
</body>
</html>
