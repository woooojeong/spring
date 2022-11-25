<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - 공지사항</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<style>
 .btn_style {
 	border-radius: 4px;
 }
  .footer {
  padding: 0 0 80px 0;
 }
</style>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%" height="131px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div style="padding:0 0 15px 300px; color:#ff7f50; font-size: 24px; font-weight: bold;">공지사항 - 삭제 페이지입니다</div>
	<div class="content">
		<form name="boardDeleteForm" action="admin_notice_delete_check.do" method="post">
			<input type="hidden" name="nid" value="${nid}">
			<ul>
				<li>
					<img src="http://localhost:9000/mangoplate/resources/images/delete.jpg"> <!-- 휴지통 이미지 -->					
				</li>				
				<li>
					<div>정말로 삭제하시겠습니까?</div>
				</li>
				<li>
				</li>
			</ul><br>
					<button type="submit" class="btn_style">삭제완료</button>					
					<a href="admin_notice_list.do"><button type="button" class="btn_style">리스트</button></a>
					<div class="footer"></div>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>






