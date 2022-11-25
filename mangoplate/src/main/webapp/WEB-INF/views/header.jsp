<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_header.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<!-- 로그인 script & style -->
<script>
	$(document).ready(function() {
		$("#myModal").trigger('click');

		$("#joinmodal").click(function() {
			/* $("body").css("background-color","yellow"); rgba(76, 76, 76, 0.7)*/
			$(".modal-backdrop").css("background-color", "none");
		});

		$("#login_close").click(function() {
			$("#id").val("");
			$("#pass").val("");

		});

		$("#join_close").click(function() {
			$("#jid").val("");
			$("#jpass").val("");
			$("#cpass").val("");
			$("#name").val("");
			$("#hp").val("");
			$("#pnum").val("");
			$("#email1").val("");
			$("#email2").val("");
			$("#addr1").val("");
			$("#addr2").val("");

		});
	});
</script>

<style>
.header {
	position: sticky;
}

* {
	margin: 0px;
	padding: 0px;
}

form[name='loginForm'] div {
	/* border:1px solid blue; */
	display: block;
	position: relative;
	margin-bottom: 40px;
	text-align: center;
}

form[name='loginForm'] {
	border: 3px solid coral;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	word-wrap: break-word;
	font-size: 100%;
	line-height: 100%;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	-webkit-tap-highlight-color: transparent;
	margin: 0 auto;
	background-color: #ffffff;
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: auto;
	padding: 101px 52px 98px;
	border-radius: 10px;
}

form[name='loginForm'] p {
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: transparent;
	/* border:1px solid blue; */
	border: 0 none;
	margin-margin: 30px;
	margin-bottom: 20px;
	padding-bottom: 0;
	font-size: 16px;
	line-height: 21px;
	letter-spacing: -0.3px;
	color: #555;
	text-align: center;
}

form[name='loginForm'] input {
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	border: 2px solid coral;
	display: block;
	position: relative;
	border-radius: 5px;
	width: 256px;
	/* height: 30px; */
	padding: 7px 10px;
	margin-bottom: 20px;
	font-size: 12px;
}

form[name='loginForm'] button.btn-nav-close {
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: transparent;
	appearance: none;
	cursor: pointer;
	border: 0px;
	border-radius: 0;
	background-color: transparent;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	display: block;
	position: absolute;
	top: 13px;
	right: 15px;
	text-indent: -9999px;
	background-image:
		url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
	background-position: -935px -693px;
	width: 30px;
	height: 30px;
}

form[name='loginForm'] button.btn_mypage_style {
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	-webkit-tap-highlight-color: transparent;
	border: 0 none;
	/* border:1px solid blue; */
	display: block;
	position: relative;
	width: 256px;
	height: 51px;
	margin: 0 auto 12px;
	padding: 0;
	font-size: 14px;
	line-height: 51px;
	border-radius: 48px;
	text-decoration: none;
	color: white;
	background-color: coral;
}

/* 회원가입 css */
form[name='joinForm'] div.join_logo {
	/* border:1px solid blue; */
	display: block;
	position: relative;
	margin-bottom: 40px;
	text-align: center;
}

form[name='joinForm'] {
	border: 3px solid coral;
	word-wrap: break-word;
	font-size: 100%;
	line-height: 100%;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	-webkit-tap-highlight-color: transparent;
	margin: 0 auto;
	background-color: #ffffff;
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: auto;
	padding: 101px 55px 50px;
	border-radius: 10px;
}

form[name='joinForm'] span {
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: transparent;
	/* border: 1px solid black; */
	/* margin-margin: 30px; */
	/* margin-bottom: 30px;  */
	/* padding-bottom: 0; */
	font-size: 11px;
	/* letter-spacing: -0.3px; */
	color: coral;
}

form[name='joinForm'] div.idCheckMsg {
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: transparent;
	/* border: 1px solid black; */
	/* margin-margin: 30px; */
	/* margin-bottom: 20px; */
	/* padding-bottom: 0; */
	font-size: 11px;
	/* letter-spacing: -0.3px; */
	color: coral;
}

form[name='joinForm'] p {
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: transparent;
	/* border:1px solid blue; */
	border: 0 none;
	margin-margin: 30px;
	margin-bottom: 20px;
	padding-bottom: 15px;
	font-size: 15px;
	/* line-height: 21px; */
	letter-spacing: -0.3px;
	color: coral;
	text-align: center;
}

form[name='joinForm'] input[name='pass'] {
	border: 2px solid coral;
	display: block;
	position: relative;
	border-radius: 5px;
	width: 270px;
	/* height: 30px; */
	padding: 7px 10px;
	margin-bottom: 15px;
	font-size: 12px;
}

form[name='joinForm'] input[name='name'] {
	border: 2px solid coral;
	display: block;
	position: relative;
	border-radius: 5px;
	width: 270px;
	/* height: 30px; */
	padding: 7px 10px;
	margin-bottom: 15px;
	font-size: 12px;
	margin-top: 15px;
}

form[name='joinForm'] input[name='addr1'], form[name='joinForm'] input[name='addr2']
	{
	border: 2px solid coral;
	display: block;
	position: relative;
	border-radius: 5px;
	width: 270px;
	/* height: 30px; */
	padding: 7px 10px;
	margin-bottom: 15px;
	font-size: 12px;
}

form[name='joinForm'] input[name='id'], form[name='joinForm'] input[name='cpass']
	{
	border: 2px solid coral;
	display: block;
	position: relative;
	border-radius: 5px;
	width: 270px;
	/* height: 30px; */
	padding: 7px 10px;
	/* margin-bottom: 15px; */
	font-size: 12px;
}

form[name='joinForm'] button.btn-nav-close {
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	margin: 0;
	padding: 0;
	-webkit-tap-highlight-color: transparent;
	appearance: none;
	cursor: pointer;
	border: 0px;
	border-radius: 0;
	background-color: transparent;
	display: block;
	position: absolute;
	top: 13px;
	right: 15px;
	text-indent: -9999px;
	background-image:
		url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
	background-position: -935px -693px;
	width: 30px;
	height: 30px;
}

form[name='joinForm'] button.btn_mypage_style {
	word-wrap: break-word;
	-webkit-text-size-adjust: 100%;
	word-break: keep-all;
	-webkit-tap-highlight-color: transparent;
	border: 0 none;
	/* border:1px solid blue; */
	display: block;
	position: relative;
	width: 256px;
	height: 51px;
	margin: 0 auto 12px;
	padding: 0;
	font-size: 14px;
	line-height: 51px;
	border-radius: 48px;
	text-decoration: none;
	color: white;
	background-color: coral;
}

form[name='joinForm'] select[name='hp'] {
	border: 2px solid coral;
	display: inline-block;
	position: relative;
	border-radius: 5px;
	width: 65px;
	height: 30px;
	/* padding:7px 10px; */
	/* margin-margin: 20px; */
	/* margin-bottom: 15px; */
	font-size: 12px;
}

form[name='joinForm'] input[name='pnumber'] {
	border: 2px solid coral;
	display: inline-block;
	position: relative;
	border-radius: 5px;
	width: 201px;
	height: 30px;
	/* padding:7px 10px; */
	margin-margin: 20px;
	margin-bottom: 15px;
	font-size: 10px;
}

form[name='joinForm'] input[name='email1'] {
	border: 2px solid coral;
	display: inline-block;
	position: relative;
	border-radius: 5px;
	width: 125px;
	height: 30px;
	padding: 7px 10px;
	margin-right: 5px;
	margin-bottom: 15px;
	font-size: 12px;
}

form[name='joinForm'] select[name='email2'] {
	border: 2px solid coral;
	display: inline-block;
	position: relative;
	border-radius: 5px;
	width: 125px;
	height: 30px;
	/* padding:7px 10px; */
	/* margin-margin: 20px; */
	/* margin-bottom: 15px; */
	font-size: 13px;
}

form[name='joinForm'] #join_textbutton {
	/* border: 3px solid blue;	 */
	position: relative;
	margin-bottom: 15px;
}

form[name='joinForm'] #join_textbutton button {
	position: absolute;
	width: 80px;
	height: 25px;
	top: 5px;
	bottom: 0;
	right: 20px;
	/* margin: auto 0; */
	padding: 2px;
	border-radius: 4px;
	text-align: center;
}
</style>

</head>
<body class="home_page" onunload="">
	<header class="Header " data-page="normal">
		<a href="index.do" class="Header__Logo"
			onclick="trackEvent('CLICK_HEADER_LOGO');" target="_parent"> <i
			class="Header__LogoIcon"></i>
		</a>

		<div class="Header__SearchBox">
			<i class="Header__SearchIcon"></i> <label
				class="Header__SearchInputWrap"> <input type="text"
				class="Header__SearchInput" placeholder="지역, 식당 또는 음식" value=""
				autocomplete="off" maxlength="50">
			</label>

			<button class="Header__SearchInputClearButton">CLEAR</button>
		</div>

		<c:choose>

			<c:when test="${sessionScope.svo == null}">

				<ul class="Header__MenuList">
					<li class="Header__MenuItem Header__MenuItem--New"><a
						href="http://localhost:9000/mangoplate/eatdeal_list.do" class="Header__MenuLink"
						target="_parent"> <span
						class="Header__MenuText">EAT딜</span>
					</a></li>

					<li class="Header__MenuItem"><a href="http://localhost:9000/mangoplate/restaurant_list.do"
						class="Header__MenuLink" 
						target="_parent"> <span class="Header__MenuText">맛집 리스트</span>
					</a></li>

					<li class="Header__MenuItem"><a
						href="http://localhost:9000/mangoplate/boardstory_list.do"
						class="Header__MenuLink"
						target="_parent"> <span class="Header__MenuText">망고 스토리</span>
					</a></li>
					<li class="Header__MenuItem">
						<button type="button" class="UserProfileButton"
							data-toggle="modal" data-target="#myModal">
							<span class="Header__MenuText">로그인</span>
						</button>
					</li>

					<li class="Header__MenuItem"><a href="mypage.do"
						class="Header__MenuLink" 
						target="_parent"> <span class="Header__MenuText">마이페이지</span>
					</a></li>
				</ul>
			</c:when>

			<c:otherwise>
				<ul class="Header__MenuList">
					<li class="Header__MenuItem Header__MenuItem--New"><a
						href="http://localhost:9000/mangoplate/eatdeal_list.do" class="Header__MenuLink"
						target="_parent"> <span
							class="Header__MenuText">EAT딜</span>
					</a></li>

					<li class="Header__MenuItem"><a href="http://localhost:9000/mangoplate/restaurant_list.do"
						class="Header__MenuLink" target="_parent"> <span
							class="Header__MenuText">맛집 리스트</span>
					</a></li>

					<li class="Header__MenuItem"><a
						href="http://localhost:9000/mangoplate/boardstory_list.do"
						class="Header__MenuLink" target="_parent"> <span
							class="Header__MenuText">망고 스토리</span>
					</a></li>
					<li class="Header__MenuItem"><a href="logout.do"
						class="Header__MenuLink" target="_parent"> <span
							class="Header__MenuText">로그아웃</span>
					</a></li>

					<li class="Header__MenuItem"><a href="mypage.do"
						class="Header__MenuLink" target="_parent"> <span
							class="Header__MenuText">마이페이지</span>
					</a></li>

					<!-- 관리자 계정인 경우에만 admin 메뉴를 open -->
					<c:if test="${sessionScope.sid == 'admin'}">
						<li class="Header__MenuItem"><a href="admin.do"
							class="Header__MenuLink" target="_parent"> <span
								class="Header__MenuText">admin</span>
						</a></li>
					</c:if>

				</ul>
			</c:otherwise>

		</c:choose>

	</header>

	<div class="container">

		<!-- Button to Open the Modal -->

		<!-- 로그인 모달창 -->
		<div class="modal" id="myModal">
			<form name="loginForm" action="loginCheck.do" method="post">
				<button type="button" class="btn-nav-close" data-dismiss="modal"
					id="login_close">닫기</button>
				<div>
					<img alt=""
						src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-logo-horizontal.svg">
				</div>
				<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요">
				<input type="password" name="pass" id="pass"
					placeholder="패스워드를 입력해주세요">
				<button type="button" id="btnLogin" class="btn_mypage_style">로그인</button>
				<p class="message">----------------- 또는 -----------------</p>
				<button type="button" id="joinmodal" class="btn_mypage_style"
					data-toggle="modal" data-target="#myModal2" target="_parent">회원가입하기</button>
			</form>
		</div>

		<!-- 회원가입 모달창 -->
		<div class="modal" id="myModal2">
			<form name="joinForm" action="joinCheck.do" method="post">
				<button type="button" class="btn-nav-close" data-dismiss="modal"
					id="join_close">닫기</button>
				<div class="join_logo">
					<img alt=""
						src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-logo-horizontal.svg">
				</div>
				<p>가입을 통해 더 다양한 서비스를 만나보세요!</p>
				<div id="join_textbutton">
					<input type="text" name="id" id="jid" placeholder="아이디 입력">
					<button type="button" class="btn_style" id="idCheck">중복확인</button>
					<div class="idCheckMsg" id="idCheckMsg">*중복확인을 먼저 진행해주세요</div>
				</div>
				<input type="password" name="pass" id="jpass" placeholder="패스워드 입력">
				<input type="password" name="cpass" id="cpass"
					placeholder="패스워드 재입력"> <span id="passCheckMsg">*비밀번호를
					다시 입력해주세요</span> <input type="text" name="name" id="name" placeholder="성명">
				<div>
					<select name="hp" id="hp">
						<option value="default">통신사</option>
						<option value="skt">SKT</option>
						<option value="lgu">LGU+</option>
						<option value="kt">KT</option>
					</select> <input type="text" name="pnumber" id="pnum"
						placeholder=" 전화번호 입력(000-0000-0000)">
				</div>
				<div>
					<input type="text" name="email1" id="email1" placeholder="이메일 입력"><span>@</span>
					<select name="email2" id="email2">
						<option value="default">선택</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="daum.net">daum.net</option>
						<option value="yahoo.com">yahoo.com</option>
						<option value="nate.com">nate.com</option>
					</select>
				</div>
				<div id="join_textbutton">
					<input type="text" name="addr1" id="addr1" placeholder="주소 입력">
					<button type="button" class="btn_style" id="btnSearchAddr">주소찾기</button>
				</div>
				<input type="text" name="addr2" id="addr2" placeholder="상세주소 입력">

				<button type="button" class="btn_mypage_style" id="btnJoin">회원가입하기</button>
			</form>
		</div>
	</div>

</body>
</html>