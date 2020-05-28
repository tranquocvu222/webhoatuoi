<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ex.entities.Flower"%>
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

</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-success ">
		<!-- Brand -->
		<a class="navbar-brand" " style="color: white">Đặt ngay :
			0585987254</a>
		<!-- Left -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link bg-success"
				href="introduce" target="_self" style="color: white">Giới thiệu</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle bg-success" href="#" id="navbardrop"
				data-toggle="dropdown" style="color: white"> Dịch vụ </a>
				<div class="dropdown-menu">
					<a class="dropdown-item bg-light" href="weddingPage">Hoa cưới</a> <a
						class="dropdown-item bg-light" href="wreathPage">Hoa viếng</a> <a
						class="dropdown-item bg-light" href="openPage">Hoa khai trương</a>
					<a class="dropdown-item bg-light" href="birthdayPage">Hoa sinh
						nhật</a>
				</div></li>
			<li class="nav-item"><a class="nav-link bg-success "
				href="contact" target="_self" style="color: white">Liên hệ</a></li>
		</ul>
		<!-- Links -->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item "><a class="nav-link bg-dark " href="login"
				target="_self" style="color: white">Đăng nhập</a></li>
		</ul>
	</nav>
	<div class="row">
		<div class="card col-6 col-sm 4" style="width: 39rem;">
		<div class="card-body ">
			<h1 class="card-title" style="font-family: oblique">Fresh Flower
			</h1>
		</div>
		</div>
		<div class="col-3	col-sm 4" style="margin-top: 50px">
			<form method="GET"
				action="${pageContext.request.contextPath}/searchFlowerUser">
				<p style="color: red">Tìm kiếm theo tên hoặc loại sản phẩm</p>
				<input type="text" name="search" /> <input type="submit"
					value="Tìm kiếm" />
			</form>
		</div>
		<div class="col-3	col-sm 4" style="margin-top: 20px">
			<form method="GET"
				action="${pageContext.request.contextPath}/searchFlowerPrice">
				<p style="color: red">Tìm kiếm theo giá sản phẩm</p>
				 <label> Từ: </label> 
     					<select name="price1">
		 				 <option value="0">0</option>
		 				  <option value="200000">200.000 VNĐ</option>
		 				   <option value="300000">300.000 VNĐ</option>
		 				 <option value="400000">400.000 VNĐ</option>
		 				  <option value="500000">500.000 VNĐ</option>
		 				   <option value="600000">600.000 VNĐ</option>
						</select>  <br>
				 <label> Từ: </label> 
     					<select name="price2">
		 				  <option value="800000">800.000 VNĐ</option>
		 				   <option value="1000000">1.000.000 VNĐ</option>
		 				    <option value="1200000">1.200.000 VNĐ</option>
		 				 <option value="1500000">1.500.000 VNĐ</option>
		 				  <option value="2000000">2.000.000 VNĐ</option>
						</select>  <br>
				<input type="submit"
					value="Tìm kiếm" />
			</form>
		</div>
	</div>
	<div class="container">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="web">Trang chủ</a></li>
			<li class="breadcrumb-item active" aria-current="page">Dịch vụ</li>
			<li class="breadcrumb-item active" aria-current="page">Hoa cưới</li>
		</ul>
	</div>
	<div class="card-deck">
		<div class="container-fluid">
			<div class="row">
				<c:forEach items="${flowers}" var="flower">
					<div class="col-md-3">
						<div class="card">
							<c:url value="/image?fname=${flower.avatar}" var="imgUrl"></c:url>
							<img class="card-img-top" src="${imgUrl}" width="700px"
								height="400px" alt="Mane">
							<div class="card-body">
								<h5 class="card-title">${flower.name}</h5>
								<p class="card-text">${flower.price}VNĐ</p>
								<a href="login" onclick="return confirm('Bạn cần đăng nhập để thực hiện thao tác này?')  " class="btn btn-danger" ">Mua ngay</a>
								
							</div>
						</div>
					</div>
				</c:forEach>
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