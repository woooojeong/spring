<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe>
	<%-- <jsp:include page="../header.jsp"></jsp:include> --%>

	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>망고스토리 - 스토리삭제</h1>
		<form name="boardDeleteForm" action="boardstory_delete_check.do"
			method="post">
			<input type="hidden" name="sid" value="${sid}">
			<ul>
				<li><img
					src="http://localhost:9000/mangoplate/resources/images/delete.jpg">
					<!-- 휴지통 이미지 --></li>
				<li>
					<div>정말로 삭제하시겠습니까?</div>
				</li>
				<li>
					<button type="submit" class="btn_style">삭제완료</button> <a
					href="boardstory_content.do?sid=${sid }"><button type="button"
							class="btn_style">이전페이지</button></a> <a href="boardstory_list.do"><button
							type="button" class="btn_style">리스트</button></a>
				</li>
			</ul>
		</form>

	</div>

	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>

</body>
</html>







