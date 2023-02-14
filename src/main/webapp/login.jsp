<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
      		</ul>
      		<ul class="navbar-nav ml-auto">
      		     <li class="nav-item">
      		     	<a class="nav-link" href="/PRJ321x_02_VN_AS3_1/URLController?action=Register" >Register</a>
        			<a class="nav-link" href="/PRJ321x_02_VN_AS3_1/URLController?action=login" >Login</a>
       			 </li> 
      		</ul>
			</div> 	
	</div>
	<div class="row" style="margin-right: 0px; height:100%;">
		<div class="col-sm-6 p-6 text-center">
			<form action="login" name="loginform" onsubmit="return validate()" method="post">
				<div class="container">
					<h2>
						<b>Sign in</b>
					</h2>
					<%
					Cookie[] cookies = request.getCookies();
					String value ="";
					if(cookies != null){
						for(Cookie retrievedCookies: cookies){
							if(retrievedCookies.getName().equals("username")){
								value = retrievedCookies.getValue();
							}
						}
					}
					if(value == ""){
					%>
					<input type="text" placeholder="Enter Username" name="username">
					<%}else{ %>
					<input type="text" id="username" name="username" value=<%=value %>>
					<%} %>
					<input type="password" id="password" placeholder="Enter Password" name="password">
					<div class="container" style="background-color: #f1f1f1">
						<h4><a class="psw text-muted" href="#">Forgot your password ?</a></h4>
						<button type="submit" class="w3-button w3-red w3-round-xxlarge w-25">LOGIN</button>
					</div>

					<label> <input type="checkbox" checked="checked"
						name="remember"> Remember me
					</label>
					<div class="error">
					<%
				    	String error =(String) session.getAttribute("error");
				    	if(error != null){
				    		out.println(error);
				    	}
			    	%>
					</div>
				</div>
			</form>
		</div>
		<div class="col-sm-6 p-6 text-center col bg-dark text-white">
			<div style="margin-top: 5rem;">
				<h1>Welcome Back!</h1>
				<h4>To keep connected with us please login with your personal info</h4>
			</div>
		</div>
		<script>
		 function validate(){
				var u = document.getElementById("username").value;
				var p = document.getElementById("password").value;
				if(u == ""){
					alert("Please enter your Username");
					return false;
				}
				if(p ==""){
					alert("Please enter your Password");
					return false;
				}
					return true;
			}
		</script>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>