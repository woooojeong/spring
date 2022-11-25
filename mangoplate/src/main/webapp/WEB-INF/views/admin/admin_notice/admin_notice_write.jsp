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
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%" height="131px" scrolling="no" frameborder=0 ></iframe>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div style="padding:0 0 15px 300px; color:#ff7f50; font-size: 24px; font-weight: bold;">공지사항 - 등록 페이지입니다</div>
	<div class="content">
		<form name="boardWriteForm" action="admin_notice_write_check.do" method="post"
				enctype="multipart/form-data">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent"></textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
				</li>
				<li>
				</li>
			</ul><br>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list.do">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mangoplate/admin.do"><button type="button" class="btn_style">관리자홈</button></a>
					<div class="footer"></div>
		</form>
			
	</div>
	
		<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>






