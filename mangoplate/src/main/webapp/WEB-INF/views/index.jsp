<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>망고플레이트: 나만의 맛집 검색</title>
<!-- css -->
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<!-- <script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_jquery.js"></script> -->
<!-- <script
	src="http://localhost:9000/mangoplate/resources/js/mangoplate_index.js"></script> -->
<script>
$(document).ready(function() {
	/* alert("1234");
	$("#myModal").trigger('click'); */
	
	let login_result = '${login_result}';
	let logout_result = '${logout_result}';
	let join_result = '${join_result}';
	let auth_result = '${auth}';
	
	
	if(logout_result == 'ok'){
		alert("로그아웃에 성공하셨습니다");
	}
	if(login_result == 'ok'){
		alert("로그인에 성공하셨습니다");
	}
	
	if(auth_result == 'fail'){
		alert("접근권한이 없습니다. 로그인을 진행해주세요.");
	}
	
	if(login_result == 'fail'){
		alert("아이디 또는 패스워드가 다릅니다. 다시 로그인해주세요.");
		$("#myModal").click();
	}
	
	if(join_result == 'ok'){
		alert("회원가입에 성공하셨습니다. 로그인을 진행해주세요.");
	}
	
	/**
	* index 페이지 로딩 시 잇딜 리스트 가져오기
	**/
	initEatdealList();
	
	function initEatdealList(){
		//Ajax를 이용한 데이터 가져오기
		$.ajax({
			url : "eatdeal_list_json.do?rpage=1",
			success : function(result){
				/* alert(result); */
				//1.  콜백함수의 결과인 result 값은 문자열을 JSON 객체로 변환
				let eatdeal = JSON.parse(result);
				//2. Dynamic HTML을 이용하여 JSON 결과를 출력하는 코드생성
				let	output = "<div class='eatdeal_table'>";
				for(data of eatdeal.list){
				 	output += "<table class='eatdeal_list'>";
					output += "<tr>";
					output += "<th><img src='http://localhost:9000/mangoplate/resources/upload/"+data.esimage1+"'></th>";
					output += "</tr>";
					output += "<tr>";
					output += "<td>"+ data.ename +"</td>";
					output += "<td>"+ data.region + " - " +data.menu +"</td>";
					output += "</tr>";
					output += "</table>";
				}
				output += "</div>";
				 
				//3. 생성된 Dynamic HTML 코드를 해당위치에 출력 
				$("div.index_eatdeal > a").after(output);
				$("div.index_restaurant > a").after(output);
				$("div.index_boardstory > a").after(output);
				
				//4. Dynamic HTML 코드에서 이벤트 처리 진행
			}//success
		});//ajax
	}// initNoticeList
	
}); //ready
</script>

<style>
.main-header {
	margin-top: 61px;
}

/* 컨텐츠 css */
.index_restaurant, .index_boardstory, .index_eatdeal {
	/* border: 1px solid red; */
	margin-top: 50px;
	margin-left: 20px;
}
	h3{
	/* border: 1px solid red; */
	font-weight: bold;
	color: coral;
	display: inline-block;
}
	.index_restaurant p, .index_boardstory p, .index_eatdeal p {
	/* border: 1px solid blue; */
	color: gray;
	display: inline-block;
	float: right;
	clear:both;
	padding: 5px;
	text-decoration: underline;
}

.eatdeal_table {
	/* border: 2px solid red; */
	width: 100%;
	height: 350px;
}
table {
	/* border: 1px solid green; */
	margin: 10px;
	float: left;
	
}

table img{
	width: 450px;
	height: 250px;
	
}
table td:nth-child(1){
	/* border: 1px solid red; */
	/* width: 550px;
	height: 265px; */
	margin: 0px;
	padding: 0px;
	font-size: 30px;
	/* text-align: center; */
	display:block;
	font-weight: normal;
}

table td:nth-child(2) {
	/* border: 1px solid red; */
	/* width: 550px;
	height: 265px; */
	margin: 0px;
	padding: 0px;
	/* font-size: 30px;
	text-align: center; */
	color: gray;
	display:block;
	font-weight: normal;
}

</style>

</head>

<body>
	<!-- Header Include -->
	<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- ---------------------------------------- -->
	<!-- ------------- Content ------------------ -->
	<!-- ---------------------------------------- -->

	<!-- 메인페이지 헤더 -->
	<main class="pg-main">
		<article class="contents main-padding">
			<div class="main-header"
				style="background-image: url('https://mp-seoul-image-production-s3.mangoplate.com/a4283e5725fb56755b9bbeb8f285d0dc.jpg');">
				<div>
					<p class="title">솔직한 리뷰, 믿을 수 있는 평점!</p>
					<h1 class="title">망고플레이트</h1>
					<p class="options">
						<a href="#">Download app</a> <a href="#">add/Claim restaurant</a>
						<a href="#">Become a holic</a>
					</p>

					<fieldset class="main-search">
						<legend>전체 검색</legend>

						<label class="search-word" for="main-search"> <span
							class="icon">검색 :</span> <input id="main-search"
							class="HomeSearchInput" name="main-search" type="text"
							maxlength="50" placeholder="지역, 식당 또는 음식" autocomplete="off"
							onclick="trackEvent('CLICK_SEARCH_MAIN')" /> <span
							class="clear_btn">CLEAR</span>
						</label> <input class="btn-search" type="submit" value="검색"
							onclick="trackEvent('CLICK_KEYWORD_SEARCH');" />
					</fieldset>

					<aside class="shortcut-app type-main">
						<a class="btn inbound only-desktop "
							href="https://www.mangoplate.com/eat_deals"
							onclick="common_ga(&#39;PG_MAIN&#39;, &#39;CLICK_SALES_LOCAL&#39;)"
							style=""><img
							src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/nf58dxcb-7ikpwam.png"></img></a>

						<button class="btn android" data-event_term="V1"
							data-event_name="CLICK_DOWNLOAD_MAIN_ANDROID"
							onclick="trackEvent('CLICK_DOWNLOAD_MAIN_ANDROID');go_to_app_or_market(this, 'android');">
							<img
								src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/bzdlmp2toaxrdjqg.png"
								width="180" alt="android market button" />
						</button>

						<button class="btn ios" data-event_term="V1"
							data-event_name="CLICK_DOWNLOAD_MAIN_IOS"
							onclick="trackEvent('CLICK_DOWNLOAD_MAIN_IOS');go_to_app_or_market(this, 'ios');">
							<img
								src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/f7eokfaszt4gpkh6.svg?v=1"
								width="180" alt="app store" />
						</button>
					</aside>
				</div>
			</div>
		</article>
	</main>

	<!-- 메인페이지 맛집리스트 컨텐츠  -->
	<section>
		<div class="index_restaurant">
			<h3>믿고 보는 맛집 리스트</h3>
			<a href="http://localhost:9000/mangoplate/restaurant_list.do">
				<p>리스트 더보기</p>
			</a>
			<!-- Ajax + Dynamic HTML로 생성된 맛집리스트 출력위치 -->
		</div>
	</section>
	
	<!-- 메인페이지 망고스토리 컨텐츠  -->
	<section>
		<div class="index_boardstory">
			<h3>맛집 스토리</h3>
			<a href="http://localhost:9000/mangoplate/boardstory_list.do">
				<p>스토리 더보기</p>
			</a>
		</div>	
	</section>
	
	<!-- 메인페이지 잇딜 컨텐츠  -->
	<section>
		<div class="index_eatdeal">
			<h3>EAT딜을 판매중인 식당</h3>
			<a href="http://localhost:9000/mangoplate/eatdeal_list.do">
				<p>메뉴 더보기</p>
			</a>
			<!-- Ajax + Dynamic HTML로 생성된 eatdeal 출력위치 -->
		</div>	
	</section>
	
	
	<!-- ------------------------------------------ -->
	<!-- ------------ Content finish -------------- -->
	<!-- ------------------------------------------ -->


	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>
