<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">

		<!-- Brand Logo -->
		<a href="/" class="brand-link"> <img
			src="../resources/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
			class="brand-image img-circle elevation-3" style="opacity: .8">
			<span class="brand-text font-weight-light">게시판</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<c:if test="${empty login}">
					<div class="info">
						<%-- Status --%>
						<i class="fa fa-circle text-danger">오프라인</i>
					</div>
				</c:if>
				<c:if test="${not empty login}">
					<div class="image">
						<img src="../resources/dist/img/song.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<%-- Status --%>
						<a href="#"><i class="d-block"></i>${login.userName}</a>
					</div>
				</c:if>
			</div>


			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
					<li class="nav-item has-treeview menu-open"><a href="#"
						class="nav-link active"> <i
							class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								Starter Pages <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="/article/write"
								class="nav-link active"> <i class="far fa-circle nav-icon"></i>
									<p>게시글 작성</p>
							</a></li>
							<li class="nav-item"><a href="/article/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>게시글 목록</p>
							</a></li>
						</ul></li>
					
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
</body>
</html>