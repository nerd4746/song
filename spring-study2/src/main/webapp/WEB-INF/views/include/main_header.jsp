<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>


	<%@ page contentType="text/html; charset=UTF-8" language="java"%>
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="/"
				class="nav-link">Home</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="/article/list" class="nav-link">Contact</a></li>
		</ul>

		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<c:if test="${not empty login}">
				<li class="nav-item dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="../resources/dist/img/song.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">${login.userName}</span>
				</a>
					<ul class="dropdown-menu">
						<li class="user-header"><img
							src="../resources/dist/img/song.jpg" class="img-circle"
							alt="User Image">
							<p>
					
								<small> 
									가입일자 : <fmt:formatDate value="${login.userJoinDate}" pattern="yyyy-MM-dd" />
								</small>
	
								<small>
								 	최근로그인일자 : <fmt:formatDate value="${login.userLoginDate}" pattern="yyyy-MM-dd" />
								</small>
							</p></li>
						<li class="user-footer">

							<div class="float-right">
								<a href="${path}/user/logout" class="btn btn-default btn-flat"><i
									class="glyphicon glyphicon-log-out"></i><b> 로그아웃</b></a>
							</div>
						</li>
					</ul></li>
			</c:if>
			<c:if test="${empty login}">
				<li class="nav-item dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="hidden-xs">회원가입/로그인</span>
				</a>
					<ul class="dropdown-menu">
						<li class="user-header">
							<p>
								<b>회원가입 또는 로그인해주세요</b>
							</p>

						</li>
						<li class="user-footer">
							<div class="float-left">
								<a href="${path}/user/register" class="btn btn-default btn-flat"><i
									class="fas fa-user-plus"></i><b> 회원가입</b></a>
							</div>
							<div class="float-right">
								<a href="${path}/user/login" class="btn btn-default btn-flat"><i
									class="glyphicon glyphicon-log-in"></i><b> 로그인</b></a>
							</div>
						</li>
					</ul></li>
			</c:if>
		</ul>
	</nav>



</body>
</html>