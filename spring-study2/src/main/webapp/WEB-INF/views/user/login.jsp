<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
</head>
<link href="../resources/css/UserForm.css" rel="stylesheet">
<body>
	<!-- Login Form -->
	<div class="text-center" style="padding: 50px 0">
		<div class="logo">로그인</div>
		<!-- Main Form -->
		<div class="login-form-1">
			<form action="${path}/user/loginPost" method="post" id="login-form"
				class="text-left">
				<div class="login-form-main-message"></div>
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group">
							<label for="lg_username" class="sr-only">Username</label> <input
								type="text" name="userId" class="form-control" id="lg_username"
								placeholder="">
						</div>
						<div class="form-group">
							<label for="lg_password" class="sr-only">Password</label> <input
								type="password" name="userPw" class="form-control"
								id="lg_password" placeholder="">
						</div>
						<div class="form-group login-group-checkbox">
							<input type="checkbox" id="lg_remember" name="lg_remember">
							<label for="lg_remember">로그인 상태 유지</label>
						</div>
					</div>
					<button type="submit" class="login-button">
						<i class="fa fa-chevron-right">L</i>
					</button>
				</div>
				<div class="etc-login-form">
					<p>
						<a href="#">비밀번호 찾기</a>
					</p>
					<a href="${path}/user/register">회원가입</a>
				</div>
				
				<center>
					<c:choose>
						<c:when test="${sessionId == null}">
						<!-- 네이버 로그인 창으로 이동 -->
							<div id="naver_id_login" style="text-align: center">
								<p>
									<a href="${url}"> <img width="180"
										src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
								</p>
							</div>
						</c:when>
						<c:otherwise>
													

						</c:otherwise>
					</c:choose>
				</center>
			</form>
		</div>
		<!-- end:Main Form -->
	</div>

</body>

<script>
	var msg = "${msg}";
	if (msg === "REGISTERED") {
		alert("회원가입이 완료되었습니다.");
	} else if (msg == "FAILURE") {
		alert("아이디와 비밀번호를 확인해주세요.");
	}
</script>

</html>
