<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - EAT딜</title>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
<style>
 body { padding: 0 0 60px 0; background-color:#f7f7f7}
 .mySlides { display:none; }  
 .out { 
 	width:100%;
 	background-color:#f7f7f7;
 	display: flex;
  	justify-content: center; 
  	position:relative;
  	}
 .in { 
 	width:768px;
 	max-width:768px;
 	background-color:#ffffff;
 	/* margin: 0 auto; */
 	position:relative;
 	}
 img {
    display:block; 
    margin:0 auto;
    padding:0 6px;
    width:750px;
    height:700px;
	}
 .btn_style1 {
 	position: fixed;
 	bottom: 0;
  border:none;
  padding: 1rem;
  height: 60px;
  width: 768px;
  color: white;
  background: #ff7100;
  font-size: 16px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  text-align: center;
 }
 .btn_style2 {
 	border:1px;
 	border-color:#ff7100;
 	border-radius:4px;
 	padding:1rem;
 	height: 50px;
 	width: 100px;
 	color: white;
 	background: #ff7100;
 }
 .purchase { 	
 	margin:auto;
 }
 .content1 {
 	padding: 0 15px;
 }
 div.stock {
 	display:inline-block;
 	border:1px;
 	border-style:solid;
 	border-color: black;
 	border-radius: 4px;
 	padding: 10px 20px;
 }
</style>
</head>
<body>
<%-- 	이미지(슬라이드)
	[지역]식당이름(식당상세링크)
	메뉴
	가격
	개별내용
	공통내용
	구매하기(버튼)	
	eid, ename, region, packaging, menu, price, scontent, common, eimage1, esimage1, eimage2, esimage --%>
	
	<!-- header -->
	<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>
	
	<div class="out">
	<div class="in">
	<table>
		<tr>
<%--	<td><div class="stock">현재 재고 수량: ${ vo.stock }</div></td>
 		<td><a href="admin_eatdeal_update.do?eid=${ vo.eid }"><button type="button" class="btn_style2">수정하기</button></a></td>
			<td><a href="admin_eatdeal_delete.do?eid=${ vo.eid }"><button type="button" class="btn_style2">삭제하기</button></a></td>
--%>	</tr>
		<tr> <%-- 이미지(슬라이드) --%>
			<td>
			
				<c:if test="${ vo.esimage1 != null }">
						<br><br>
						<div class="img1">
							<img class="mySlides" src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" 
							style="display:inline-block"></img>
						</div>	
				</c:if>
				<c:if test="${ vo.esimage2 != null }">
						<div class="img1">
							<img class="mySlides" src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage2 }" 
							></img>
						</div>
						<br><br>
				</c:if>
				
				<button style="position:absolute;top:450px;left:0%;transform:translate(0%,-50%);-ms-transform:translate(-0%,-50%)" 
					onclick="plusDivs(-1)">&#10094;</button>
  				<button style="position:absolute;top:450px;right:0%;transform:translate(0%,-50%);-ms-transform:translate(0%,-50%)"
  					onclick="plusDivs(1)">&#10095;</button>
			
			</td>
		</tr>
		<tr> <%-- [지역]식당이름(식당상세링크), 메뉴, 가격 --%>
			<td class="content1">
				<div id="${ vo.eid }" class="flip">
					<div class="ename" style="font-size:20px; font-weight: bold; color:#4f4f4f;">[${ vo.region }]${ vo.ename }</div>
					<div style="font-size:18px; padding:24px 0px 6px; color:#4f4f4f;">${ vo.menu }</div>
					<div style="font-size:24px; font-weight:bold; text-align:right; color:#4f4f4f;">\ ${ vo.price }</div>
				</div>
			</td>
		</tr>
		<tr> <%-- 방문포장가능여부, 개별내용, 공통내용 --%>
			<td>
				<div style="padding:0px 15px">
					<div style="position: relative; display: block; height: 1px; margin: 32px 15px; background-color: #E9E9E9; color:#4f4f4f;"></div>
					<div style="font-size:18px; margin: 0 15px 32px; color:#4f4f4f;">방문포장이 ${ vo.packaging }한 상품입니다.</div>
					<div style="white-space:pre-wrap; font-size:16px; color:#4f4f4f;">${ vo.scontent }</div>
					<br><br>
					<div style="white-space:pre-wrap; font-size:16px; color:#4f4f4f;">${ vo.common }</div>
					
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content_${ vo.eid }" class="content"><%-- ${ vo.ncontent } --%>
					
				</div>
			</td>
		</tr>
		
	</table>
	<a href="eatdeal_purchase.do?eid=${ vo.eid }"><button type="button" class="btn_style1"><div class="purchase">구매하기</div></button></a>
	</div>
	</div>
	
	
</body>
</html>