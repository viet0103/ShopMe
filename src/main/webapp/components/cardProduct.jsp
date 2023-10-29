<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%= request.getContextPath() %>/assets/css/bootstrap.min.css?version=1" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/tiny-slider.css?version=1" rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/page.css?version=1" rel="stylesheet">
</head>
<body>

<%
String src = request.getParameter("src");
int id = Integer.valueOf(request.getParameter("id"));
%>
	
				<!-- Start Column 2 -->
				<div class="col-12 col-md-4 col-lg-3 mb-5 mb-md-0">
					<a class="product-item" href="<%=request.getContextPath()%>/products?id=<%=id%>"> <img
						src="<%=src %>"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Nordic Chair</h3> <strong
						class="product-price">$50.00</strong> 
					</a>
				</div>
				<!-- End Column 2 -->


</body>
</html>