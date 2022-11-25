<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰쓰기</title>
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<style>
	
	* {
		margin : 0px;
		padding : 0px;
	}
	
	.body {
	 /* 	border : 1px solid black;  */
		margin-top : 100px;
	}
	
	/* top과 관련된 css */
	
	.review_top {
		width : 678px;
		margin : 40px auto 20px;
		position : relative;
	}
	
	.review_top div {
	/* 	border : 1px solid red; */
		width : 678px;
		height : 40px;
		margin-bottom : 20px;
	}
	
	.review_top h1 {
		color : #ff7100;
		float : left;
		font-size : 28px;
	}
	
	.review_top span {
		/* position : absolute;
		top : 14px;
		left : 125px; */
		font-size : 16px;
		color : #7f7f7f;
	}
	
	/* content와 관련된 css */
	.review_content article:nth-child(1) {
		width : 678px;
		height : 240px;
		border : 1px solid #dbdbdb;
		border-radius : 3px;
		margin : auto;
	}
	
	.review_content article:nth-child(2){
	/* 	border : 1px solid black; */
		width : 678px;
		margin : auto;
	}
	
	
	.review_content article div {
	/* 	border : 1px solid black; */
		padding : 16px;
		position : relative;
	}
	
	.review_content article div li {
		list-style-type : none;
	}
	
	.review_content article div li:nth-child(2) {
	 /* border : 1px solid black; */
		margin-bottom: 10px;
	}
	
	.review_content article div li textarea {
	/* 	border : 1px solid red; */
		width : 644px;
		height : 150px;
		margin-top : 10px;
		border : none;
		outline : none;
		font-size : 16px;
		cursor : text;
		caret-color : #cbcbcb;
	}
	
	textarea::placeholder {
		color : #cbcbcb;
		font-weight : bold;
		font-size : 14px;
		word-spacing : -5px;
	}
	
	/* 감정표현 관련 css */
	
	.first li img {
	/* 	border : 1px solid black; */
		width : 44px;
		height : 44px;
	}
	
	input[class="super-happy"]:hover + img,
	input[class="super-happy"]:checked + img,
	input[class="super-happy"]:focus + img {
	  fill: rgb(0, 109, 217);
	}
	
	
	.emotion ul li:nth-child(1) input {
		/* visibility : hidden; */
	}
	
	.emotion ul li:nth-child(1) {
	/* 	border : 1px solid blue; */
	}
	
	.emotion ul li:nth-child(1) span {
	/* 	border : 1px solid blue; */
		color : #ff7100;
		font-size : 14px;
		margin : auto 0px;
	}
	
	
	/* 글자수 세기 css */
	
	.textLengthWrap {
	/* 	border : 1px solid black; */
		position : absolute;
		top : -20px;
		left : 605px;
	}
	
	.photo_count {
		position : absolute;
		top : -20px;
		left : 37px;
	}
	
	.textLengthWrap p, .photo_count p{
	/* 	border : 1px solid black; */
		display : inline-block;
		font-size : 12px;
		color : #7f7f7f;
	}
	
	/* 하단 버튼 관련 css */
	
	.upload ul:nth-child(1) li button{
		margin-top : 23px;
		border : 1px dashed #dbdbdb;
		width : 89px;
		height : 89px;
		background-color : transparent;
		background-image : url("http://localhost:9000/mangoplate/resources/images/add.png"); 
		background-size : 30px;
		background-repeat: no-repeat;
		background-position: center;
	}
	
	.upload ul li {
		list-style-type : none;
	}
	
	.upload ul:nth-child(3) li button {
		border : 1px solid #cbcbcb;
		border-radius : 50px;
		padding : 14px;
		font-size : 15px;
		color : #cbcbcb;
		background-color : #ffffff;
		cursor : not-allowed;
		float : left;
		margin-top: 16px;
	}
	
	.upload ul:nth-child(4) li button{
		border-radius : 50px;
		padding : 14px;
		font-size : 15px;
		background-color : #ffffff;
		float : right;
	}
	
	.upload ul:nth-child(4) li:nth-child(2) button {
	/*  background-color : red; */ 
		padding : 14px 54px;
		border : 1px solid #7f7f7f;
		color : #7f7f7f;
		margin-right : 15px;
	}
	
	.upload ul:nth-child(4) li:nth-child(1) button {
	 	background-color : #e9e9e9;
	 	color : #ffffff;
	 	border : 1px solid #e9e9e9;
		padding : 14px 31px;
	/* 	cursor : not-allowed; */
	}
	
</style>
<script>
$(document).ready(function(){
	$('#textBox').keyup(function (e) {
		let content = $(this).val();
	    
	    // 글자수 세기
	    if (content.length == 0 || content == '') {
	    	$('.textCount').text('0');
	    } else {
	    	$('.textCount').text(content.length);
	    }
	    
	    // 글자수 제한
	    if (content.length > 10000) {
	    	// 200자 부터는 타이핑 되지 않도록
	        $(this).val($(this).val().substring(0, 10000));
	        // 200자 넘으면 알림창 뜨도록
	        alert('글자수는 200자까지 입력 가능합니다.');
	    };
	});
});
</script>
</head>
<body>
<!-- header -->
<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
<jsp:include page="../header.jsp"></jsp:include>

	<div class="body">
	<section class="review_top">
		<div>
			<!-- <h1>팔레드 신</h1> -->
			<h1>${vo.rname}<span>에 대한 솔직한 리뷰를 써주세요.</span></h1>
			
		</div>
	</section>
	<section class="review_content">
		<article class="first">
			<form name="reivewForm" action="review_write_check.do" method="post" enctype="multipart/form-data">
				<input type="hidden" name="vname" value=${vo.rname }>
				<div class="emotion">
					<ul>
						<li>
							<input type="radio" name="vrate" class="super-happy" id="super-happy" value="5" checked /><img src="http://localhost:9000/mangoplate/resources/images/delicious_checked.png">
							<span>맛있다</span>
							<input type="radio" name="vrate" class="happy" id="happy" value="3" /><img src="http://localhost:9000/mangoplate/resources/images/NotBad_unchecked.png">
							<span>괜찮다</span>
							<input type="radio" name="vrate" class="sad" id="sad" value="1" /><img src="http://localhost:9000/mangoplate/resources/images/bad_unchecked.png">
							<span>별로</span>
						</li>
						<li>
							<textarea name="vcontent" id="textBox" placeholder="김태형님, 주문하신 메뉴는 어떠셨나요? 식당의 서비스와 분위기도 궁금해요!"></textarea>
						</li>
						<li>
							<label>파일첨부</label>
							<input type="file" name="file1">
						</li>
					</ul>
				</div>
				<div class="textLengthWrap">
					<p class="textCount">0</p>
					<p>/</p>
				    <p class="textTotal">10,000</p>
				</div>
		</article>
		<article class="upload">
				<ul>
					<li>
						<button type=button></button>
					</li>
				</ul>
				<div class="photo_count">
					<p class="textCount2">0</p>
					<p>/</p>
				    <p class="textTotal2">30</p>
				</div>
				<ul>
					<li>
						<button type="button">나중에 이어쓰기</button>
					<li>
				</ul>
				<ul>
					<li>
						<button type="submit">리뷰 올리기</button>
					</li>
					<li>
						<button type="button">취소</button>
					</li>
				</ul>
			</form>
		</article>
	</section>
	</div>
</body>
</html>