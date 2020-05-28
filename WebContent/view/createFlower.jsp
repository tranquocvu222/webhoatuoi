<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex.entities.User"%>
<%@ page import="ex.entities.Flower"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<style><%@include file="/WEB-INF/css/adminweb.css"%></style>
<title>This is admin page</title>
</head>
<body>
<div class = "header">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	 <!-- Brand -->
         <a class="navbar-brand nav-link" href="#">Welcome Admin</a>
		 
         <!-- Toggler/collapsibe Button -->
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
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
</div>
<div class="main ">	
	<div class= "container-fluid" style="padding: 0;">
         <div class= "row">
            <div class ="col-sm-2">
				<div class="sidebar">
					<div class="imgcontainer">
						<img src="D:\Notepad++\user.jpg" alt="Avatar">
					</div>
					<a class="active" href="#"><i class="fa fa-heart"></i>Dashboard</a>
					<a href="admin"><i class="fa fa-home"></i>Home</a>
					<a href="#productmanagement"><i class="fa fa-search"></i>Serch</a>
					<a href="userManagement"><i class="fa fa-female"></i>USER Management</a>
					<a href="productManagement"><i class="fa fa-gift"></i>Product Management</a>
					<a href="orderManagement"><i class="fa fa-group"></i>Order Management</a>
				
				</div>
			</div>
			<div class ="col-sm-10">
               <div class="content" style = "text-align">
               		<p><br></p>
					<p><br></p>
					<div id="loginform">
					<h3 style = "color : red" id="formheading">Thêm Sản Phẩm</h3>
					<form action="<%=request.getContextPath()%>/createFlower"  method="post">
					<table>
					 <tr>
						<td style = "text-align:center" >Loại dịch vụ </td>
						<td style = "text-align:center"> <select name="idService">
		 				 <option value="1">Hoa cưới</option>
		 				  <option value="2">Hoa viếng</option>
		 				   <option value="3">Hoa khai trương</option>
		 				 <option value="4" >Hoa sinh nhật</option>
						</select> <br> <br/></td>
					 </tr>
					  <tr>
						<td style = "text-align:center" >Link hình ảnh </td>
						<td style = "text-align:center" ><input type="text"  name="avatar"/> <br/></td>
					 </tr>
					 <tr>
						 <td style = "text-align:center" >Số lượng còn   </td>
						<td style = "text-align:center" ><input type="text"  name="amount"/> <br/></td>
					 </tr>
					  <tr>
						<td style = "text-align:center" >Tên hoa </td>
						<td style = "text-align:center" ><input type="text"  name="name"/> <br/></td>
					 </tr>
					  <tr>
						<td style = "text-align:center" >Gía hoa </td>
						<td style = "text-align:center" ><input type="text"  name="price"/> <br/></td>
					 </tr>
					  <tr>
						<td colspan="2" style="text-align:center"><input id="log" type="submit"  value="Lưu " name ="submit" ></td>
					 </tr>
					</table>
					
				</form>
				</div>
				</div>
			</div>
		</div>
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