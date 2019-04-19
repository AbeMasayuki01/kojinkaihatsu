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
                <div class="container">
                    <c:if test="${validationMessage != null}">
                        <div class="red-text center-align">${validationMessage}</div>
                    </c:if>
                    <c:if test="${successMsg != null}">
                        <div class="blue-text center-align">${successMsg}</div>
                    </c:if>
                </div>


				<h2>You're Profile</h2>
			</div>

			<div class="row">
				<div class="col-md-12 order-md-1">
					<h4 class="mb-3">プロフィール</h4>
					<form action="UserDataUpdate" method="POST">
						<div class="mb-3">
							<label for="Name">Name</label> <input type="text"
								class="form-control" name="name" value="${userInfo.name}"
								required>
							<div class="invalid-feedback">Valid name is required.</div>
						</div>
						<div class="mb-3">
							<label for="username">Username（LoginID）</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">@</span>
								</div>
								<input type="text" class="form-control" name="login_id"
									value="${userInfo.loginId}" required>
								<div class="invalid-feedback" style="width: 100%;">Your
									username is required.</div>
							</div>
						</div>

						<div class="mb-3">
							<label for="email">Email <span class="text-muted">(Optional)</span></label>
							<input type="email" class="form-control" name="mail"
								value="${userInfo.mail}">
							<div class="invalid-feedback">Please enter a valid email
								address for shipping updates.</div>
						</div>

						<div class="mb-3">
							<label for="address">Address</label> <input type="text"
								class="form-control" name="address" value="${userInfo.address}"
								required>
							<div class="invalid-feedback">Please enter your shipping
								address.</div>
						</div>
						<div class="row">
							<div class="col s12">
								<button class="btn btn-sm btn-outline-secondary" type="submit"
									name="action">更新</button>
							</div>
						</div>
					</form>
				</div>
			</div>


			<main role="main">
			<body class="bg-light">
				<div class="container">
					<div class="py-5 text-center">
						<h2 id="history">購入履歴</h2>
					</div>
					<div class="row">
						<c:forEach var="historyitem" items="${historyitemList}">

							<div class="col-md-4 order-md-1">
								<div class="card mb-4 shadow-sm">
									<div class="card-body">
										<title>${historyitem.name}</title>
										<rect fill="#55595c" width="100%" height="100%" />
										<img src="img/${historyitem.fileName}">
										<div class="card-body">
											<p class="card-text">${historyitem.name}</p>
											<p class="card-text">${historyitem.detail}</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="btn-group">
													<button type="submit"
														class="btn btn-sm btn-outline-secondary">レビュー</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</body>
			</main>
</html>
