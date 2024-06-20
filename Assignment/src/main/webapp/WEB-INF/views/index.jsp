<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Fruit Store</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />
<!-- endinject -->

<link rel="stylesheet" href="assets/css/style.css" />

<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
	<div class="container-scroller bg-light ">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas bg-menu-left" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top bg-menu">
				<a
					class="sidebar-brand brand-logo text-warning fs-2 text-decoration-none ms-3"
					href="#">Fruit store</a> <a class="sidebar-brand brand-logo-mini"
					href=""><img
					src="https://play-lh.googleusercontent.com/XVRPD2rIjraO3YGGV5TR19mvTBaQq1t75T39KyvyNyOJgUe5TbgDpYkvjAzz3ELA1vA"
					alt="logo" /></a>
			</div>
			<ul class="nav ">

				<li class="nav-item nav-category"><span
					class="nav-link text-dark">Thanh công cụ</span></li>
				<li class="nav-item menu-items"><a class="nav-link" href="/">
						<span class="menu-icon"> <i
							class="bi bi-house-add-fill text-danger"></i>
					</span> <span class="menu-title text-dark ">Trang chủ</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#ui-basic" aria-expanded="false"
					aria-controls="ui-basic"> <span class="menu-icon"> <i
							class="mdi mdi-laptop"></i>
					</span> <span class="menu-title text-dark">Hàng nhập khẩu</span> <i
						class="menu-arrow"></i>
				</a>
					<div class="collapse" id="ui-basic">
						<ul class="nav flex-column sub-menu ">
							<li class="nav-item"><a class="nav-link text-dark"
								href="#nhapkhau">Nhập khẩu Mỹ</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#nhapkhau">Nhập khẩu Úc</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#nhapkhau">Nhập khẩu Thái</a></li>
						</ul>
					</div></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#auth" aria-expanded="false"
					aria-controls="auth"> <span class="menu-icon"> <i
							class="mdi mdi-security"></i>
					</span> <span class="menu-title text-dark">Hàng nội địa</span> <i
						class="menu-arrow"></i>
				</a>
					<div class="collapse" id="auth">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link text-dark"
								href="#noidia">Hoa quả Đà Lạt</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#noidia">Hoa quả Tây Bắc</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#noidia">Hoa quả Miền Tây</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#noidia">Hoa quả Tây Nguyên</a></li>

						</ul>
					</div></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#ch-basic" aria-expanded="false"
					aria-controls="ui-basic"> <span class="menu-icon"> <i
							class="mdi mdi-laptop"></i>
					</span> <span class="menu-title text-dark">Cửa hàng</span> <i
						class="menu-arrow"></i>
				</a>
					<div class="collapse" id="ch-basic">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link text-dark"
								href="#cuahang">Hệ thống cửa hàng</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#cuahang">Các Nhà cung cấp</a></li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="#cuahang">Xuất xứ hoa quả</a></li>
						</ul>
					</div></li>

				<li class="nav-item menu-items"><a class="nav-link"
					href="#lienhe"> <span class="menu-icon"> <i
							class="mdi mdi-table-large"></i>
					</span> <span class="menu-title text-dark">Liên hệ</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link" href="#">
						<span class="menu-icon"> <i class="mdi mdi-chart-bar"></i>
					</span> <span class="menu-title text-dark">Thông tin</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link" href="#">
						<span class="menu-icon"> <i class="mdi mdi-contacts"></i>
					</span> <span class="menu-title text-dark">Tin tức</span>
				</a></li>

				<li class="nav-item menu-items"><a class="nav-link" href="#">
						<span class="menu-icon"> <i
							class="mdi mdi-file-document-box"></i>
					</span> <span class="menu-title text-dark">Giới thiệu</span>
				</a></li>
			</ul>
		</nav>
		
		<!-- partial -->
		<div class="container-fluid page-body-wrapper background" >
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar p-0 bg-nav fixed-top d-flex flex-row">
				<div
					class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
					<a class="navbar-brand brand-logo-mini" href="#"><img
						src="assets/images/logo-mini.svg" alt="logo" /></a>
				</div>
				<div
					class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
					<button class="btn btn-color border border-0" type="button"
						data-toggle="minimize">
						<span class="mdi mdi-menu"></span>
					</button>
					<ul class="navbar-nav w-50">
						<li class="nav-item w-100">
							<form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
								<input type="text" class="form-control bg-light text-black"
									placeholder="Tìm kiếm" />
							</form>
						</li>
					</ul>
					<ul class="navbar-nav navbar-nav-right">

						<li class="nav-item nav-settings d-none d-lg-block"><a
							class="nav-link" href="#"> <i class="mdi mdi-view-grid"></i>
						</a></li>
						<li class="nav-item dropdown "><a class="nav-link mb-1"
							href="giohang1"> <i class="bi bi-cart-plus-fill text-primary"></i><span
								class="count bg-success"></span>
						</a></li>
						<li class="nav-item dropdown "><a
							class="nav-link count-indicator dropdown-toggle"
							id="notificationDropdown" href="#" data-toggle="dropdown"> <i
								class="mdi mdi-bell text-warning"></i> <span
								class="count bg-danger"></span>
						</a>
							<div
								class="dropdown-menu bg-light text-dark  navbar-dropdown preview-list"
								aria-labelledby="notificationDropdown">
								<h6 class="p-3 mb-0">Thông báo mới nhận</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-calendar text-success"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1 text-dark">Sự kiên hôm nay</p>
										<p class="text-muted ellipsis mb-0">Cập nhật hệ thống</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-settings text-danger"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1 text-dark">Có cập nhật mới</p>
										<p class="text-muted ellipsis mb-0">1 ngày trước</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-link-variant text-warning"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1 text-dark">Thêm mới quản lý</p>
										<p class="text-muted ellipsis mb-0">Đã thêm mới 2 quản lý!</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">Tất cả thông báo</p>
							</div></li>
						<jsp:include page="${btn_end_menu}"></jsp:include>

					</ul>
					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-format-line-spacing"></span>
					</button>
				</div>
			</nav>

			<jsp:include page="${page_noiDung}"></jsp:include>
		</div>
		
	</div>
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="assets/js/misc.js"></script>


</body>
</html>
