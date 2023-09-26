<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">


<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/tiny-slider.css" rel="stylesheet">
<link href="../assets/css/page.css" rel="stylesheet">

</head>
<body>


	<%
	String[] path = request.getRequestURI().split("/");
	int lastIndex = path.length - 1;
	String currentPage = path[lastIndex];
	%>
	<nav
		class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
		aria-label="Furni navigation bar">

		<div class="container">
			<a class="navbar-brand" href="../pages/index.jsp">Furni<span>.</span></a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsFurni"
				aria-controls="navbarsFurni" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li
						class="nav-item <%=currentPage.equals("index.jsp") ? "active" : ""%> "><a
						class="nav-link" href="../pages/index.jsp">Home</a></li>
					<li
						class="nav-item <%=currentPage.equals("shop.jsp") ? "active" : ""%>"><a
						class="nav-link" href="../pages/shop.jsp">Shop</a></li>
					<li
						class="nav-item <%=currentPage.equals("about.jsp") ? "active" : ""%>"><a
						class="nav-link" href="../pages/about.jsp">About us</a></li>
					<li
						class="nav-item <%=currentPage.equals("service.jsp") ? "active" : ""%>"><a
						class="nav-link" href="../pages/services.jsp">Services</a></li>
					<li
						class="nav-item <%=currentPage.equals("blog.jsp") ? "active" : ""%>"><a
						class="nav-link" href="../pages/blog.jsp">Blog</a></li>
					<li
						class="nav-item <%=currentPage.equals("contact.jsp") ? "active" : ""%>"><a
						class="nav-link" href="../pages/contact.jsp">Contact us</a></li>
				</ul>

				<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
					<li id="auth"><a class="nav-link" href="#"><img
							src="../assets/images/user.svg"></a></li>

					<li id="cart-list"><a class="nav-link"
						href="../pages/cart.jsp"><img src="../assets/images/cart.svg"></a></li>

				</ul>
			</div>
		</div>

	</nav>

	<div id="auth-box" style="display: none">

		<div
			style="border-radius: 4px; border-width: 1px; border-color: #E5E7EB; width: 12rem;margin: -5px -9px;overflow: hidden;">

			<a href="../pages/login.jsp"
				style="display: inline-flex; position: relative; padding-top: 0.5rem; padding-bottom: 0.5rem; padding-left: 1rem; padding-right: 1rem; align-items: center; border-bottom-width: 1px; border-color: #E5E7EB; width: 100%; font-size: 0.875rem; line-height: 1.25rem; font-weight: 500; text-decoration: none; color: #fff;height: 50px"
				onmouseover="this.style.backgroundColor = 'gray'"
				onmouseout="this.style.backgroundColor = 'transparent'"> 
				<!-- style="margin-right: 0.625rem; width: 0.75rem; height: 0.75rem;"> -->
				<svg xmlns="http://www.w3.org/2000/svg" height="2em" viewBox="0 0 512 512" style="margin-right: 0.625rem; width: 0.75rem; height: 0.75rem;"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M217.9 105.9L340.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L217.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1L32 320c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM352 416l64 0c17.7 0 32-14.3 32-32l0-256c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32-14.3-32-32s14.3-32 32-32l64 0c53 0 96 43 96 96l0 256c0 53-43 96-96 96l-64 0c-17.7 0-32-14.3-32-32s14.3-32 32-32z"/></svg>
				Sign in
			</a>
			<a href="../pages/registration.jsp"
				style="display: inline-flex; position: relative; padding-top: 0.5rem; padding-bottom: 0.5rem; padding-left: 1rem; padding-right: 1rem; align-items: center; border-bottom-width: 1px; border-color: #E5E7EB; width: 100%; font-size: 0.875rem; line-height: 1.25rem; font-weight: 500; text-decoration: none; color: #fff; height: 50px"
				onmouseover="this.style.backgroundColor = 'gray'"
				onmouseout="this.style.backgroundColor = 'transparent'"> 
				<!-- style="margin-right: 0.625rem; width: 0.75rem; height: 0.75rem;"> -->
				<svg xmlns="http://www.w3.org/2000/svg" height="2em" viewBox="0 0 640 512" style="margin-right: 0.625rem; width: 0.75rem; height: 0.75rem;"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3zM504 312V248H440c-13.3 0-24-10.7-24-24s10.7-24 24-24h64V136c0-13.3 10.7-24 24-24s24 10.7 24 24v64h64c13.3 0 24 10.7 24 24s-10.7 24-24 24H552v64c0 13.3-10.7 24-24 24s-24-10.7-24-24z"/></svg>
				Sign up
			</a>

		</div>
	</div>

	<script src="../assets/js/bootstrap.bundle.min.js"></script>
	<script src="../assets/js/tiny-slider.js"></script>
	<script src="../assets/js/custom.js"></script>

	<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.min.js"></script>
	<script src="https://unpkg.com/tippy.js@6/dist/tippy-bundle.umd.js"></script>
	<script>
		// With the above scripts loaded, you can call `tippy()` with a CSS
		// selector and a `content` prop:
		tippy('#cart-list', {
			content : 'Cart list',
		});
		const auth = document.getElementById("auth-box");
		tippy('#auth', {
			content : auth.innerHTML,
			allowHTML : true,
			interactive : true
		});
	</script>
</body>
</html>