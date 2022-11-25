<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>

<style>
	* {
			margin: 0px;
			padding: 0px;
		}
		
		.content {
		/* 	border: 1px solid red; */
			width: 100%;
		/* 	height: auto; */
			margin-top: 61px;
		}
	
	.admin_head {
		/* border: 1px solid blue; */
		width: 100%;
		height: 250px;
		background-color: coral;
	}
	
	.admin_head h1 {
		/* border: 1px solid blue;  */
		color: white;
		font-weight:bold;
		font-size: 50px;
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO","sans-serif";
		/* display: inline-block; */
		display: block;
		padding-top:30px;
		margin-top: 30px;
		margin-left: 30px;
	}
	
	ul.h2 li:nth-child(5) a {
		background-color: coral;
		color:#fff;
	}
	
	h2 {
		border: 1px solid red;
		margin: 50px;
	}
	
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
	<jsp:include page="../../header.jsp"></jsp:include>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<div class="admin_head">
			<h1>관리자 페이지</h1>	
		</div>
	<ul class="h2">
		<li><a href="admin.do">Admin</a></li>
		<li><a href="admin_member_list.do">회원정보관리</a></li>
		<li><a href="admin_notice_list.do">공지사항 관리</a></li>
		<li><a href="admin_eatdeal_list.do">EAT딜 관리</a></li>
		<li><a href="admin_restaurant_list.do">식당등록 관리</a></li>
	</ul>
		
		<h2>식당상세정보-수정하기</h2>
		<form name="boardUpdateForm" action="admin_restaurant_update_check.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="rid"  value="${vo.rid}" >
			<input type="hidden" name="rimage"  value="${vo.rimage}" >
			<input type="hidden" name="rsimage"  value="${vo.rsimage}" >
			<ul>
				<li>
					<label>식당명</label>
					<input type="text" name="rname" id="rname" value="${vo.rname}">
				</li>
				<li>
					<label>주소</label>
					<input type="text" name="raddr" id="raddr" value="${vo.raddr}">
				</li>
				<li>
					<label>연락처</label>
					<input type="text" name="rcontact" id="rcontact" value="${vo.rcontact}">
				</li>
				<li>
					<label>가격대</label>
					<input type="text" name="rprice" id="rprice" value="${vo.rprice}">
				</li>
				<li>
					<label>음식종류</label>
					<select name="rcategory" id="rcategory" value="${vo.rcategory}">
						<option value="양식">양식</option>
						<option value="한식">한식</option>
						<option value="중식">중식</option>
						<option value="일식">일식</option>
						<option value="아시안음식">아시안음식</option>
					</select>
				</li>
				<li>
					<label>대표사진</label>
					<input type="file" name="file1">
					<!-- JSTL의 if는 조건이 단하나로 체크될떄 사용, 조건이 여러개로 체크될 경우 choose/when -->
					<c:choose>
						<c:when test="${vo.rimage != null }"> <!-- if~else -->
							<span id="upload_file">${vo.rimage}</span>
						</c:when>
						<c:otherwise>
							<span id="upload_file">선택된 파일 없음</span>
						</c:otherwise>
					</c:choose>
				</li>
				<li>
					<button type="button" class="btn_style" id="btnBoardUpdate">수정완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_restaurant_content.do?rid=${vo.rid }"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="admin_restaurant_list.do"><button type="button" class="btn_style">리스트</button></a>
				</li>
			</ul>
		</form>
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>







