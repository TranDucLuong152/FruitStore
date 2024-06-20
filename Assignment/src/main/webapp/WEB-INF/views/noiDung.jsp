<%@page import="fpoly.edu.model.KhachHang"%>
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




	<div class="main-panel content">

		<div class=" bg-light">

			<!-- Carousel -->
			<div id="demo" class="carousel slide" data-bs-ride="carousel">

				<!-- Indicators/dots -->
				<div class="carousel-indicators"></div>

				<!-- The slideshow/carousel -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img
							src="https://dohoafx.com/wp-content/uploads/2016/07/shutterstock_108527423_supersize.jpg"
							alt="Los Angeles" class="d-block "
							style="width: 100%; height: 90vh">
						<div class="carousel-caption">
							<h3>Fruit Store</h3>
							<p>Website bán trái cây trực tuyến!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img
							src="https://dohoafx.com/wp-content/uploads/2016/07/shutterstock_108527423_supersize.jpg"
							alt="Chicago" class="d-block " style="width: 100%; height: 90vh">
						<div class="carousel-caption">
							<h3>Fruit Store</h3>
							<p>Website bán trái cây trực tuyến!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img
							src="https://media.istockphoto.com/id/995518546/vi/anh/c%C3%A1c-lo%E1%BA%A1i-tr%C3%A1i-c%C3%A2y-nhi%E1%BB%87t-%C4%91%E1%BB%9Bi-ch%C3%ADn-%C4%91%E1%BA%A7y-m%C3%A0u-s%E1%BA%AFc-d%E1%BA%A1ng-xem-tr%C3%AAn-c%C3%B9ng.jpg?s=612x612&w=0&k=20&c=k2OkpTM9AvQIR_D9Yd19DCU2VlNjEN22w6-WyRYo168="
							alt="New York" class="d-block " style="width: 100%; height: 90vh">
						<div class="carousel-caption">
							<h3>Fruit Store</h3>
							<p>Website bán trái cây trực tuyến!</p>
						</div>
					</div>
				</div>


				<button class="carousel-control-prev" type="button"
					data-bs-target="#demo" data-bs-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#demo" data-bs-slide="next">
					<span class="carousel-control-next-icon"></span>
				</button>
			</div>



		</div>

		<div class="conten-fruit ">
			<!-- About Satrt -->
			<div class="container-fluid py-6 ">
				<div class="container	">
					<div class="row g-5 align-items-center">
						<div class="col-lg-5 wow bounceInUp " data-wow-delay="0.1s">
							<img
								src="https://pendecor.vn/uploads/files/2021/12/29/thiet-ke-cua-hang-hoa-qua-sach-2.jpg"
								class="img-fluid rounded" alt="">
						</div>
						<div class="col-lg-7 wow bounceInUp" data-wow-delay="0.3s">
							<small
								class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-5  mt-2">Về
								chúng tôi</small>
							<h1 class="display-5 mb-4">Có hơn 20 chi nhánh khắp cả nước</h1>
							<p class="mb-4">Đến với chúng tôi bạn sẽ được cung cấp các
								sản phẩm tươi mới nhất, nguồn góc sản phẩm rõ ràng và các nhà
								cung cấp uy tính có nhiều nam trong ngàng.</p>
							<div class="row g-4 text-dark mb-5">
								<div class="col-sm-6">
									<i class="fas fa-share text-primary me-2"></i>Bạn sẽ được nhận
									nhiều ưu đãi
								</div>
								<div class="col-sm-6">
									<i class="fas fa-share text-primary me-2"></i> Cung cấp sản
									phẩm 24/7
								</div>
								<div class="col-sm-6">
									<i class="fas fa-share text-primary me-2"></i>Thao tác dễ dàng
								</div>
								<div class="col-sm-6">
									<i class="fas fa-share text-primary me-2"></i>Giao hàng siêu
									nhanh
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- About End -->


			<!-- Fact Start-->
			<div class="container-fluid faqt py-6">
				<div class="container">
					<div class="row g-4 align-items-center">
						<div class="col-lg-7">
							<div class="row g-4">
								<div class="col-sm-4 wow bounceInUp" data-wow-delay="0.3s">
									<div class="faqt-item bg-primary rounded p-4 text-center">
										<i class="fas fa-users fa-4x mb-4 text-white"></i>
										<h1 class="display-4 fw-bold" data-toggle="counter-up">3</h1>
										<p class="text-dark text-uppercase fw-bold mb-0">Miền
											Trung</p>
									</div>
								</div>
								<div class="col-sm-4 wow bounceInUp" data-wow-delay="0.5s">
									<div class="faqt-item bg-primary rounded p-4 text-center">
										<i class="fas fa-users-cog fa-4x mb-4 text-white"></i>
										<h1 class="display-4 fw-bold" data-toggle="counter-up">10</h1>
										<p class="text-dark text-uppercase fw-bold mb-0">Miền Nam</p>
									</div>
								</div>
								<div class="col-sm-4 wow bounceInUp" data-wow-delay="0.7s">
									<div class="faqt-item bg-primary rounded p-4 text-center">
										<i class="fas fa-check fa-4x mb-4 text-white"></i>
										<h1 class="display-4 fw-bold" data-toggle="counter-up">7</h1>
										<p class="text-dark text-uppercase fw-bold mb-0">Miền Bắc</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- Service Start -->
			<div class="container-fluid bg-light service py-6" id="cuahang">
				<div class="container">
					<div class="text-center wow bounceInUp" data-wow-delay="0.1s">
						<small
							class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3 mt-5">Các
							Cửa hàng liên kết</small>

					</div>
					<div class="row g-4 border border-warning rounded mt-3">
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.1s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-cheese fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Cửa hàng Fruit Xanh</h4>
										<p class="mb-4">Cung cấp các mặt hàng hoa quả đến từ Đà
											Lạt</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.3s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-pizza-slice fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Ông Hai</h4>
										<p class="mb-4">Cung cấp các mặt hàng hoa quả từ Miền Tây</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.5s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-hotdog fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Dừa bến tre</h4>
										<p class="mb-4">Cung cấp các loại dừa từ Bến Tre.</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.7s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-hamburger fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Tây Bắc Fruit</h4>
										<p class="mb-4">Cung cấp các mặt hàng từ Tây Bắc</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.1s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-wine-glass-alt fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Hana Fruit</h4>
										<p class="mb-4">Cung cấp các mặt hàng từ Miền Trung.</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.3s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-walking fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Tây Nguyên fruit</h4>
										<p class="mb-4">Cung cấp các mặt hàng từ Tây Nguyên.</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.5s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-wheelchair fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">USA Fruit</h4>
										<p class="mb-4">Cung cấp các mặt hàng hoa quả đến từ Mỹ.</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp"
							data-wow-delay="0.7s">
							<div class="bg-light rounded service-item">
								<div
									class="service-content d-flex align-items-center justify-content-center p-4">
									<div class="service-content-icon text-center">
										<i class="fas fa-utensils fa-7x text-primary mb-4"></i>
										<h4 class="mb-3">Lee Fruit</h4>
										<p class="mb-4">Cung cấp các mặt hàng hoa quả đến từ Úc.</p>
										<a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Xem
											ngay</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Service End -->


			<!-- Events Start -->
			<div class="container-fluid bg-light event py-6 " id="nhapkhau">
				<div class="container ">
					<div class="text-center wow bounceInUp " data-wow-delay="0.1s">
						<small
							class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3 mt-5">Các
							mặt hàng bán chạy</small>
						<h1 class="display-5 mb-5">Trong nước và nước ngoài</h1>
					</div>
					<div class="tab-class text-center">
						<ul
							class="nav d-inline-flex justify-content-center mb-5 wow bounceInUp"
							data-wow-delay="0.1s">
							<li class="nav-item p-2"><a
								class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill active text-decoration-none"
								data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
									style="width: 150px;">Hoa quả Mỹ </span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none "
								data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
									style="width: 150px;">Hoa quả Úc</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill text-decoration-none "
								data-bs-toggle="pill" href="#tab-3"> <span class="text-dark"
									style="width: 150px;">Hoa quả Tây Bắc</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill text-decoration-none "
								data-bs-toggle="pill" href="#tab-4"> <span class="text-dark"
									style="width: 150px;">Hoa quả Đà Lạt</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-5"> <span class="text-dark"
									style="width: 150px;">Hoa quả Miền Tây</span>
							</a></li>
						</ul>
						<div class="tab-content border border-warning rounded ">
							<div id="tab-1" class="tab-pane fade show p-0 active">
								<div class="row g-4">
									<div class="col-lg-12">
										<div class="row g-4">
											<c:forEach items="${hoaquaMy.content}" var="item">
												<div class="col-md-6 col-lg-3 wow bounceInUp"
													data-wow-delay="0.7s">
													<div class="event-img position-relative">
														<img class="img-fluid rounded ms-5"
															src="/img/${item.urlHinhAnh}" alt=""
															style="width: 25px; height: 5vh">
														<div class="event-overlay d-flex flex-column p-4">
															<h4 class="me-auto">${item.ten}</h4>
															<a href="" data-lightbox="event-17" class="my-auto"><i
																class="fas fa-search-plus text-dark fa-2x"></i></a>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
							<div id="tab-2" class="tab-pane fade show p-0">
								<div class="row g-4">
									<div class="col-lg-12">
										<div class="row g-4">
											<c:forEach items="${hoaquaUc.content}" var="item">
												<div class="col-md-6 col-lg-3 wow bounceInUp"
													data-wow-delay="0.7s">
													<div class="event-img position-relative">
														<img class="img-fluid rounded ms-5"
															src="/img/${item.urlHinhAnh}" alt=""
															style="width: 25px; height: 5vh">
														<div class="event-overlay d-flex flex-column p-4">
															<h4 class="me-auto">${item.ten}</h4>
															<a href="img/event-8.jpg" data-lightbox="event-17"
																class="my-auto"><i
																class="fas fa-search-plus text-dark fa-2x"></i></a>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
							<div id="tab-3" class="tab-pane fade show p-0">
								<div class="row g-4">
									<div class="col-lg-12">
										<div class="row g-4">

											<c:forEach items="${hoaquaTayBac.content}" var="item">
												<div class="col-md-6 col-lg-3 wow bounceInUp"
													data-wow-delay="0.7s">
													<div class="event-img position-relative">
														<img class="img-fluid rounded ms-5"
															src="/img/${item.urlHinhAnh}" alt=""
															style="width: 25px; height: 5vh">
														<div class="event-overlay d-flex flex-column p-4">
															<h4 class="me-auto">${item.ten}</h4>
															<a href="img/event-8.jpg" data-lightbox="event-17"
																class="my-auto"><i
																class="fas fa-search-plus text-dark fa-2x"></i></a>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
							<div id="tab-4" class="tab-pane fade show p-0">
								<div class="row g-4">
									<div class="col-lg-12">
										<div class="row g-4">
											<c:forEach items="${hoaquaDaLat.content}" var="item">
												<div class="col-md-6 col-lg-3 wow bounceInUp"
													data-wow-delay="0.7s">
													<div class="event-img position-relative">
														<img class="img-fluid rounded ms-5"
															src="/img/${item.urlHinhAnh}" alt=""
															style="width: 25px; height: 5vh">
														<div class="event-overlay d-flex flex-column p-4">
															<h4 class="me-auto">${item.ten}</h4>
															<a href="img/event-8.jpg" data-lightbox="event-17"
																class="my-auto"><i
																class="fas fa-search-plus text-dark fa-2x"></i></a>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
							<div id="tab-5" class="tab-pane fade show p-0">
								<div class="row g-4">
									<div class="col-lg-12">
										<div class="row g-4">
											<c:forEach items="${hoaquaMienTay.content}" var="item">
												<div class="col-md-6 col-lg-3 wow bounceInUp"
													data-wow-delay="0.7s">
													<div class="event-img position-relative">
														<img class="img-fluid rounded ms-5"
															src="/img/${item.urlHinhAnh}" alt=""
															style="width: 25px; height: 5vh">
														<div class="event-overlay d-flex flex-column p-4">
															<h4 class="me-auto">${item.ten}</h4>
															<a href="img/event-8.jpg" data-lightbox="event-17"
																class="my-auto"><i
																class="fas fa-search-plus text-dark fa-2x"></i></a>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Events End -->


			<!-- Menu Start -->
			<div class="container-fluid menu bg-light py-6 my-6" id="noidia">
				<div class="container">
					<div class="text-center wow bounceInUp" data-wow-delay="0.1s">
						<small
							class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-3 mt-3">Menu</small>
						<h1 class="display-5 mb-5">Tất cả các mặt hàng</h1>
					</div>
					<div class="tab-class text-center">
						<ul
							class="nav d-inline-flex justify-content-center mb-5 wow bounceInUp"
							data-wow-delay="0.1s">
							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill active text-decoration-none "
								data-bs-toggle="pill" href="#tab-6"> <span class="text-dark"
									style="width: 160px;">Hoa quả Tây Nguyên</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex mx-2 py-2 border border-primary bg-light rounded-pill text-decoration-none "
								data-bs-toggle="pill" href="#tab-7"> <span class="text-dark"
									style="width: 150px;">Hoa quả Thái Lan</span>
							</a></li>

							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-8"> <span class="text-dark"
									style="width: 150px;">Hoa quả Miền Trung </span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-9"> <span class="text-dark"
									style="width: 150px;">Hoa quả Trung Quốc </span>
							</a></li>
							<li class="nav-item p-2 me-3"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-10"> <span
									class="text-dark" style="width: 150px;">Hoa quả Nhật Bản</span>
							</a></li>
							<li class="nav-item p-2 "><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-11"> <span
									class="text-dark" style="width: 150px;">Hoa quả Mỹ</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-12"> <span
									class="text-dark" style="width: 150px;">Hoa quả Úc</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-13"> <span
									class="text-dark" style="width: 150px;">Hoa quả Đà Lạt</span>
							</a></li>
							<li class="nav-item p-2"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-14"> <span
									class="text-dark" style="width: 150px;">Hoa quả Tây Bắc</span>
							</a></li>
							<li class="nav-item p-2 me-3"><a
								class="d-flex py-2 mx-2 border border-primary bg-light rounded-pill text-decoration-none"
								data-bs-toggle="pill" href="#tab-15"> <span
									class="text-dark" style="width: 150px;">Hoa quả Miền Tây</span>
							</a></li>
						</ul>
						<div class="tab-content border border-warning rounded  ">
							<div id="tab-6" class="tab-pane fade show p-0 active">
								<div class="row g-4">
									<c:forEach items="${hoaquaTayNguyen.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>

											</div>
										</div>
									</c:forEach>


								</div>
							</div>
							<div id="tab-7" class="tab-pane fade show p-0">
								<div class="row g-4">
									<c:forEach items="${hoaquaThaiLan.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<div id="tab-8" class="tab-pane fade show p-0">
								<div class="row g-4">

									<c:forEach items="${hoaquaMienTrung.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
							<div id="tab-9" class="tab-pane fade show p-0">
								<div class="row g-4">

									<c:forEach items="${hoaquaTrungQuoc.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
							<div id="tab-10" class="tab-pane fade show p-0">
								<div class="row g-4">

									<c:forEach items="${hoaquaNhatBan.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
							<div id="tab-11" class="tab-pane fade show p-0">
								<div class="row g-4">
									<c:forEach items="${hoaquaMy.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<div id="tab-12" class="tab-pane fade show p-0">
								<div class="row g-4">
									<c:forEach items="${hoaquaUc.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<div id="tab-13" class="tab-pane fade show p-0">
								<div class="row g-4">
									<c:forEach items="${hoaquaDaLat.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<div id="tab-14" class="tab-pane fade show p-0">
								<div class="row g-4">
									<c:forEach items="${hoaquaTayBac.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<div id="tab-15" class="tab-pane fade show p-0">
								<div class="row g-4">
									<c:forEach items="${hoaquaMienTay.content}" var="item">
										<div class="col-lg-6 wow bounceInUp" data-wow-delay="0.1s">
											<div class="menu-item d-flex align-items-center">
												<img class="flex-shrink-0 img-fluid rounded-circle"
													src="/img/${item.urlHinhAnh}" alt=""
													style="width: 55px; height: 55px">
												<div class="w-100 d-flex flex-column text-start ps-4">
													<div
														class="d-flex justify-content-between border-bottom border-primary pb-2 mb-2">
														<h4>${item.ten }</h4>
														<h4 class="text-primary">${item.gia}VND/KG</h4>
													</div>
													<p class="mb-0">${item.moTa}</p>
												</div>
												<%
												HttpSession sessions = request.getSession(false);
												KhachHang username = null;
												if (sessions != null) {
													username = (KhachHang) session.getAttribute("khachhang");
												}

												if (username != null) {
												%>
												<a class="btn btn-success m-2"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												} else {
												%>
												<a class="btn btn-success m-2" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop"
													href="/add-to-cart?sanpham&idSPham=${item.maSanPham}&idNguoiDung=${khachhang.tenTaiKhoan}">buy</a>

												<%
												}
												%>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Menu End -->

			
			<div
				class="container-fluid footer py-6 my-6 mb-0 bg-light wow bounceInUp"
				data-wow-delay="0.1s">
				<div class="container" id="lienhe">
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<div class="footer-item">
								<h1 class="text-primary">
									Fruit<span class="text-dark">Store</span>
								</h1>
								<p class="lh-lg mb-4">There cursus massa at urnaaculis
									estieSed aliquamellus vitae ultrs condmentum leo massamollis
									its estiegittis miristum.</p>

							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="footer-item">
								<h4 class="mb-4">Fruit Store</h4>
								<div class="d-flex flex-column align-items-start">
									<a class="text-body mb-3" href=""><i
										class="fa fa-check text-primary me-2"></i>Cheese Burger</a> <a
										class="text-body mb-3" href=""><i
										class="fa fa-check text-primary me-2"></i>Sandwich</a> <a
										class="text-body mb-3" href=""><i
										class="fa fa-check text-primary me-2"></i>Panner Burger</a> <a
										class="text-body mb-3" href=""><i
										class="fa fa-check text-primary me-2"></i>Special Sweets</a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<div class="footer-item">
								<h4 class="mb-4">Contact Us</h4>
								<div class="d-flex flex-column align-items-start">
									<p>
										<i class="fa fa-map-marker-alt text-primary me-2"></i> 123
										Street, Đà Nẵng, VN
									</p>
									<p>
										<i class="fa fa-phone-alt text-primary me-2"></i> (+012)
										1234567
									</p>
									<p>
										<i class="fas fa-envelope text-primary me-2"></i>
										info@example.com
									</p>
									<p>
										<i class="fa fa-clock text-primary me-2"></i> 26/7 Hours
										Service
									</p>
								</div>
							</div>
						</div>
						<!-- Button trigger modal -->


						<!-- Modal -->
						<div class="modal fade " id="staticBackdrop"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog ">
								<div class="modal-content bg-light">
									<div class="modal-header bg-light">
										<h1 class="modal-title fs-5" id="staticBackdropLabel">Thông
											báo</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">Phải đăng nhập mới mua hàng!</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<a class="btn btn-primary" href="dangnhap">Đăng nhập</a>
									</div>
								</div>
							</div>
						</div>


						<div class="col-lg-3 col-md-6">
							<div class="footer-item">
								<h4 class="mb-4">Social Gallery</h4>
								<div class="row g-2">
									<div class="col-4">
										<i class="bi bi-facebook text-primary"></i>

									</div>
									<div class="col-4">
										<i class="bi bi-youtube text-danger"></i>
									</div>
									<div class="col-4">
										<i class="bi bi-github text-warning"></i>
									</div>
									<div class="col-4">
										<i class="bi bi-browser-chrome "></i>
									</div>
									<div class="col-4">
										<i class="bi bi-envelope-at-fill text-primary"></i>
									</div>
									<div class="col-4">
										<i class="bi bi-reddit text-danger"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script src="assets/vendors/js/vendor.bundle.base.js"></script>

	<script src="assets/js/misc.js"></script>


</body>
</html>
