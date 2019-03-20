<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>会員一覧</title>
<jsp:include page="/baselayout/head.html" />
</head>
<body class="text-center">
    <jsp:include page="/baselayout/header.jsp" />


	<h1 class="allusers">ユーザ一覧</h1>
	<table border="1">
		<tr>
			<th>LoginID</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Username</th>
			<th>Email</th>
			<th>Address</th>
			<th></th>
		</tr>
		<tbody>
			<!-- リクエストスコープのuserlistをuserとして扱う。userlistの中はuserbeansのフィールドが入っている。
      ＜user.longi_id＞はuserList（user）の中身であるbeansのlogin_idをEL式で表している。 -->
			<c:forEach var="user" items="${userList}">
				<tr>
					<td><input type="text" name="loginid" value="abe"></td>
					<td><input type="text" name="login_id" value=""></td>
					<td><input type="text" name="login_id" value=""></td>
					<td><input type="text" name="login_id" value=""></td>
					<td><input type="text" name="login_id" value=""></td>
					<td><input type="text" name="login_id" value=""></td>
					<td><c:if test="${userInfo.login_id=='admin'}">
							</div>
							<div class="btn-group">
								<a href="#UserDetailsServlet?id=${user.id}"
									class="btn btn-primary btn-sm active" role="button"
									aria-pressed="true">更新</a> <a
									href="#UserDetailsServlet?id=${user.id}"
									class="btn btn-primary btn-sm active" role="button"
									aria-pressed="true">削除</a>
							</div>

						</c:if></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
