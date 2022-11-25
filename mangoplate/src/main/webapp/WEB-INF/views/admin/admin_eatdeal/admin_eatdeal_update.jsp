<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - EAT딜</title>
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
	<div style="padding:0 0 15px 300px; color:#ff7f50; font-size: 24px; font-weight: bold;">EAT딜 - 수정 페이지입니다</div>
	<div class="content">
		<form name="boardUpdateForm" action="admin_eatdeal_update_check.do" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="eid" value="${vo.eid}">
			
			<ul>
				
				<li>
					<label>식당이름</label>
					<input type="text" name="ename" id="ntitle" value="${ vo.ename }" readonly>
				</li>
				<li>
					<label>지역</label>
					<input type="text" name="region" id="" value="${ vo.region }" readonly>
				</li>
				<li>
					<label>포장여부</label>
					<select name="packaging">
						<option value="가능">가능</option>
						<option value="불가능">불가능</option>
					</select>
				</li>
				<li>
					<label>재고</label>
					<input type="number" name="stock" id="" value="${ vo.stock }">
				</li>
				<li>
					<label>메뉴</label>
					<input type="text" name="menu" id="" value="${ vo.menu }">
				</li>
				<li>
					<label>가격</label>
					<input type="text" name="price" id="" value="${ vo.price }">
				</li>
				<li>
					<label>상세내용</label>
					<textarea name="scontent">${ vo.scontent }</textarea>
				</li>
				<li>
					<label>공통내용</label>
					<textarea name="common">${ vo.common }</textarea>
				</li>
				<li>
			</ul>	
				<br>
					<button type="button" class="btn_style" id="btnNoticeUpdate">수정완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_eatdeal_content.do?eid=${ vo.eid }"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="admin_eatdeal_list.do"><button type="button" class="btn_style">리스트</button></a>
				<div class="footer"></div>
			
		</form>
			
	</div>
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>
