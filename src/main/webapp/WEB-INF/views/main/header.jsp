<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- JQUERY 3.3.1 -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	
	<!-- bootstrap -->
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
		integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
		crossorigin="anonymous">
	<style>
		html, body{
			height: 100%;
		}
		.wrap{
			min-height: 75%;
		}
		body{
			background-color: #222;
			color : white;
		}
		a:hover{
			text-decoration:none;
			color : #f0f0f0;
		}
		a{
			color:white;
		}
	</style>
	<title>BIFAM</title>
</head>
<body>
	<h2>
		<a href="home.bf"> <img
			src="${ pageContext.request.contextPath }/resources/img/BIFAM-logo_white.png"
			style="">
		</a>
	</h2>
	<div style="background-color: #111;">
		<div class="container">
			<nav class="navbar nav-pills justify-content-end">
				<ul class="nav">
					<li class="nav-item"><a href="home.bf" class="nav-link" Accesskey="1" data-toggle="tooltip" data-placement="bottom" title="Home (Alt + 1)">Home</a></li>
					<li class="nav-item"><a href="boardList.bf" class="nav-link" Accesskey="2" title="Board (Alt + 2)">Board</a></li>
					<li class="nav-item"><a href="crawling.bf" class="nav-link" Accesskey="3" title="Now News (Alt + 3)">Now News</a></li>
					<li class="nav-item"><a href="trackingInquiry.bf" class="nav-link" Accesskey="4" title="Tracking (Alt + 4)">Tracking</a></li>
					<li class="nav-item"><a href="contact.bf" class="nav-link" Accesskey="5" title="Contact (Alt + 5)">Contact</a></li>
					<li class="nav-item"><a href="excelIO.bf" class="nav-link" Accesskey="6" title="ExcelIO (Alt + 6)">ExcelIO</a></li>
				</ul>
			</nav>
		</div>
	</div>
	
	<!-- login & logout -->
	<%--//TODO 비밀번호찾기  --%>
	<div class="container">
		<c:if test="${ empty sessionScope.member }">
		<div class="form-inline justify-content-end">
			<form action="login.bf" method="post" style="margin-right: 10px;">
					<input type="text" name="member_id" required maxlength="20" placeholder="id" class="form-control" style="background-color: #111; color: #FFF; margin-right: 10px;" >
					<input type="password" name="member_pwd" required maxlength="20" placeholder="password" class="form-control" style="background-color: #111; color: #FFF" >
				<button type="submit" class="btn btn-dark">Sign in</button>
			</form>
			<a href="memberSignUp.bf" class="btn btn-dark">Sign up</a>
		</div>
		</c:if>
		<c:if test="${not empty sessionScope.member }">
		<div class="form-inline justify-content-end">
			<a href="#" class="btn btn-dark">${ sessionScope.member.member_name }</a> &nbsp;
			<a href="logout.bf" class="btn btn-dark">Sign out</a>
		</div>
		</c:if>
	</div>
	<br>
	<!-- 
	단축키 short cut
	<input type="button" Value="Nzeo" Accesskey="1" OnClick="window.location.href='http://nzeo.com';">
	if (event.ctrlkey == true && event.keycode ==78)
	 -->
	
</body>
</html>