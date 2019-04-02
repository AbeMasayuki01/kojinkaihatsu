<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>商品登録</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />

	<div class="container">
		<div class="py-5 text-center">

			<h2>Form</h2>
		</div>

		<div class="row">
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">商品登録</h4>
				<form action="ItemRegist" method="POST">
					<div class="mb-3">
						<label for="name">Name</label> <input type="text"
							class="form-control" name="item_name" placeholder=""
							value="" required>
					</div>

					<div class="mb-3">
						<label for="mail">Detail</label> <input type="text"
							class="form-control" name="item_detail" placeholder="">
					</div>

					<div class="mb-3">
						<label for="address">Price</label> <input type="number"
							class="form-control" name="item_price" placeholder="" required>
					</div>
					<div class="mb-3">
						<label for="address">FileName</label> <input type="text"
							class="form-control" name=item_filename placeholder="" required>
					</div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">商品登録</button>
				</form>
			</div>
		</div>
	</div>



</body>
</html>
