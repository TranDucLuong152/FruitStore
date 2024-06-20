<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Corona Admin</title>
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
	href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="../../assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="../../assets/css/style.css">
<link rel="shortcut icon" href="../../assets/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a
					class="sidebar-brand brand-logo text-light text-decoration-none ms-5"
					href="#">Fruit store</a> <a class="sidebar-brand brand-logo-mini"
					href="admin"><img
					src="https://play-lh.googleusercontent.com/XVRPD2rIjraO3YGGV5TR19mvTBaQq1t75T39KyvyNyOJgUe5TbgDpYkvjAzz3ELA1vA"
					alt="logo" /></a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle"
									src="https://png.pngtree.com/png-clipart/20200727/original/pngtree-fruit-shop-logo-template-designs-fresh-fruit-center-logo-template-designs-png-image_5292681.jpg"
									alt="" /> <span class="count bg-success"></span>
							</div>
							<div class="profile-name">
								<h5 class="mb-0 text-light">Trần Đức Lượng</h5>
								<span>Admin</span>
							</div>
						</div>
						<a href="#" id="profile-dropdown" data-toggle="dropdown"><i
							class="mdi mdi-dots-vertical"></i></a>
						<div
							class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
							aria-labelledby="profile-dropdown">
							<a href="#" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-settings text-primary"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Cài đặt
										tài khoản</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-onepassword text-info"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Đổi mật
										khẩu</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-dark rounded-circle">
										<i class="mdi mdi-calendar-today text-success"></i>
									</div>
								</div>
								<div class="preview-item-content">
									<p class="preview-subject ellipsis mb-1 text-small">Cập
										nhật tài khoản</p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li class="nav-item nav-category"><span class="nav-link">Thanh
						công cụ</span></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/admin"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Tổng quát</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#ui-basic" aria-expanded="false"
					aria-controls="ui-basic"> <span class="menu-icon"> <i
							class="mdi mdi-laptop"></i>
					</span> <span class="menu-title">Sản phẩm</span> <i class="menu-arrow"></i>
				</a>
					<div class="collapse" id="ui-basic">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link"
								href="/curd-sanpham">CURD Sản phẩm</a></li>
							<li class="nav-item"><a class="nav-link" href="/ht-sanpham">Hiển
									thị sản phẩm</a></li>
							<li class="nav-item"><a class="nav-link" href="/tk-sanpham">Thống
									kê sản phẩm</a></li>
						</ul>
					</div></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#auth" aria-expanded="false"
					aria-controls="auth"> <span class="menu-icon"> <i
							class="mdi mdi-security"></i>
					</span> <span class="menu-title">Người dùng</span> <i class="menu-arrow"></i>
				</a>
					<div class="collapse" id="auth">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link"
								href="/curd-nguoidung">CURD người dùng</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/tk-nguoidung">Thống kê người dùng</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/tksp-nguoidung">Người theo sản phẩm </a></li>
							<li class="nav-item"><a class="nav-link"
								href="/ht-nguoidung">Hiển thị người dùng</a></li>

						</ul>
					</div></li>
		<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#ch-basic" aria-expanded="false"
					aria-controls="ui-basic"> <span class="menu-icon"> <i
							class="mdi mdi-laptop"></i>
					</span> <span class="menu-title">Danh Mục</span> <i class="menu-arrow"></i>
				</a>
					<div class="collapse" id="ch-basic">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link"
								href="/curd-danhmuc">CURD Danh Mục</a></li>
							<li class="nav-item"><a class="nav-link" href="/ht-danhmuc">Hiển
									thị SP Theo Danh Mục</a></li>
							<li class="nav-item"><a class="nav-link" href="/tk-danhmuc">Thống
									kê SP Danh Mục</a></li>
						</ul>
					</div></li>

				<li class="nav-item menu-items"><a class="nav-link"
					href="/tk-bang"> <span class="menu-icon"> <i
							class="mdi mdi-table-large"></i>
					</span> <span class="menu-title">Thống kê theo bảng</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/tk-bieudo"> <span class="menu-icon"> <i
							class="mdi mdi-chart-bar"></i>
					</span> <span class="menu-title">Thống kê theo biểu đồ</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="/tk-chitiet"> <span class="menu-icon"> <i
							class="mdi mdi-contacts"></i>
					</span> <span class="menu-title">Thống kê chi tiết</span>
				</a></li>

				<li class="nav-item menu-items"><a class="nav-link" href="#">
						<span class="menu-icon"> <i
							class="mdi mdi-file-document-box"></i>
					</span> <span class="menu-title">Giới thiệu</span>
				</a></li>
			</ul>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar p-0 fixed-top d-flex flex-row">
				<div
					class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
					<a class="navbar-brand brand-logo-mini" href="admin"><img
						src="https://png.pngtree.com/png-clipart/20200727/original/pngtree-fruit-shop-logo-template-designs-fresh-fruit-center-logo-template-designs-png-image_5292681.jpg"
						alt="logo" /></a>
				</div>
				<div
					class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-toggle="minimize">
						<span class="mdi mdi-menu"></span>
					</button>
					<ul class="navbar-nav w-100">
						<li class="nav-item w-100">
							<form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
								<input type="text" class="form-control" placeholder="Tìm kiếm" />
							</form>
						</li>
					</ul>
					<ul class="navbar-nav navbar-nav-right">

						<li class="nav-item nav-settings d-none d-lg-block"><a
							class="nav-link" href="#"> <i class="mdi mdi-view-grid"></i>
						</a></li>
						<li class="nav-item dropdown border-left"><a
							class="nav-link count-indicator dropdown-toggle"
							id="messageDropdown" href="#" data-toggle="dropdown"
							aria-expanded="false"> <i class="mdi mdi-email"></i> <span
								class="count bg-success"></span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="messageDropdown">
								<h6 class="p-3 mb-0">Thông báo Email</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img
											src="https://tiemchupanh.com/wp-content/uploads/2021/04/PHU6655.jpg"
											alt="image" class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Mark đã gửi cho
											bạn</p>
										<p class="text-muted mb-0">1 phút</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img
											src="https://studiochupanhdep.com/Upload/Images/anh-chan-dung-nam.jpeg"
											alt="image" class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Cregh đã gửi cho
											bạn</p>
										<p class="text-muted mb-0">15 phút</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img
											src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/04/anh-con-gai-1-1.jpg"
											alt="image" class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Ly đã gửi cho bạn</p>
										<p class="text-muted mb-0">18 phút</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">3 thông báo</p>
							</div></li>
						<li class="nav-item dropdown border-left"><a
							class="nav-link count-indicator dropdown-toggle"
							id="notificationDropdown" href="#" data-toggle="dropdown"> <i
								class="mdi mdi-bell"></i> <span class="count bg-danger"></span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="notificationDropdown">
								<h6 class="p-3 mb-0">Thông báo hệ thống</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-calendar text-success"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Sự kiên hôm nay</p>
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
										<p class="preview-subject mb-1">Có cập nhật mới</p>
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
										<p class="preview-subject mb-1">Thêm mới quản lý</p>
										<p class="text-muted ellipsis mb-0">Đã thêm mới 2 quản lý!</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">Tất cả thông báo</p>
							</div></li>
						<li class="nav-item dropdown"><a class="nav-link"
							id="profileDropdown" href="#" data-toggle="dropdown">
								<div class="navbar-profile">
									<img class="img-xs rounded-circle"
										src="https://png.pngtree.com/png-clipart/20200727/original/pngtree-fruit-shop-logo-template-designs-fresh-fruit-center-logo-template-designs-png-image_5292681.jpg"
										alt="" />
									<p class="mb-0 d-none d-sm-block navbar-profile-name">Trần
										Đức Lượng</p>
									<i class="mdi mdi-menu-down d-none d-sm-block"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="profileDropdown">
								<h6 class="p-3 mb-0">Cá nhân</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-settings text-success"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Cài đặt</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item"  href="dangxuat">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-logout text-danger"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">Đăng xuất</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">Cài đặt khác</p>
							</div></li>
					</ul>
					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-format-line-spacing"></span>
					</button>
				</div>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<h1 class="text-center text-light mb-3">Thêm sửa xóa Danh mục</h1>
					<form:form action="admin/danhmuc" method="post"
						modelAttribute="danhMuc" class="col-8 m-auto">

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label text-light">Tên
								danh mục</label> <form:input type="text" path="ten" class="form-control text-light"/>

						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label text-light">Ngày
								tạo(tự động)</label> <input class="form-control" disabled="disabled">
						</div>
						<div class="form-floating">
							<form:textarea class="form-control text-light" path="moTa" id="floatingTextarea2" placeholder="Leave a comment here" style="height: 150px"></form:textarea>
							<label for="floatingTextarea2">Mô tả</label>
						</div>
						<button formaction="/admin/danhmuc/taoDanhMuc" class="btn btn-primary m-3">Tạo & Cập nhật</button>

					</form:form>
				</div>

			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>

	<script src="../../assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="../../assets/js/off-canvas.js"></script>
	<script src="../../assets/js/hoverable-collapse.js"></script>
	<script src="../../assets/js/misc.js"></script>
	<script src="../../assets/js/settings.js"></script>
	<script src="../../assets/js/todolist.js"></script>
</body>
</html>