<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="stylesheet.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
	<div class = "row .container">
		<c:forEach var ="product" items = "${productList}">
			<div class ="col-sm-4 ">
				<div class="card ml-3 w-75 mt-3 mb-3" style="margin-right:0px">
					<img class = "card-img-top" src="${product.src}" alt="${product.name}"  onclick="location.href='/PRJ321x_02_VN_AS3_1/InformationProductController?id=${product.id}';">
					<h5 class ="text-uppercase card-title text-center"> ${product.type} </h5>
					<p class ="fw-bold text-center"> ${product.name}</p>
					<p class ="fw-bold text-danger text-center"> $ ${product.price} </p>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class= "row justify-content-center">
		<div class= "col-3 col-lg-2 col-xl-1">
			<c:forEach var = "i" begin ="1" end = "${noOfPage}">
				<c:choose>
					<c:when test="${currentPage eq i}">
						 ${i} 
					</c:when>
					<c:otherwise>
						<a class = "btn btn-outline-info" href="/PRJ321x_02_VN_AS3_1/HomeProductController?page=${i}"> ${i} </a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
	</div>
</body>
</html>