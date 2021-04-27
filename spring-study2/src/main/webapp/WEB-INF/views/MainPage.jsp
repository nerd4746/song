<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<!-- header -->
<%@ include file="include/head.jsp"%>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="include/main_header.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@ include file="include/left_column.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">시작 페이지</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						
										

						
						<!-- /.col-md-6 -->
						<div class="col-lg-6">
							<div class="card">
								
							</div>

							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="m-0">Privacy</h5>
								</div>
								<div class="card-body">

									<p class="card-text">
									
									
									이름 : ${login.userName}<br>
								
									이메일 : ${login.userEmail}<br>									
									
									암호화된 비밀번호 : ${login.userPw}<br>
								
									가입일자 : <fmt:formatDate value="${login.userJoinDate}" pattern="yyyy-MM-dd" /><br>
								
	
								
								 	최근로그인일자 : <fmt:formatDate value="${login.userLoginDate}" pattern="yyyy-MM-dd" />
								
									
									</p>
									<a href="/article/list" class="btn btn-primary">Go Postlist</a>
								</div>
							</div>
						</div>
						<!-- /.col-md-6 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Main Footer -->
		<%@ include file="include/main_footer.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include file="include/plugin_js.jsp"%>
</body>
</html>

