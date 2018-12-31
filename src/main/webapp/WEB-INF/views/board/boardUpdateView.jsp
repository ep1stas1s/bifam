<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<c:import url="../main/header.jsp"/>
</head>
<body>
	<div class="wrap">
		<div class="container">
			<form action="boardUpdate.bf?board_no=${ board.board_no }" method="POST">
			<% //TODO 카테고리 처리(UPDATE) %>
				<input type="text" name="board_title" class="form-control" style="background-color: #111; color: #FFF" value=${ board.board_title }>
				<input type="hidden" name="member_id" value="${ sessionScope.member.member_id }">
				<hr>
				<textarea name="board_content" class="form-control" style="background-color: #111; color: #FFF" rows="20" cols="100">${ board.board_content }</textarea>
				<button type="submit" class="btn btn-dark">작성하기</button>
			</form>
		</div>
	</div>
	
	<c:import url="../main/footer.jsp"/>
</body>
</html>