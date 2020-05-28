<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ page import="ex.entities.User"%>
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
		<li class="nav-item"><a class="nav-link bg-success" href="introduceUser"
				target="_self" style="color: white">Giới thiệu</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle bg-success" href="#" id="navbardrop"
				data-toggle="dropdown" style="color: white"> Dịch vụ </a>
				<div class="dropdown-menu">
					<a class="dropdown-item bg-light" href="weddingPageUser">Hoa cưới</a>
					<a class="dropdown-item bg-light" href="wreathPageUser">Hoa viếng</a> <a
						class="dropdown-item bg-light" href="openPageUser">Hoa khai trương</a>
					<a class="dropdown-item bg-light" href="birthdayPageUser">Hoa sinh
						nhật</a>
				</div></li>
			<li class="nav-item"><a class="nav-link bg-success " href="contactUser"
				target="_self" style="color: white">Liên hệ</a></li>
		</ul>
		<!-- Links -->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
			<a class="nav-link  " href="web"
			target="_self" style="color: #bf00bf;font-size:18px;font-family: Comic Sans MS"">
			<p>Welcome, ${sessionScope.username}</p>
			<%-- <% 
			User userBean = (User) request.getSession().getAttribute("userBean");
			out.print("Welcome " + userBean.getName());
			%> --%>
			</a>
			</li>
			<li class="nav-item "><a  href="cart2"
				target="_self" style="color: white;color:#d6d60c;font-size:18px;font-family: Comic Sans MS"><i class="fa fa-shopping-cart" style="font-size:32px;color : #d6d60c"></i>Giỏ hàng</a><br>
				</li>
			<li class="nav-item "><a class="nav-link bg-success " href="logout"
				target="_self" style="color: #7f0000;font-size:18px;font-family: Comic Sans MS">Logout</a></li>
		</ul>
	</nav>
	<div class="card" style="width: 39rem;">
		<div class="card-body">
			<h1 class="card-title" style="font-family: oblique">Fresh Flower
			</h1>
		</div>
	</div>
	<div class="container">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="user">Trang chủ</a></li>
			<li class="breadcrumb-item active" aria-current="page">Giới
				thiệu</li>
		</ul>
	</div>
	<div class="row">
		<div class="col-sm-5">
			<c:url value="/image?fname=shop.jpg" var="imgUrl"></c:url>
			<img class="card-img-top" id="line" src="${imgUrl}"
				alt="liverpool">
		</div>
		<div class="col-sm-7">
			<h4>Đội ngũ Fresh Flower</h4>
			<p class="card-text">Với Fresh Flowers - một trong những shop đặt
				hoa tươi online nổi tiếng ở Đà Nẵng luôn là điểm đến cho những người
				yêu hoa hồng tặng sinh nhật. Hai loại hồng được yêu thích là hồng
				kem, hồng đỏ. Hoa ở Trà Flowers cũng có loại hoa bó chỉ từ 599K, với
				giấy gói sang trọng, thanh lịch. Không cần là ngày sinh nhật, cứ là
				một ngày bình thường, tặng người yêu dấu của mình cũng dễ thương hết
				nấc. Ngoài ra bạn còn được miễn phí ship trên toàn quốc Nhắc đến
				Fresh Flower, không còn quá xa lạ với những bạn thích chọn hoa phối
				kèm với đồ trang trí. Một bó hoa hồng tươi rói, gửi đến cùng tấm
				thiệp viết tay mừng sinh nhật crush thì còn gì bằng. Biến người lạ
				thành người thương trong tích tắc. Lên web shop đặt hoa online chưa
				đầy hai tiếng, hoa đến thẳng bàn crush luôn. Fresh Flower cũng là
				một trong những shop hoa tươi online được một lượng fans yêu thích
				đáng kể . Dịch vụ đặt hoa tươi online hiện nay cực kỳ được ưa
				chuộng, vì vậy những quan tâm, yêu thương, dành tình cảm cho nhau
				hằng ngày dù không ở gần nhau, cũng dễ dàng trao gửi hơn rất nhiều.
				Chỉ cần vài yêu thương nhỏ cũng làm nên những điều đáng nhớ đặc biệt
				trong cuộc đời một ai đó. Gieo yêu thương ngọt ngào hơn khi đã có
				web online FreshFlower. Bên cạnh việc đảm bảo hoa tươi có chất lượng
				để phục vụ khách hàng tốt nhất, ngoài ra cũng luôn chú trọng đến
				phương pháp và phong cách phục vụ để mọi khách hàng khi đặt hàng từ
				dịch vụ hoa của Hoa tươi Thạch Thảo sẽ luôn thấy rằng mình là đặc
				biệt quan trọng với toàn thể nhân viên Fresh Flower.</p>
		</div>
	</div>
	<h4 id="head2">Hình ảnh feedback của khách hàng</h4>
	<div class="card-deck">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="card">
					<c:url value="/image?fname=it1.jpg" var="imgUrl"></c:url>
						<img class="card-img-top" src="${imgUrl}" width="700px"
							height="400px" alt="Mane">
						<div class="card-body">
							<h5 class="card-title"></h5>
							<p class="card-text"></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 ">
					<div class="card">
					<c:url value="/image?fname=it2.jpg" var="imgUrl"></c:url>
						<img class="card-img-top" src="${imgUrl}" width="700px"
							height="400px" alt="Salah">
						<div class="card-body">
							<h5 class="card-title"></h5>
							<p class="card-text"></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 ">
					<div class="card">
					<c:url value="/image?fname=it3.jpg" var="imgUrl"></c:url>
						<img class="card-img-top" src="${imgUrl}" width="700px"
							height="400px" alt="Salah">
						<div class="card-body">
							<h5 class="card-title"></h5>
							<p class="card-text"></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 ">
					<div class="card">
					<c:url value="/image?fname=it4.jpg" var="imgUrl"></c:url>
						<img class="card-img-top" src="${imgUrl}" width="700px"
							height="400px" alt="Salah">
						<div class="card-body">
							<h5 class="card-title"></h5>
							<p class="card-text"></p>
						</div>
					</div>
				</div>
			</div>
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