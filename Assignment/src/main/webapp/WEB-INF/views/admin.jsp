<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="assets/vendors/jvectormap/jquery-jvectormap.css" />
<link rel="stylesheet"
	href="assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="assets/vendors/owl-carousel-2/owl.carousel.min.css" />
<link rel="stylesheet"
	href="assets/vendors/owl-carousel-2/owl.theme.default.min.css" />
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="assets/css/style.css" />
<!-- End layout styles -->
<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a class="sidebar-brand brand-logo text-light text-decoration-none ms-5" href="#">Fruit store</a> <a
					class="sidebar-brand brand-logo-mini" href="admin"><img
					src="https://play-lh.googleusercontent.com/XVRPD2rIjraO3YGGV5TR19mvTBaQq1t75T39KyvyNyOJgUe5TbgDpYkvjAzz3ELA1vA" alt="logo" /></a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle"
									src="img/${khachhang.urlHinhAnh}" alt="" /> <span
									class="count bg-success"></span>
							</div>
							<div class="profile-name">
								<h5 class="mb-0 text-light">${khachhang.hoTen}</h5>
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
									<p class="preview-subject ellipsis mb-1 text-small">
										Cài đặt tài khoản</p>
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
									<p class="preview-subject ellipsis mb-1 text-small">Đổi mật khẩu</p>
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
									<p class="preview-subject ellipsis mb-1 text-small">Cập nhật tài khoản</p>
								</div>
							</a>
						</div>
					</div>
				</li>
				<li class="nav-item nav-category"><span class="nav-link">Thanh công cụ</span>
				</li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="admin"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">Tổng quát</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					data-toggle="collapse" href="#ui-basic" aria-expanded="false"
					aria-controls="ui-basic"> <span class="menu-icon"> <i
							class="mdi mdi-laptop"></i>
					</span> <span class="menu-title">Sản phẩm</span> <i
						class="menu-arrow"></i>
				</a>
					<div class="collapse" id="ui-basic">
						<ul class="nav flex-column sub-menu">
							<li class="nav-item"><a class="nav-link"
								href="curd-sanpham">CURD Sản phẩm</a></li>
							<li class="nav-item"><a class="nav-link"
								href="ht-sanpham">Hiển thị sản phẩm</a></li>
							<li class="nav-item"><a class="nav-link"
								href="tk-sanpham">Thống kê sản phẩm</a></li>
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
								href="curd-nguoidung">CURD người dùng</a></li>
							<li class="nav-item"><a class="nav-link"
								href="tk-nguoidung">Thống kê người dùng</a></li>
							<li class="nav-item"><a class="nav-link"
								href="tksp-nguoidung">Người theo sản phẩm  </a></li>
							<li class="nav-item"><a class="nav-link"
								href="ht-nguoidung">Hiển thị người dùng</a></li>
							
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
					href="tk-bang"> <span class="menu-icon">
							<i class="mdi mdi-table-large"></i>
					</span> <span class="menu-title">Thống kê theo bảng</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="tk-bieudo"> <span class="menu-icon">
							<i class="mdi mdi-chart-bar"></i>
					</span> <span class="menu-title">Thống  kê theo biểu đồ</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="tk-chitiet"> <span class="menu-icon"> <i
							class="mdi mdi-contacts"></i>
					</span> <span class="menu-title">Thống kê chi tiết</span>
				</a></li>
				
				<li class="nav-item menu-items"><a class="nav-link"
					href="#">
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
						src="https://png.pngtree.com/png-clipart/20200727/original/pngtree-fruit-shop-logo-template-designs-fresh-fruit-center-logo-template-designs-png-image_5292681.jpg" alt="logo" /></a>
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
								<input type="text" class="form-control"
									placeholder="Tìm kiếm" />
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
										<img src="https://tiemchupanh.com/wp-content/uploads/2021/04/PHU6655.jpg" alt="image"
											class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Mark đã gửi cho bạn</p>
										<p class="text-muted mb-0">1 phút</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="https://studiochupanhdep.com/Upload/Images/anh-chan-dung-nam.jpeg" alt="image"
											class="rounded-circle profile-pic" />
									</div>
									<div class="preview-item-content">
										<p class="preview-subject ellipsis mb-1">Cregh đã gửi cho bạn</p>
										<p class="text-muted mb-0">15 phút</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item">
									<div class="preview-thumbnail">
										<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/04/anh-con-gai-1-1.jpg" alt="image"
											class="rounded-circle profile-pic" />
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
										src="img/${khachhang.urlHinhAnh}" alt="" />
									<p class="mb-0 d-none d-sm-block navbar-profile-name">
										${khachhang.hoTen}</p>
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
								<a class="dropdown-item preview-item" href="dangxuat">
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
          </div>
         
        </div>

		</div>

	</div>
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="assets/js/misc.js"></script>


</body>
</html>
