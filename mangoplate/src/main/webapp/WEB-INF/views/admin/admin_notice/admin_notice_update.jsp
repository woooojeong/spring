<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
    
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - 공지사항</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
<style>
	#upload_file {
		/*border:1px solid red;*/
		position:relative;
		left:-713px; top:12px;
		width:300px;  height:20px;
		display:inline-block;	
		background-color:white;	
		font-size:12px;
	}
	 .btn_style {
 	border-radius: 4px;
 }
 .footer {
  padding: 0 0 80px 0;
 }
</style>
<script>
	$(document).ready(function(){
		//새로운 파일선택하는 이벤트 
		 $("input[type=file]").change(function(){
			if(window.FileReader){
				let fname = $(this)[0].files[0].name;
				$("#upload_file").text(fname);
			}
		}); 
		
		
		
	});
</script>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%" height="131px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div style="padding:0 0 15px 300px; color:#ff7f50; font-size: 24px; font-weight: bold;">공지사항 - 수정 페이지입니다</div>
	<div class="content">
		<form name="boardUpdateForm" action="admin_notice_update_check.do" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="nid" value="${vo.nid}">
			<input type="hidden" name="nfile" value="${vo.nfile}">
			<input type="hidden" name="nsfile" value="${vo.nsfile}">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="ntitle" id="ntitle" value="${vo.ntitle }">
				</li>
				<li>
					<label>내용</label>
					<textarea name="ncontent">${vo.ncontent }</textarea>
				</li>
				<li>
					<label>파일첨부</label>
					<input type="file" name="file1">
					<span id="upload_file">${ vo.nfile }</span>
				</li>
				<li>
				</li>
			</ul>
				<br>
					<button type="button" class="btn_style" id="btnNoticeUpdate">수정완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_notice_list.do"><button type="button" class="btn_style">리스트</button></a>
					<div class="footer"></div>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>






