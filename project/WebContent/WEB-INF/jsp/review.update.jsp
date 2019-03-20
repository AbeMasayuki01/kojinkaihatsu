<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>レビュー編集</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
    <jsp:include page="/baselayout/header.jsp" />

	<div class="container">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4"
				src="/docs/4.2/assets/brand/bootstrap-solid.svg" alt="" width="72"
				height="72">
			<h2>レビューを書く</h2>
		</div>

		<div class="row">
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">Login</h4>
				<form class="needs-validation" novalidate>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="firstName">Username</label> <input type="text"
								class="form-control" id="firstName" placeholder="" value=""
								required> <small id="emailHelp"
								class="form-text text-muted">Please check correcting ID
								and Password.</small>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>

					</div>


					<button class="btn btn-primary btn-lg btn-block" type="submit">投稿する</button>
				</form>
			</div>
		</div>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2017-2018 Company Name</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.2/assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/docs/4.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-zDnhMsjVZfS3hiP7oCBRmfjkQC4fzxVxFhBx8Hkz2aZX8gEvA/jsP3eXRCvzTofP"
		crossorigin="anonymous"></script>
	<script src="form-validation.js"></script>
</body>
</html>
