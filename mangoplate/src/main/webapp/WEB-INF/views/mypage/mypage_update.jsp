<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet" href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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

.personality_head {
	/* border: 1px solid blue; */
	width: 100%;
	height: 250px;
	background-color: coral;
}

.personality_head h1 {
	/* border: 1px solid blue;  */
	color: white;
	font-weight: bold;
	font-size: 50px;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	/* display: inline-block; */
	display: block;
	padding-top: 30px;
	margin-top: 30px;
	margin-left: 30px;
}

.personality_head p {
	/* border: 1px solid red; */
	color: white;
	font-size: 20px;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	/* display: inline-block; */
	margin-top: 20px;
	margin-left: 30px;
}

.personality {
	/* border: 1px solid black; */
	width: 100%;
	height: 500px;
}

.personality h3 {
	/* border: 1px solid blue; */
	color: coral;
	font-weight: bold;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	display: block;
	margin-top: 30px;
	text-align: center;
}

.updateForm {
	/* border: 1px solid red; */
	width: 100%;
	height: 500px;
}

form[name='updateForm'] {
	/* border: 1px solid blue; */
	padding: 50px;
	width: 900px;
	margin: auto;
}

form[name='updateForm'] label {
	border: 1px solid coral;
	background-color: coral;
	color: white;
	width: 80px;
	height: 30px;
	text-align: center;
	padding: 3px;
	margin: 5px;
}


form[name='updateForm'] input {
	border: 1px solid coral;
	width: 190px;
	height: 30px;
	padding: 3px;
	margin: 5px;
}

form[name='updateForm'] input[name='id'] {
	border: 1px solid coral;
	background-color : rgb(255,218,185);
}

form[name='updateForm'] input[name='cpass'],
form[name='updateForm'] input[name='addr2']{
	margin-left: 100px;
}

form[name='updateForm'] input[name='pnumber']{
	width: 145px;
}

form[name='updateForm'] input[name='email1']{
	width: 190px;
}

form[name='updateForm'] input[name='addr1']{
	width: 250px;
}

form[name='updateForm'] select[name='hp'] {
	border: 1px solid coral;
	width: 90px;
	height: 30px;
	padding: 3px;
	margin: 5px;
}

span {
	color: coral;
}

form[name='updateForm'] button[id="btnSearchAddr2"] {
	border: 1px solid coral;
	padding : 2px 5px;
	background-color : coral;
	color: white;
}

</style>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->

	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<section class="information">
			<div class="personality_head">
				<h1>My Mangoplate</h1>
				<p>―</p>
				<p class="subtitle">Eat, Share, Be Happy.</p>
				<!-- <p class="subtitle2">망고플레이트에 오신 것을 환영합니다</p> -->
			</div>
			
			<div class="personality">
				<h3>회원정보 수정</h3>
				<div class="updateForm">
					<form name="updateForm"  action="mypage_update_check.do"  method="post" enctype="multipart/form-data">
					<%-- <input type="hidden" name="id" value="${vo.id}"> --%>
					
						<ul>
							<li>
								<label>아이디</label>
								<input type="text" name="id" id="mypageid" value="${vo.id}" readonly>
							</li>
							<li>
								<label>비밀번호</label>
								 <input type="password" name="pass" id="mypagepass" placeholder="패스워드 입력">
							</li>
							<li>
								 <input type="password" name="cpass" id="mypagecpass" placeholder="패스워드 재입력">
								 <span id="mypagepassCheckMsg">*비밀번호를 다시 입력해주세요</span>
							</li>
							<li>
								<label>성명</label>
								<input type="text" name="name" id="mypagename" value="${vo.name}" >
							</li>
							<li>
								<label>휴대폰</label>
								<select name="hp" id="mypagehp">
									<c:if test="${vo.hp eq 'kt'}">
										<option value="kt" >KT</option>
										<option value="skt">SKT</option>
										<option value="lgu">LGU+</option>
									</c:if>
									<c:if test="${vo.hp eq 'skt'}">
										<option value="skt" >SKT</option>
										<option value="kt" >KT</option>
										<option value="lgu" >LGU+</option>
									</c:if>
									<c:if test="${vo.hp eq 'lgu'}">
										<option value="lgu" >LGU+</option>
										<option value="skt">SKT</option>
										<option value="kt" >KT</option>
									</c:if>
								</select>
								<input type="text" name="pnumber" id="mypagepnumber" value="${vo.pnumber}">
							</li>
							<li>
								<label>이메일</label>
								<input type="text" name="email1" id="mypageemail1" value="${vo.email}"  readonly>
							</li> 
							<li>
								<label>주소</label>
									<input type="text" name="addr1" id="mypageaddr1" value="${vo.addr1}">
									<button type="button" id="btnSearchAddr2">주소찾기</button>
							</li>
							<li>
								 	<input type="text" name="addr2" id="mypageaddr2" value="${vo.addr2}">
							</li>
							
							<li>
								<button type="button" class="btn_style" id="btnMypageUpdate">수정완료</button>
								<button type="reset" class="btn_style">다시쓰기</button>
								<a href="mypage.do?id=${ vo.id }"><button type="button" class="btn_style">이전페이지</button></a>
							</li>	
						</ul>
					</form>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>






