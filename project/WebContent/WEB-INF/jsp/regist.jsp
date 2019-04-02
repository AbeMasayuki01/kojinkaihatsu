<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>新規登録</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />

	<div class="container">
		<div class="py-5 text-center">

			<h2>Sign Up Form</h2>
			<p class="lead">Below is an example form built entirely with
				Bootstrap’s form controls. Each required form group has a validation
				state that can be triggered by attempting to submit the form without
				completing it.</p>
		</div>

		<div class="row">
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">新規登録</h4>
				<form action="Regist" method="POST">
					<div class="mb-3">
						<label for="name">Name</label> <input type="text"
							class="form-control" name="user_name" placeholder="your name"
							value="" required>
						<div class="invalid-feedback">Valid first name is required.
						</div>
					</div>

					<div class="mb-3">
						<label for="mail">Email</label>
						<input type="email" class="form-control" name="user_mail"
							placeholder="you@example.com">
						<div class="invalid-feedback">Please enter a valid email
							address for shipping updates.</div>
					</div>

					<div class="mb-3">
						<label for="address">Address</label> <input type="text"
							class="form-control" name="user_address" placeholder="1234 Main St"
							required>
						<div class="invalid-feedback">Please enter your shipping
							address.</div>
					</div>
					<div class="mb-3">
						<label for="username">Login ID</label>
						<div class="input-group">
							<div class="input-group-prepend">
							</div>
							<input type="text" class="form-control" name="login_id"
								placeholder="LoginID" required>
							<div class="invalid-feedback" style="width: 100%;">Your
								loginID is required.</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-5 mb-3">
							<label for="country">Login Password</label><input type="password"
								class="form-control" name="password"
								placeholder="Password">
							<div class="invalid-feedback"></div>
						</div>
						<div class="col-md-5 mb-3">
							<label for="state">Password(confirm)</label> <input
								type="password" class="form-control" name="confirm_password"
								placeholder="Password(confirm)">

							<hr class="mb-3">
						</div>
					</div>


					<button class="btn btn-primary btn-lg btn-block" type="submit">Sign
						up</button>
				</form>
			</div>
		</div>
	</div>



</body>
</html>
