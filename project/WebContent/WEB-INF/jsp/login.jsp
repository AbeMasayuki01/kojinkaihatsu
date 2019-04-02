<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ログイン</title>
<jsp:include page="/baselayout/head.html" />
</head>

<body class="bg-light">
	<jsp:include page="/baselayout/header.jsp" />

	<div class="container">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4"
				src="/docs/4.2/assets/brand/bootstrap-solid.svg" alt="" width="72"
				height="72">
			<h2>Login</h2>
		</div>

		<div class="row">
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">Login</h4>
				<form class="form-signin" action="Login" method="post">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="login_id">login_id</label> <input type="text"
								class="form-control" name="login_id" placeholder="" value=""
								required> <small id="emailHelp"
								class="form-text text-muted">Please check correcting ID
								and Password.</small>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="Password">Password</label> <input type="password"
								class="form-control" name="Password" placeholder="Password">
							<div class="invalid-feedback"></div>
						</div>
					</div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
				</form>
				<div style="margin: 100px;">
          <a class="p-2 text-dark" href="Regist">New Assign</a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
