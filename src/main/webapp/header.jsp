<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="stylesheet.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<div class = "header overflow-hidden pr-0 pl-0 pb-10 bg-dark">
			<div class= "col-md-12 h-25">
			<img alt="logo" src="img/logo.png" class= "rounded-circle" style="height: 65px; float: center">
			<h1 class="text-white"> My Website </h1>
			</div> 	
	</div>
	
	<div class = "topnav navbar-nav navbar-expand-sm navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      		<span class="navbar-toggler-icon"></span>
    	</button>
    	<div class="collapse navbar-collapse" id="collapsibleNavbar">
    	   	<ul class="navbar-nav">
        		<li class="nav-item">
          			<a class="nav-link" href="/PRJ321x_02_VN_AS3_1/HomeProductController">Home</a>
        		</li>
       			 <li class="nav-item">
          			<a class="nav-link" href="/PRJ321x_02_VN_AS3-1/URLController?action=product">Products</a>
        		</li>
        		<li class="nav-item">
        			  <a class="nav-link" href="/PRJ321x_02_VN_AS3_1/URLController?action=about">About us</a>
       			 </li>    
       			 <li class="nav-item">
       			       <a class="nav-link" href="#" >
	      		     	<form class="searchbar" name ="searchform" action="search" method="post">
							<select name ="categories" class ="selectcategories">
								<option value = "category1">Category 1</option>
								<option value = "category1">Category 2</option>
							</select>
							<input class="itemname" type="text" name="s" placeholder="Search..">
							<button type="submit"><i class="fa fa-search"></i></button>
						</form>
      		     	</a>
       			 </li>
      		</ul>
      		<ul class="navbar-nav ml-auto">
      		     <li class="nav-item">
      		     	<a class="nav-link" href="/PRJ321x_02_VN_AS3_1/URLController?action=Register" >Register</a>
        			<a class="nav-link" href="/PRJ321x_02_VN_AS3_1/URLController?action=login" >Login</a>
       			 </li> 
      		</ul>
			</div> 	
		</div>
</body>
</html>