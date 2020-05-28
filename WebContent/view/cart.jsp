<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex.entities.User"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

   	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	  <style><%@include file="/WEB-INF/css/lv.css"%></style>
	<style><%@include file="/WEB-INF/css/facebook.css"%></style>
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
			<a class="nav-link  " href="#"
			target="_self" style="color: #bf00bf;font-size:18px;font-family: Comic Sans MS"">
			<p>Welcome, ${sessionScope.username}</p>
			</a>
			</li>
			<li class="nav-item "><a  href="cart"
				target="_self" style="color: white;color:#d6d60c;font-size:18px;font-family: Comic Sans MS"><i class="fa fa-shopping-cart" style="font-size:32px;color : #d6d60c"></i>Giỏ hàng</a><br>
				</li>
			<li class="nav-item "><a class="nav-link bg-success " href="logout"
				target="_self" style="color: #7f0000;font-size:18px;font-family: Comic Sans MS">Logout</a></li>
		</ul>
	</nav>
		<div class="container">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="user">Trang chủ</a></li>
			<li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
			
		</ul>
		</div>
		 <div id="wrapper">
		<div class="table">
							<form name= "form1" action="<%=request.getContextPath()%>/cart2" method="get" >
							<table class="table table-bordered" cellpadding ="2" cellspacing="2" border="1">
							 	
								<tr>
									<th>ID</td>
									<th>Hình ảnh </th>
									<th>Tên</th>
									<th>Gía tiền</th>
									<th>Số lượng</th>
									<th>Xóa</th>
									<th>Thành tiền</th>
								</tr>
								<c:set var = "s" value ="0"></c:set>
								<c:forEach items="${order.items}" var="item">
									<c:set var = "s" value = "${s + item.amount*item.flower.price}"></c:set>
									<tr>
										<td><input  disabled="disabled" name ="flowerid" value="${item.flower.id}"></td>
										<td>
											<div class = "img-container">
											<c:url value="/image?fname=${item.flower.avatar}" var="imgUrl"></c:url>
											<img height="70" width="90" src="${imgUrl}" />
											</div>
										</td>
										<td><input  disabled="disabled" name ="flowername" value="${item.flower.name}"></td>
										<td><input disabled="disabled" name ="flowerprice" value="${item.flower.price}"> VNĐ</td>
										<td><input  disabled="disabled" name ="floweramount" value="${item.amount}"></td>
										<td><a href="deleteCart?id=${item.flower.id}" onclick="return confirm('Bạn muốn xóa sản phẩm này?')">Delete</a></td>
										<td><input disabled="disabled" name ="flowersum" value="${item.amount*item.flower.price}"> VNĐ</td>
									</tr>
								</c:forEach>
								
								<tr>	
									<td colspan = "6" align = "right">Tổng tiền</td>
									<td>${s} VNĐ</td>
								</tr>
								 <tr>
						<%-- 		<td colspan="6" style="text-align:center">
								<input  disabled="disabled"  name ="username" value="${sessionScope.username}"></td> --%>
								
								 </tr>
								 <!--  <tr>
								<td colspan="6" style="text-align:center"><input id="log" type="submit"  value="Xác nhận mua " name ="submit" ></td>
							
								 </tr> --> 
							</table>
										<!-- 	<input type="text"   name="search"/>
											<input type="submit" value="Search" /> -->
						 <label>Xác nhận sản phẩm đã chọn</label> 
     					<select name="usn">
		 				 <option value="${sessionScope.username}">Đã đúng sản phẩm cần mua</option>
						</select>  <br>
						<input type="submit"
						value="Xác nhận" />					
						</form>
					</div>
					<p><br>Thông tin nhận hàng<p><br>
					<div class="table">
							<table class="table table-bordered">
								<tr>
									<th>Tên đầy đủ</th>
									<th>Tên đăng nhập</th>
									<th>Email</th>
									<th>Địa chỉ</th>
									<th>Số điện thoại</th>	
								</tr>
								<c:forEach items="${users}" var="user">
								<tr>
									<td>${user.fullName}</td>
									<td>${user.name}</td>
									<td>${user.email}</td>
									<td>${user.address}</td>
									<td>${user.phone}</td>
								</tr>
								</c:forEach>
								<!-- <tr>
								<td colspan="4" style="text-align:center"><input id="log" type="submit"  value="Xác nhận mua " name ="submit" ></td>
								 </tr> -->
							</table>
							<br></br>
							<p>Đơn hàng của bạn</p>
							<table class="table table-bordered"">
							 	
								<tr>
									<th>Hình ảnh </th>
									<th>Tên</th>
									<th>Gía tiền</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
								</tr>
								<c:set var = "s" value ="0"></c:set>
								<c:forEach items="${order.items}" var="item">
									<c:set var = "s" value = "${s + item.amount*item.flower.price}"></c:set>
									<tr>
										<td>
											<div class = "img-container">
											<c:url value="/image?fname=${item.flower.avatar}" var="imgUrl"></c:url>
											<img height="70" width="90" src="${imgUrl}" />
											</div>
										</td>
										<td><input  disabled="disabled" name ="flowername" value="${item.flower.name}"></td>
										<td><input disabled="disabled" name ="flowerprice" value="${item.flower.price}"> VNĐ</td>
										<td><input  disabled="disabled" name ="floweramount" value="${item.amount}"></td>
										<td><input disabled="disabled" name ="flowersum" value="${item.amount*item.flower.price}"> VNĐ</td>
									</tr>
								</c:forEach>
								
								<tr>	
									<td colspan = "3" align = "right">Tổng tiền</td>
									<td>${s} VNĐ</td>
								</tr>
								 <tr>
						<%-- 		<td colspan="6" style="text-align:center">
								<input  disabled="disabled"  name ="username" value="${sessionScope.username}"></td> --%>
								
								 </tr>
								 <!--  <tr>
								<td colspan="6" style="text-align:center"><input id="log" type="submit"  value="Xác nhận mua " name ="submit" ></td>
							
								 </tr> --> 
							</table>
						</div>
						
	</div>
	
	
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>