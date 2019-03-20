<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>マイページ</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
    <jsp:include page="/baselayout/header.jsp" />
	<main role="main">
	<body class="bg-light">
		<div class="container">
			<div class="py-5 text-center">
				<h2>You're Profile</h2>
			</div>

			<div class="row">
				<div class="col-md-8 order-md-1">
					<h4 class="mb-3">プロフィール</h4>
					<form class="needs-validation" novalidate>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="firstName">First name</label> <input type="text"
									class="form-control" id="firstName" placeholder="" value=""
									required>
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="lastName">Last name</label> <input type="text"
									class="form-control" id="lastName" placeholder="" value=""
									required>
								<div class="invalid-feedback">Valid last name is required.
								</div>
							</div>
						</div>


						<div class="mb-3">
							<label for="username">Username</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">@</span>
								</div>
								<input type="text" class="form-control" id="username"
									placeholder="Username" required>
								<div class="invalid-feedback" style="width: 100%;">Your
									username is required.</div>
							</div>
						</div>

						<div class="mb-3">
							<label for="email">Email <span class="text-muted">(Optional)</span></label>
							<input type="email" class="form-control" id="email"
								placeholder="you@example.com">
							<div class="invalid-feedback">Please enter a valid email
								address for shipping updates.</div>
						</div>

						<div class="mb-3">
							<label for="address">Address</label> <input type="text"
								class="form-control" id="address" placeholder="1234 Main St"
								required>
							<div class="invalid-feedback">Please enter your shipping
								address.</div>
						</div>
				</div>
			</div>

			<main role="main">
			<body class="bg-light">
				<div class="container">
					<div class="py-5 text-center">
						<h2>購入履歴</h2>
					</div>
					<div class="row">
						<div class="col-md-4 order-md-1">
							<div class="card mb-4 shadow-sm">
								<div class="card-body">
									<p class="card-text">title</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<div class="card-body">
									<p class="card-text">title</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<div class="card-body">
									<p class="card-text">title</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<div class="card-body">
									<p class="card-text">title</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<div class="card-body">
									<p class="card-text">title</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<div class="card-body">
									<p class="card-text">title</p>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<button type="button"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</body>
			</main>
</html>
