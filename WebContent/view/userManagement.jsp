<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex.entities.User"%>
<%@ page import="ex.entities.Flower"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<style><%@include file="/WEB-INF/css/adminweb.css"%></style>
<style><%@include file="/WEB-INF/css/group.css"%></style>
<title>This is admin page</title>

</head>
<body>
	<!--Chia trang web ra lam hai phan-->


	<!--lam cai navigatop-->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <!-- Brand -->
	<a class="navbar-brand nav-link" href="#">Welcome Admin</a> <!-- Toggler/collapsibe Button -->
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>

	<!-- Navbar links -->
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav ml-auto ">
			 <li class="nav-item">
			<a class="nav-link  " href="web"
			target="_self" style="color: #bf00bf;font-size:18px;font-family: Comic Sans MS"">
			<p>Welcome, ${sessionScope.username}</p> 
			</a>
			</li>
			<li class="nav-item "><a class="nav-link bg-success " href="logout"
				target="_self" style="color: #7f0000;font-size:18px;font-family: Comic Sans MS">Logout</a></li>
		</ul>
	</div>
	</nav> 
	<div class="main ">
		<div class="container-fluid" style="padding: 0;">
			<div class="row">
				<div class="col-sm-2">
					<div class="sidebar">
						<div class="imgcontainer">
							<img src="D:\Notepad++\user.jpg" alt="Avatar">
						</div>
						<a class="active" href="#"><i class="fa fa-heart"></i>Dashboard</a>
						<a href="admin"><i class="fa fa-home"></i>Home</a> <a
							href="#productmanagement"><i class="fa fa-search"></i>Search</a> <a
							href="userManagement"><i class="fa fa-female"></i>USER
							Management</a> <a href="productManagement"><i class="fa fa-gift"></i>Product
							Management</a> <a href="orderManagement"><i class="fa fa-group"></i>Order
							Management</a>

					</div>
				</div>
				<div class="col-sm-10">
					<p><br></p>
					<h2>DANH SÁCH TÀI KHOẢN </h2>
					<p></p>
					<p> Bạn có thể xóa, sửa hoặc thêm tài khoản</p>
					<p></p>
					<p> Thêm User tại đây</p>
						<a class="nav-link" href="createUserByAdmin" target="_self">Thêm tài khoản</a>
					<p><br> </p>
					<div class="content" style="text-align: center">
						<div class ="banner2">
							<div class = "container-fluid">
								<div class ="row">
									<div class =" col-3 col-sm 6">
											<form class="form1">
												<select name="page1" id="record" style="width:160px">
													<option value="page1">1</option>
													<option value="page2">2</option>
													<option value="page3">3</option>
												</select>
												<label for="record" class="label">Record per page:</label></td>
											</form>
									</div>
									<div class ="col-9	 col-sm 6">
										<form method="GET" action="${pageContext.request.contextPath}/searchUser">
											<input type="text"   name="search"/>
											<input type="submit" value="Search" />
											
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="table">
							<table class="table table-bordered">
								<tr>
									<th>ID</td>
									<th>Tên đầy đủ</th>
									<th>Tên đăng nhập</th>
									<th>Mật khẩu</th>
									<th>Email</th>
									<th>Địa chỉ</th>
									<th>Số điện thoại</th>
									<th>Vai trò</th>
									<th>Sửa</th>
									<th>Xóa</th>
								</tr>
								<c:forEach items="${users}" var="user">
								<tr>
									<td>${user.id}</td>
									<td>${user.fullName}</td>
									<td>${user.name}</td>
									<td>${user.pass}</td>
									<td>${user.email}</td>
									<td>${user.address}</td>
									<td>${user.phone}</td>
									<td>${user.role}</td>
									<td><a href="editUser?id=${user.id}" onclick="return confirm('Bạn có muốn sửa thông tin người dùng này?')  ">Edit</a></td>
									<td><a href="deleteUser?id=${user.id}" onclick="return confirm('Bạn có muốn xóa người dùng này?')  ">Delete</a></td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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