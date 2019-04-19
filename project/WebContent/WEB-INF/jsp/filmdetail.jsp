<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>詳細</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />
	<main role="main">

	<section class="text-center">
		<div class="container">
			<h1 class="jumbotron-heading">Film Detail</h1>
		</div>
	</section>


	<div class="row mb-2">
		<div class="mx-auto">
			<section class="text-center">
				<div class="col-md-12">
					<div
						class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
						<div class="col p-4 d-flex flex-column position-static">
							<h3 class="mb-0">${itemdetail.name}</h3>
							<div class="mb-1 text-muted">${itemdetail.name}</div>
							<p class="card-text mb-auto">${itemdetail.detail}</p>
							<a href="#" class="stretched-link">購入する</a>
						</div>
						<div class="col-auto d-none d-lg-block">
							<img src="img/${itemdetail.fileName}" width="500" height="400">

						</div>
					</div>
				</div>
			</section>
		</div>
	</div>


	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row">

				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">

						<div class="card-body">
							<p class="card-text">Reviewtitle</p>
							<p class="card-text">レビュー内容</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">アカウントを見る</button>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<div class="card-body">
							<p class="card-text">Reviewtitle</p>
							<p class="card-text">レビュー内容</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">アカウントを見る</button>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<div class="card-body">
							<p class="card-text">Reviewtitle</p>
							<p class="card-text">レビュー内容</p>
							<span class="label_m">評価</span> <strong>3.9</strong> <img
								alt="3.9"
								src="https://eiga.k-img.com/images/shared/_.gif?1360825397">（全<span>174</span>件）
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">アカウントを見る</button>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<div class="card-body">
							<p class="card-text">Reviewtitle</p>
							<p class="card-text">レビュー内容</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">アカウントを見る</button>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<div class="card-body">
							<p class="card-text">Reviewtitle</p>
							<p class="card-text">レビュー内容</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">アカウントを見る</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<div class="card-body">
							<p class="card-text">Reviewtitle</p>
							<p class="card-text">レビュー内容</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary">アカウントを見る</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<a href="#" class="stretched-link">購入する</a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="mx-auto">
			<section class="text-center">
				<h4>レビューを書く</h4>
				<form action>
					<div class="col p-4">
						<textarea id="t_message" name="message"
							placeholder="ここにレビューを書いてください。" cols="80" rows="5" minlength="5"
							maxlength="10"></textarea>
					</div>
					<button class="btn btn-primary" type="submit">投稿する</button>
				</form>
			</section>
		</div>
	</div>
	</main>
</html>
