<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<body>
	<header>
		<div
			class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
			<h5 class="my-0 mr-md-auto font-weight-normal">
				<a href="Home">ABeFlix</a>
			</h5>
			<nav class="my-2 my-md-0 mr-md-3">
<c:if test="${userInfo != null}">
<c:if test="${userInfo.id == 1}">
                <a class="p-2 text-dark" href="ItemRegist">商品登録</a>
</c:if>
				<a class="p-2 text-dark" href="Home">Home</a> <a
					class="p-2 text-dark" href="favoritelist">MyList</a> <a
					class="p-2 text-dark" href="Reviewlist">Review</a> <a
					class="p-2 text-dark" href="Mypage">MyPage</a> <a
					class="p-2 text-dark" href="Logout">Logout</a>

				<div class="input-field col s8 offset-s2">
					<form action="Serchresult">
						<i class="material-icons prefix">search</i> <input type="text"
							name="search_word">
					</form>
				</div>
</c:if>

			</nav>
		</div>
	</header>
</body>
