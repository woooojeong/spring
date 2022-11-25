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
 div.purchase{
 	text-align: center;
    font-size: 22px;
    font-family: '함초롱바탕';
    font-weight: bold;
    padding: 30px 0 0 0;
 }
 div.ename {
 	font-size: 22px;
 	
    font-family: '함초롱바탕';
    
    padding: 0 0 10px 350px;
 }
 div.menu {
 	font-size: 20px;
 	
    font-family: '함초롱바탕';
    
    padding: 15px 0 10px 350px;
 }
 div.price {
 	font-size: 20px;
 	
    font-family: '함초롱바탕';
   
    padding: 10px 0 0 350px;
 }
</style>
</head>
<body>
	<!-- Header Include -->
	<iframe src="http://localhost:9000/mangoplate/header.do" width="100%" height="131px" scrolling="no" frameborder=0 ></iframe>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div style="padding:0 0 15px 300px; color:#ff7f50; font-size: 24px; font-weight: bold;">EAT딜 - 구매 페이지입니다</div>
	<div class="content">
		<form name="boardDeleteForm" action="eatdeal_purchase_check.do" method="post">
			<input type="hidden" name="eid" value="${vo.eid}">
			<ul>
				<li>
					<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto> 			
				</li>				
				<li>
				</li>
				<li>
					<div>
						<div class="ename">[${ vo.region }]${ vo.ename }</div>
						<div class="menu">${ vo.menu }</div>
						<div class="price">₩ ${ vo.price }</div>
					</div>
				</li>
				<li><br>
					<div class="purchase">정말로 구매하시겠습니까?</div>
				</li>
				<li>
				</li>
			</ul>
			<br>
					<button type="submit" class="btn_style">구매완료</button>					
					<a href="eatdeal_content.do?eid=${vo.eid}"><button type="button" class="btn_style">이전페이지</button></a>
					<a href="eatdeal_list.do"><button type="button" class="btn_style">리스트</button></a>
					<div class="footer"></div>
		</form>
			
	</div>
	
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>