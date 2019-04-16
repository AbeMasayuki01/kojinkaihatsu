<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>検索結果</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />
	<main role="main">

	<section class="jumbotron text-center">
		<div class="container">
			<h1 class="jumbotron-heading">検索結果</h1>
			<p>検索結果${itemCount}件</p>

		</div>
	</section>

	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row">
				<c:forEach var="item" items="${itemList}" varStatus="status">

					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">

							<div class="card-image">
								<a href="Filmdetail?item_id=${item.id}&page_num=${pageNum}"><img
									src="img/${item.fileName}"></a>
							</div>
							<div class="card-content">
								<span class="card-title">${item.name}</span>
								<p>${item.price}円</p>
							</div>
							<div class="card-body">
								<p class="card-text">${item.name}</p>
								<p class="card-text">${item.detail}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<form action="favoritelist" method="POST">
											<input type="hidden" name="item_id" value="${item.id}">
											<input type="hidden" name="search_word"
												value="${search_word}">

											<button type="submit"
												class="btn btn-sm btn-outline-secondary"
												style="padding-right: 13px;">❤️</button>
										</form>

										<form action="Buy" method="POST">
											<input type="hidden" name="item_id" value="${item.id}">
											<input type="hidden" name="search_word"
												value="${search_word}">

											<button type="submit"
												class="btn btn-sm btn-outline-secondary" name="action">購入</button>
										</form>

										<form
											action="Filmdetail?item_id=${item.id}&page_num=${pageNum}">
											<button type="submit"
												class="btn btn-sm btn-outline-secondary">詳細</button>
										</form>

										<button type="button" class="btn btn-sm btn-outline-secondary">レビュー</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="row center">
				<ul class="pagination">
					<!-- １ページ戻るボタン  -->
					<c:choose>
						<c:when test="${pageNum == 1}">
							<li class="disabled"><a><i class="material-icons">chevron_left</i></a></li>
						</c:when>
						<c:otherwise>
							<li class="waves-effect"><a
								href="ItemSearchResult?search_word=${searchWord}&page_num=${pageNum - 1}"><i
									class="material-icons">chevron_left</i></a></li>
						</c:otherwise>
					</c:choose>

					<!-- ページインデックス -->
					<c:forEach begin="${(pageNum - 5) > 0 ? pageNum - 5 : 1}"
						end="${(pageNum + 5) > pageMax ? pageMax : pageNum + 5}" step="1"
						varStatus="status">
						<li
							<c:if test="${pageNum == status.index }"> class="active" </c:if>><a
							href="ItemSearchResult?search_word=${searchWord}&page_num=${status.index}">${status.index}</a></li>
					</c:forEach>

					<!-- 1ページ送るボタン -->
					<c:choose>
						<c:when test="${pageNum == pageMax || pageMax == 0}">
							<li class="disabled"><a><i class="material-icons">chevron_right</i></a></li>
						</c:when>
						<c:otherwise>
							<li class="waves-effect"><a
								href="Searchresult?search_word=${searchWord}&page_num=${pageNum + 1}"><i
									class="material-icons">chevron_right</i></a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>

		</div>
	</div>
	</main>
</html>
