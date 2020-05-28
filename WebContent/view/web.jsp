<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Web Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<style><%@include file="/WEB-INF/css/lv.css"%></style>
 <script src="WEB-INF/js/buy.js"></script>
 <script type="text/javascript" src="WEB-INF/js/buy.js" ></script>


</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-success ">
		<!-- Brand -->
		<a class="navbar-brand" " style="color: white">Đặt ngay : 0585987254</a>
		<!-- Left -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link bg-success" href="introduce"
				target="_self" style="color: white">Giới thiệu</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle bg-success" href="#" id="navbardrop"
				data-toggle="dropdown" style="color: white"> Dịch vụ </a>
				<div class="dropdown-menu">
					<a class="dropdown-item bg-light" href="weddingPage">Hoa cưới</a>
					<a class="dropdown-item bg-light" href="wreathPage">Hoa viếng</a> <a
						class="dropdown-item bg-light" href="openPage">Hoa khai trương</a>
					<a class="dropdown-item bg-light" href="birthdayPage">Hoa sinh
						nhật</a>
				</div></li>
			<li class="nav-item"><a class="nav-link bg-success " href="contact"
				target="_self" style="color: white">Liên hệ</a></li>
		</ul>
		<!-- Links -->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item "><a class="nav-link bg-dark " href="login"
				target="_self" style="color: white">Đăng nhập</a></li>
		</ul>
	</nav>
	<div id="myCarousel" class="carousel carousel-fade slide border"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<c:url value="/image?fname=banner1.png" var="imgUrl"></c:url>
				<img class="d-block w-100" src="${imgUrl}"
					width="700px" height="300px" alt="Liverpool">
			</div>
			<div class="carousel-item">
				<c:url value="/image?fname=bn11.jpg" var="imgUrl"></c:url>
				<img class="d-block w-100" src="${imgUrl}"
					width="700x" height="300px" alt="Logo">
			</div>
			<div class="carousel-item">
				<c:url value="/image?fname=banner7.png" var="imgUrl"></c:url>
				<img class="d-block w-100" src="${imgUrl}"
					width="700px" height="300px" alt="Champion">
			</div>
		</div>
		
		<!-- Controls -->
		<a class="carousel-control-prev" href="#myCarousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#myCarousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	<div class="card  ">
			<div class="card-body"  >
			<c:url value="/image?fname=banners.png" var="imgUrl"></c:url>
							<img class="card-img-top" src="${imgUrl}"
								width="100%" height="90px" alt="banner">
			</div>
		</div>
	<p></p>
	<h4 class="mb-4 " style="text-align: center">Hoa bán chạy</h4>
	<div class="card-deck">
		<div class="container-fluid">
			<div class="row">
				<c:forEach items="${flowers}" var="flower">
					<div class="col-md-4">
						<div class="card">
							<c:url value="/image?fname=${flower.avatar}" var="imgUrl"></c:url>
							<img class="card-img-top" src="${imgUrl}"
								width="400px" height="350px" alt="Mane">
							<div class="card-body">
								<h5 class="card-title">${flower.name}</h5>
								<p class="card-text">${flower.price} VNĐ</p>
								<a href="login" onclick="return confirm('Bạn cần đăng nhập để thực hiện thao tác này?')" class="btn btn-success" ">Mua ngay</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<p><br><p>
	<div class="card col-12 col-sm 12" ">
			<div class="card-body"  style="background-color: #e5e5e5">
				<h5 class="card-title">Fresher Flower</h5>
					<p class="card-text" style="font-family: oblique">Hệ thống cửa hàng hoa tươi Fresh Flower - freshflower.com.vn nhằm cung cấp dịch vụ hoa tươi uy tín, 
					chất lượng, hoa tươi mới, rẻ đẹp. Đặc biệt miễn phí giao hàng nội thành thành phố và thị trấn. Nhận đặt hàng 
					online 24/24. Nhận làm hoa theo yêu cầu của khách hàng
					Hotline : 0901897868 để được tư vấn và hỗ trợ.
					Shop hoa tươi các tỉnh
					Xem Thêm Các Shop Hoa Khác</p>
			</div>
		</div>
	<nav
		class=" navbar navbar-expand-sm bg-light navbar-light justify-content-center">
		Coppyright 2019@ Fresh Flower</nav>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>