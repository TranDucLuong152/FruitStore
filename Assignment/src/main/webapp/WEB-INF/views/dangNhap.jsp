<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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


	<div class="m-auto col-6 bg-secondary rounded ">
		<h2 class="text-center">Đăng Nhập</h2>
		<form:form class="m-3" action="/login" method="post" modelAttribute="nguoiDung">
			<div class="mb-3 ">
				<label for="exampleInputEmail1" class="form-label  text-dark">Tên
				tài khoản</label>
			<form:input type="text" path="tenTaiKhoan"
				class="form-control bg-light text-dark" />

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label  text-dark">Mật
				khẩu</label>
			<form:password path="matKhau" class="form-control bg-light text-dark" />

			</div>
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Nhớ mật
					khẩu</label>
			</div>
			<div class="d-flex justify-content-evenly ">
				<button class="btn btn-primary">Đăng Nhập</button>
			</div>

		</form:form>
	</div>
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<script src="assets/js/misc.js"></script>


</body>
</html>