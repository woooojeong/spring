<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고스토리 update</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
<style>
	#upload_file {
		/*border:1px solid red;*/
		position:relative;
		left:265px; top:-30px;
		width:200px;  height:20px;
		display:inline-block;	
		background-color:white;	
		font-size:12px;
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
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe>
	<%-- <jsp:include page="../header.jsp"></jsp:include> --%>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<h1>망고스토리 - 스토리 수정하기</h1>
		<form name="boardUpdateForm" action="boardstory_update_check.do" method="post" enctype="multipart/form-data"> 
			<input type="hidden" name="sid"  value="${vo.sid}" >
			<input type="hidden" name="simage"  value="${vo.simage}" >
			<input type="hidden" name="ssimage"  value="${vo.ssimage}" >
			<ul>
				<li><label>Editer</label> <input type="text" name="editer" id="editer" value="${vo.editer }"></li>
				<li><label>제목</label> <input type="text" name="stitle" id="stitle" value="${vo.stitle }"></li>
				<li><label>소제목</label> <input type="text" name="sstitle" id="sstitle" value="${vo.sstitle }"></li>
				<li><label>내용</label> <textarea name="scontent">${vo.scontent }</textarea></li>
				<li><label>이미지</label> <input type="file" name="file1">
				<li>
					<button type="button" class="btn_style" id="btnBoardStoryUpdate">수정완료</button>
					<button type="reset" class="btn_style">다시쓰기</button> 
					<a href="boardstory_content.do?sid=${vo.sid }"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="boardstory_list.do"><button type="button" class="btn_style">리스트</button>
				</a>
				</li>
			</ul>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>







