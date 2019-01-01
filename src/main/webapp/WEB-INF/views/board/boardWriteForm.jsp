<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<c:import url="../main/header.jsp"/>
</head>
<body>
<div class="wrap">
	<div class="container">
		<form action="boardWrite.bf" method="POST" enctype="multipart/form-data">
		<% //TODO 카테고리 처리(WRITE FORM) %>
			<input type="text" name="board_title" class="form-control" style="background-color: #111; color: #FFF" >
			<input type="hidden" name="member_id" value="${ sessionScope.member.member_id }">
			<hr>
			<textarea name="board_content" class="form-control" style="background-color: #111; color: #FFF" rows="20" cols="100"></textarea>
			
			<!-- test -->
			<input type="file" name="file" class="form-control form-control-sm" style="margin-top: 10px;">
			
			<div class="text-right" style="margin-top: 10px;">
				<button type="submit" class="btn btn-dark">작성하기</button>
			</div>
		</form>
	</div>
</div>
<c:import url="../main/footer.jsp"/>
</body>
</html>