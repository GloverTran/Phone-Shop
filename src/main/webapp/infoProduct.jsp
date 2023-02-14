<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp"/>
		<div class = "row justify-content-center">
			<div class= "p-5 col-xl-3 col-lg-4">
				<img class="img-fluid"alt="${product.name}" src="${product.src}">
				<p class = "p-3 mb-2 text-uppercase text-center">${product.type}</p>
				<p class = "fw-bold text-center"> ${product.name} </p>
				<p class = "fw-bold text-danger text-center">$ ${product.price} </p>
			</div>
			<div class = "p-5 col-xl-3 col-lg-4">
				<p>${product.description}</p>
				<a class = "btn- btn-success" href = "/PRJ321x_02_VN_AS3_1/AddToCartController?id=${product.id}&action=add">Add to cart</a>
			</div>
		</div>
	<c:import url = "footer.jsp"/>
</body>
</html>