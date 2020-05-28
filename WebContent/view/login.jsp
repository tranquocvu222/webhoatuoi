<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
	<div id="wrapper">
		<div id="head">
		<div id= "logo">
			<c:url value="/image?fname=hoa1.png" var="imgUrl"></c:url>
			<img src="${imgUrl}" width="250px" height="200px" alt="logo"/>
			</div>
		</div>
		<div id="loginform">
			<h3 style = "color : red" id="formheading">Đăng nhập tài khoản</h3>
				<%
			String err = request.getParameter("err");
			if ("1".equals(err)) {
				out.print("<h4 style=\"text-align: center;\">Bạn chưa có tài khoản hoặc quên mật khẩu</h4>");
			}
				%>
			<form name= "form1" action="<%=request.getContextPath()%>/login" method="post" >
				<table>
					 <tr>
						<td style = "text-align:center" ><input type="text" placeholder="  Username" id="username" name="username"/> <br/></td>
					 </tr>
					 <tr>
						<td style = "text-align:center" ><input type="password" placeholder=" Password" id="passwords" name="password"/> <br/></td>
					 </tr>
					  <tr>
					<td colspan="2" style="text-align:center"><input id="log" type="submit"  value="Đăng nhập" name ="submit" ></td>
					 </tr>
					  <tr>
						<td style ="text-align:center" > <p> hoặc</p></td>
					 </tr>
					 <tr>
						<td id="regis" colspan="2"  style="text-align:center"><a  href="createUser">Tạo tài khoản mới</a></td>
					 </tr>
					</table>
				</form>	
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