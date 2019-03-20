<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>購入</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />



	<section class="text-center">
		<div class="container">
			<h1 class="jumbotron-heading">Buy</h1>
		</div>
	</section>


	<div class="container">
		<div class="card-deck mb-3 text-center">
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">ABE</h4>
				</div>
				<img
					src="/Users/abemasayuki/Documents/GitHub/Mock/img/240px-Shinzō_Abe_Official.jpg"
					class="rounded mx-auto d-block" alt="" style="padding-top: 10px;">

				<div class="card-body">
					<h1 class="card-title pricing-card-title">3000円</h1>

					<p class="mb-0">
						<a href="#" class="btn btn-primary btn-sm" style="margin: 5px">詳細</a>
					<p class="mb-0">
						<a href="#" class="btn btn-secondary btn-sm">削除</a>
				</div>
			</div>
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">ASO</h4>
				</div>
				<img src="/Users/abemasayuki/Documents/GitHub/Mock/img/7.jpg"
					class="rounded mx-auto d-block" alt="" style="padding-top: 10px;">

				<div class="card-body">
					<h1 class="card-title pricing-card-title">2000円</h1>
					<p class="mb-0">
						<a href="#" class="btn btn-primary btn-sm" style="margin: 5px">詳細</a>
					<p class="mb-0">
						<a href="#" class="btn btn-secondary btn-sm">削除</a>
				</div>
			</div>
			<button type="button" class="btn btn-lg btn-block btn-primary">Buy</button>

		</div>
		<div class="" style="text-align: right;">
			<button type="button" class="btn btn-sm btn-secondary">追加購入する</button>
		</div>

	</div>
</body>
</html>
