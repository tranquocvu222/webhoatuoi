<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<div class="card" style="width: 39rem;">
		<div class="card-body">
			<h1 class="card-title" style="font-family: oblique">CONTACT US</h1>
		</div>
	</div>
	<div class="container">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="web">Trang chủ</a></li>
			<li class="breadcrumb-item active" aria-current="page">Liên hệ</li>
		</ul>
	</div>
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-7 ">
				<div class="mapouter">
					<div class="gmap_canvas">
						<iframe width="600" height="500" id="gmap_canvas"
							src="https://maps.google.com/maps?q=104%20tr%E1%BA%A7n%20th%E1%BB%A7%20%C4%91%E1%BB%99%2C&t=&z=13&ie=UTF8&iwloc=&output=embed"
							frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
						<a
							href="https://www.embedgooglemap.net/blog/best-wordpress-themes/">
							wordpress themes</a>
					</div>
					<style>
.mapouter {
	position: relative;
	text-align: right;
	height: 500px;
	width: 600px;
}

.gmap_canvas {
	overflow: hidden;
	background: none !important;
	height: 500px;
	width: 600px;
}
</style>
				</div>
			</div>
			<div class="col-md-5">
				<h2 style="margin-top: 40px">Fresh Flower</h2>
				<p>104 Trần Thủ Độ, Khuê Trung, Cẩm Lệ, Đà Nẵng
				<p>Email : tranquocvu22298@gmail.com
				<p>
				<p>Phone : 0585987254</p>
			</div>
		</div>
	</div>
	<form>
		<h2 style="margin-left: 40px">Gửi yêu cầu cho chúng tôi</h2>
		<div class="form-group">
			<label for="fullName " style="margin-left: 30px">Tên đầy đủ</label> <input
				type="text" id="fullName" class="form-control"> <label
				for="phoneNumber" style="margin-left: 30px">Số điện thoại</label> <input
				type="text" id="phoneNumber" class="form-control"> <label
				for="myEmail" style="margin-left: 30px">Địa chỉ email</label> <input
				type="email" id="myEmail" class="form-control"> <label
				for="message" style="margin-left: 30px">Tin nhắn</label> <input
				type="text" id="message" class="form-control">
			<p></p>
			<button type="submit" style="margin-left: 40px"
				class="btn btn-primary">Send</button>
		</div>
	</form>
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
