<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>

	<div class="row" >
		<div class="bg-secondary ">
			<div class="#" id="disappear">
				<h3 class="head text-warning text-left pb-5 pt-4 pr-2">1849 Team</h3>
				<form class="text-warning text-left pb-5 pt-4 pr-2 text-white"name="logoutform" action="/PRJ321x_02_VN_AS3_1/HomeProductController" method="post">
					<p class="text-end"><span>  <i class='fas fa-user-alt'></i> Welcome <%= session.getAttribute("user") %></span> 
					<input class="btn btn-outline-light" type="submit" value="Logout"></p>
				</form>
			</div>
		</div>
			<div class="col-sm-2 navbar bg-dark navbar-dark d-block topnav">
				<div class=" topnav">
				    <ul class="navbar-nav">
				      <li class="nav-item">
				        <a class="nav-link" href="#"> <i class="fab fa-dashcube"></i> Dashboard</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#"> <i class='fas fa-user-alt'></i> Staff Manager</a>
				      </li>
				    </ul>
				</div>
			</div>
  		<div class="col-sm-10 bg-secondary" style="padding-left:0px">
			<img class="w-100 h-25  "alt="picture" src="1045.jpg">

				<h4 class="w-100 text-white">Member of the team</h4>
			  <table class="table table-dark table-hover">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>Name</th>
			        <th>Student ID</th>
			        <th>Class</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			      	<td>1</td>
			        <td>Member 1</td>
			        <td>Member Code 1</td>
			        <td>Class 1</td>
			      </tr>
			      <tr>
			        <td>2</td>
			        <td>Member 2</td>
			        <td>Member Code 2</td>
			        <td>Class 2</td>
			      </tr>
			    </tbody>
			  </table>
		</div>
	</div>
</body>
</html>