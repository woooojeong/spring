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
	<div style="padding:0 0 15px 300px; color:#ff7f50; font-size: 24px; font-weight: bold;">EAT딜 - 등록 페이지입니다</div>
	<div class="content">
		<form name="boardWriteForm" action="admin_eatdeal_write_check.do" method="post"
				enctype="multipart/form-data">
			<ul> <%-- ename제목, region지역, packaging포장여부(체크박스), stock재고, menu메뉴, price가격, scontent상세, common공통(미리 적기), eimage1  
			
			EID       NOT NULL VARCHAR2(20)  
			ENAME     NOT NULL VARCHAR2(30)  
			REGION    NOT NULL VARCHAR2(30)  
			PACKAGING NOT NULL VARCHAR2(30)  
			STOCK     NOT NULL NUMBER(30)    
			MENU      NOT NULL VARCHAR2(200) 
			PRICE     NOT NULL VARCHAR2(30)  
			SCONTENT  NOT NULL VARCHAR2(500) 
			COMMON    NOT NULL VARCHAR2(500) 
			EIMAGE1            VARCHAR2(200) 
			ESIMAGE1           VARCHAR2(200) 
			EIMAGE2            VARCHAR2(200) 
			ESIMAGE2           VARCHAR2(200)  --%>
				<li>
					<label>식당이름</label>
					<input type="text" name="ename" id="ntitle">
				</li>
				<li>
					<label>지역</label>
					<input type="text" name="region" id="">
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
					<input type="number" name="stock" id="">
				</li>
				<li>
					<label>메뉴</label>
					<input type="text" name="menu" id="">
				</li>
				<li>
					<label>가격</label>
					<input type="text" name="price" id="">
				</li>
				<li>
					<label>상세내용</label>
					<textarea name="scontent"></textarea>
				</li>
				<li>
					<label>공통내용</label>
					<textarea name="common"></textarea>
				</li>
				<li>
					<label>파일첨부1</label>
					<input type="file" name="images">
				</li>
				<li>
					<label>파일첨부2</label>
					<input type="file" name="images">
				</li>
				<li>
				</li>
			</ul>
				<br>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="admin_eatdeal_list.do">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mangoplate/admin.do"><button type="button" class="btn_style">관리자홈</button></a>
					<div class="footer"></div>
		</form>
			
	</div>
	
		<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>