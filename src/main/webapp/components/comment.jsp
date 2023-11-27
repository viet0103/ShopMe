<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- start link -->
	<link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css?version=1" rel="stylesheet">
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<link href="${pageContext.request.contextPath }/assets/css/comment.css?version=2" rel="stylesheet">	
	
	<!-- end link -->
	
	
</head>
<body>
		<c:set var="product_id" value="${param.product_id}"/>
		
    <div class="container my-5  border " style="background-color: rgba(231, 233, 235, 0.5) !important;">
        <form action="${pageContext.request.contextPath }/comment?id=${product_id}" method="post" id="form"  onsubmit="return validateForm()">
        	<input type="hidden" id="checkCmt" value="${param.checkCmt}">
        	<input type="hidden"  name="product_id" value="${product_id }">
        	<input type="hidden" value="${sessionScope.user }" id="user" >
	        <div class=" mt-4 mx-5 d-flex flex-row">
	            <div class="">
	                <div class="box-avatar">
	                    <img src="./assets/images/person_1.jpg" alt="" class="box-avatar">
	                </div>
	               
	            </div>
	            <div class=" me-3 w-100  d-flex flex-column" >
	                <div class="row mx-2  " style="height: 40px">
	                    <span class="text-capitalize h5 col-2">${user == null?"User":(user.getFullname() )}</span>
	                    <div class="rating col-10" id="starRating"  style="transform: translateX(-13%);">
	                        <input type="number" name="rating" hidden id="rating" value="${not empty param.rating?param.rating:0 }">
	                        	<script type="text/javascript">setRatingStars(${not empty param.rating?param.rating:0 });</script>
		                        <i class='bx bx-star star' style="--i: 0;"></i>	
		                        <i class='bx bx-star star' style="--i: 1;"></i>
		                        <i class='bx bx-star star' style="--i: 2;"></i>
		                        <i class='bx bx-star star' style="--i: 3;"></i>
		                        <i class='bx bx-star star' style="--i: 4;"></i>
	                        
	                    </div>
	                </div>
	                <textarea name="content-comment" id="content-comment"  class="form-control border border-success rounded-4 mb-2   "
	                placeholder="Your rate product..." required="required">${param.content_comment }</textarea>
	                
	            </div>
	           
	        </div>
	        <div class="d-flex justify-content-center mb-3" id="btnForm">
	            <button class="btn btn-success submit m-2" type="submit">Submit</button>
	            <button class="btn btn-light btn-outline-success cancel m-2" type="button" id="cancelButton" >Cancel</button>
	        </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/comment.js"></script>
</body>
</html>