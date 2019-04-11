<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ホーム</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />


	<section class="text-center">
		<div class="container">
			<h1 class="jumbotron-heading">Favorite List</h1>
		</div>
	</section>

	<div class="album py-5 bg-light">
		<div class="container">
			<div class="row">
				<c:forEach var="favoriteitem" items="${favoriteitemList}">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail">
							<title>Placeholder</title><rect fill="#55595c" width="100%"
									height="100%" />
							<text fill="#eceeef" dy=".3em" x="50%" y="50%">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">FILMTITLE</p>
								<p class="card-text">This is a wider card with supporting
									text below as a natural lead-in to additional content. This
									content is a little bit longer.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<form action="Buy" method="POST">
											<input type="hidden" name="item_id" value="${item.id}">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">購入</button>
										</form>

										<button type="button" class="btn btn-sm btn-outline-secondary">レビュー</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<section class="text-center">
		<div class="container">
			<h1 class="jumbotron-heading">History List</h1>
		</div>
	</section>

	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row">
				<c:forEach var="historyitem" items="${historyitemList}">

					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">

							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img" aria-label="Placeholder: Thumbnail">
							<title>${historyitem.name}</title><rect fill="#55595c" width="100%"
									height="100%" />
							<text fill="#eceeef" dy=".3em" x="50%" y="50%">${historyitem.fileName}</text></svg>
							<div class="card-body">
								<p class="card-text">${historyitem.name}</p>
								<p class="card-text">${historyitem.detail}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">レビュー</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
