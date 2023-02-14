<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="stylesheet.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class = row>
		<c:forEach var ="product" items = "${result}">
			<div div class ="col-sm-4 ">
				<div class="card ml-3 w-75 mt-3 mb-3 justify-content-center">
					<img class = "card-img-top" src="${product.src}" alt="${product.name}"  onclick="location.href='/PRJ321x_02_VN_AS3_1/InformationProductController?id=${product.id}';">
					<p class ="p-3 mb-2 text-uppercase text-center"> ${product.type} </p>
					<p class ="fw-bold text-center"> ${product.name}</p>
					<p class ="fw-bold text-danger text-center"> $ ${product.price} </p>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>