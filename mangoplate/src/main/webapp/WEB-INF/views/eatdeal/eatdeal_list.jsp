<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - EAT딜</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script>


</script>
<style>
 .out { 
 	width:100%;
 	background-color:#f7f7f7;
 	display: flex;
  	justify-content: center; 
  	position:relative;
  	}
 .in { 
 	width:768px;
 	background-color:#ffffff;
 	/* margin: 0 auto; */
 	position:relative;
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
 .content1 {
	padding:15px 15px 33px;
 }
 img {
 	border-radius:4px;
    display:block; 
    margin:0 auto;
    padding:0;
    width:768px;
    height:383px;
    object-fit:cover;
	}
 .bottom-right {
  position: absolute;
  bottom: 20px;
  right: 15px;
 }
 .center {
text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate( -50%, -50% );
 }
 .container {
  position: relative;
  text-align: center;
  color: white;
  overflow:hidden;
 }
 .packaging {
 	background-color:#f3f3f3;
 	border-radius:5px;
 	padding: 10px;
 }
 .zero {
 opacity: 0.4;
 }
 		 .footer {
  padding: 0 0 180px 0;
 }
</style>
</head>
<body>
	<!-- header -->
	<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>
	
	<div class="out">
	<div class="in">
	
	
	
	<table>
		<tr>
			<td>
			</td>
			<td>
			</td>
	
			<td>
		<%--	<a href="admin_eatdeal_write.do"><button type="button" class="btn_style2">글쓰기</button></a>  --%>
			<td>
		</tr>
			
		<c:forEach var="vo" items="${ list }">	
			<c:choose>
				<c:when test="${ vo.stock eq 0}"> <%-- 이거는 오히려 일반 eatdeal에 있어야함 --%>
				
					<tr>
						<td>
							<div class="container">					
								<img class="zero" src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }">
								<div class="center" style="font-size:40px;">매진된 상품입니다</div>
								<div class="bottom-right" style="font-size: 24px; font-weight: bold;">₩ ${ vo.price }</div>	
							</div>
							<br>
						</td>
					</tr>
					<tr>
						<td>
							<div class="content1">
								<div style="font-size:16px; font-weight: bold; color:#4f4f4f;">[${ vo.region}]${ vo.ename }</div>
								<br>
								<div style="font-size:14px; color:#4f4f4f;">${ vo.menu }</div>
								<br>
								<div class="packaging">
								<div style="font-size:12px; color:#4f4f4f;">방문포장이 ${ vo.packaging }한 상품입니다.</div>
								</div>
							</div>
							
						</td>
					</tr>
				
				</c:when>
				<c:otherwise> 
				
					<tr>
						<td>
							<div class="container">
								<a href="eatdeal_content.do?eid=${ vo.eid }">
								<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.esimage1 }" height=auto>
							</a>
								<div class="bottom-right" style="font-size: 24px; font-weight: bold;">₩ ${ vo.price }</div>
							</div>
							<br>
						</td>
					</tr>
					<tr>
						<td>
							<div class="content1">		
								<div style="font-size:16px; font-weight: bold; color:#4f4f4f;">[${ vo.region}]${ vo.ename }</div>
								<br>
								<div style="font-size:14px; color:#4f4f4f;">${ vo.menu }</div>
								<br>
								<div class="packaging">
								<div style="font-size:12px; color:#4f4f4f;">방문포장이 ${ vo.packaging }한 상품입니다.</div>
								</div>
							</div>
							
						</td>
					</tr>
				
				</c:otherwise>
			</c:choose>
		</c:forEach>	
			
	</table>
	<div class="footer"></div>
	</div>
	</div>	
</body>
</html>