<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="../assets/images/favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
<link href="../assets/css/tiny-slider.css" rel="stylesheet">
<link href="../assets/css/page.css?version=1" rel="stylesheet">
<title>Furni Free Bootstrap 5 Template for Furniture and
	Interior Design Websites by Untree.co</title>
</head>

<body>

	<!-- Start Header/Navigation -->
	<jsp:include page="../components/header.jsp"></jsp:include>
	<!-- End Header/Navigation -->

	<!-- Start Hero Section -->
	<div class="hero">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
						<h1>Shop</h1>
					</div>
				</div>
				<div class="col-lg-7"></div>
			</div>
		</div>
	</div>
	<!-- End Hero Section -->

	<div class="filter-button"
		onclick="document.querySelector('.filter-wrapper').style.left =  0;
		document.getElementsByTagName('body')[0].classList.toggle('hidden');
	">
		Filter

		<svg class="filter" xmlns="http://www.w3.org/2000/svg" height="1.5em"
			viewBox="0 0 512 512">
			<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
			<path
				d="M3.9 54.9C10.5 40.9 24.5 32 40 32H472c15.5 0 29.5 8.9 36.1 22.9s4.6 30.5-5.2 42.5L320 320.9V448c0 12.1-6.8 23.2-17.7 28.6s-23.8 4.3-33.5-3l-64-48c-8.1-6-12.8-15.5-12.8-25.6V320.9L9 97.3C-.7 85.4-2.8 68.8 3.9 54.9z" /></svg>

	</div>

	<div class="untree_co-section product-section before-footer-section" >
		<div class="container" style="display: flex">
			<div class="filter-wrapper">
				<svg class="svg" xmlns="http://www.w3.org/2000/svg" height="2em"
					viewBox="0 0 384 512"
					onclick="document.querySelector('.filter-wrapper').style.left =  '-100%';
						document.getElementsByTagName('body')[0].classList.toggle('hidden');
				">
					
					<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
					<style>
.svg {
	fill: #ffffff;
	width: 40px;
	height: 40px;
	padding: 4px;
	border-radius: 50%;
	background-color: #3b5d50;
	float: right;
}
</style>
					<path
						d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z" /></svg>
				<div class="form-group" style="margin: 40px 0 20px 0">
					<label for="c_diff_country" class="text-black"
						style="font-size: 17px; font-weight: 600; margin-bottom: 8px">Price
					</label>

					<!-- select input -->
					<div class="select-box">

						<div class="options-container"
							style="box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.5)">
							<div class="option">
								<input type="radio" class="radio" id="under"
									name="category" /> <label for="under">Dưới 500</label>
							</div>

							<div class="option">
								<input type="radio" class="radio" id="betwwen"  />
								<label for="between">Từ 500 - 1000</label>
							</div>
							
							<div class="option">
								<input type="radio" class="radio" id="on" />
								<label for="on">Trên 1000</label>
							</div>

							
						</div>

						<div class="selected">Select price</div>
					</div>

				</div>


				<div class="form-group" style="margin: 40px 0 20px 0">
					<label for="c_diff_country" class="text-black"
						style="font-size: 17px; font-weight: 600; margin-bottom: 8px">Rate
					</label>

					<section
						style="display: flex; align-items: center; margin-bottom: 10px">
						<input type="checkbox" class="checkbox-input" name="5" id="5">
						<label for="5" style="display: flex;; margin-left: 10px">
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
						</label>

					</section>

					<section
						style="display: flex; align-items: center; margin-bottom: 10px">
						<input type="checkbox" class="checkbox-input" name="4" id="4">
						<label for="4" style="display: flex;; margin-left: 10px">

							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
						</label>

					</section>

					<section
						style="display: flex; align-items: center; margin-bottom: 10px">
						<input type="checkbox" class="checkbox-input" name="3" id="3">
						<label for="3" style="display: flex;; margin-left: 10px">

							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
						</label>

					</section>

					<section
						style="display: flex; align-items: center; margin-bottom: 10px">
						<input type="checkbox" class="checkbox-input" name="2" id="2">
						<label for="2" style="display: flex;; margin-left: 10px">

							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
						</label>

					</section>

					<section
						style="display: flex; align-items: center; margin-bottom: 10px">
						<input type="checkbox" class="checkbox-input" name="1" id="1">
						<label for="1" style="display: flex;; margin-left: 10px">

							<svg class="star" xmlns="http://www.w3.org/2000/svg" height="1em"
								viewBox="0 0 576 512">
								<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
								<style>
.star {
	fill: #facc15
}
</style>
								<path
									d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z" /></svg>
						</label>

					</section>

				</div>
	
	
				<div style="width: 100%; display: flex;justify-content: center;margin-top: 40px">
				<div
					style="width: 150px; height: 45px; display: flex; align-items: center; justify-content: center; border-radius: 10px; background: #3b5d50; color: #fff;  cursor: pointer; font-weight: 600;">
					Filter
					<svg class="filter-icon" xmlns="http://www.w3.org/2000/svg"
						height="1.5em" viewBox="0 0 512 512">
						<style>
.filter-icon {
	fill: #fff;
	margin-left: 6px
}
</style>
						<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
						<path
							d="M3.9 54.9C10.5 40.9 24.5 32 40 32H472c15.5 0 29.5 8.9 36.1 22.9s4.6 30.5-5.2 42.5L320 320.9V448c0 12.1-6.8 23.2-17.7 28.6s-23.8 4.3-33.5-3l-64-48c-8.1-6-12.8-15.5-12.8-25.6V320.9L9 97.3C-.7 85.4-2.8 68.8 3.9 54.9z"></path></svg>
				</div>
				</div>
				
			</div>

			<div class="row">

				<!-- Start Column 1 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-3.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Nordic Chair</h3> <strong
						class="product-price">$50.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 1 -->

				<!-- Start Column 2 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-6.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Nordic Chair</h3> <strong
						class="product-price">$50.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 2 -->

				<!-- Start Column 3 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-2.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Kruzo Aero Chair</h3> <strong
						class="product-price">$78.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 3 -->

				<!-- Start Column 4 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-3.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Ergonomic Chair</h3> <strong
						class="product-price">$43.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 4 -->


				<!-- Start Column 1 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-3.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Nordic Chair</h3> <strong
						class="product-price">$50.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 1 -->

				<!-- Start Column 2 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-1.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Nordic Chair</h3> <strong
						class="product-price">$50.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 2 -->

				<!-- Start Column 3 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-2.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Kruzo Aero Chair</h3> <strong
						class="product-price">$78.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 3 -->

				<!-- Start Column 4 -->
				<div class="col-12 col-md-6 col-lg-4 mb-5">
					<a class="product-item" href="#"> <img
						src="../assets/images/product-3.png"
						class="img-fluid product-thumbnail">
						<h3 class="product-title">Ergonomic Chair</h3> <strong
						class="product-price">$43.00</strong> <span class="icon-cross">
							<img src="../assets/images/cross.svg" class="img-fluid">
					</span>
					</a>
				</div>
				<!-- End Column 4 -->

			</div>
		</div>
	</div>


	<!-- Start Footer Section -->
	<jsp:include page="../components/footer.jsp"></jsp:include>
	<!-- End Footer Section -->


	<script src="../assets/js/bootstrap.bundle.min.js"></script>
	<script src="../assets/js/tiny-slider.js"></script>
	<script src="../assets/js/custom.js"></script>
	<script type="text/javascript">
	const selected = document.querySelector(".selected");
	const optionsContainer = document.querySelector(".options-container");

	const optionsList = document.querySelectorAll(".option");

	selected.addEventListener("click", () => {
	  optionsContainer.classList.toggle("active");
	});

	optionsList.forEach(o => {
	  o.addEventListener("click", () => {
	    selected.innerHTML = o.querySelector("label").innerHTML;
	    optionsContainer.classList.remove("active");
	  });
	});</script>
</body>

</html>
