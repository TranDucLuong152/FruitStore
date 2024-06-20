
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
	
<li class="nav-item dropdown"><a class="nav-link"
							id="profileDropdown" href="#" data-toggle="dropdown">
								<div class="navbar-profile">									
									<p class="mb-0 d-none d-sm-block navbar-profile-name text-dark ">
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
	
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="assets/js/misc.js"></script>


</body>
</html>
