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
	<div class="container-scroller bg-light " style="height: 100vh">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas bg-menu-left" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center ">
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
		<div class="container-fluid d-flex justify-content-center">
		<div class=" ">
		<h2 class="text-center text-success">Giỏ Hàng</h2>
			<c:forEach  items="${sp.content}" var="a">

				<div class="col-10 m-auto " data-wow-delay="0.1s">
					<div class="menu-item d-flex align-items-center">
						<img class="flex-shrink-0 img-fluid rounded-circle"
							src="/img/${a.urlHinhAnh}" alt=""
							style="width: 55px; height: 55px">
						<div class="w-100 d-flex flex-column text-start ps-4">
							<div
								class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
								<h4>${a.ten }</h4>
								<h4 class="text-primary">${a.gia}VND/KG</h4>
							</div>
							<p class="mb-0">${a.moTa}</p>
						</div>

						<a class="btn btn-success m-2"
							href="/add-donhang?donhang&idSPham=${a.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">Chọn</a>



					</div>
				</div>
			</c:forEach>
		<a class="btn btn-primary">Thanh Toán</a>
		</div>
		
		</div>

	</div>

	<script src="assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="assets/js/misc.js"></script>
</body>
</html>