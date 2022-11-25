<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 세부리스트</title>
<style>
	* {
		margin : 0px; padding : 0px;
	}
	
	/* top 부분 css */

	section.top {
 	/*	border : 1px solid black; */
		background-color : #f7f7f7;
		width : 100%;
		text-align : center;
		border-bottom : 1px solid #dbdbdb;
		margin-bottom : 28px;
		padding-top : 30px;
	}
	
	section.top div {
		padding : 48px 30px 20px 30px;
		width : 900px;
		/* height : 178px; */
		margin : 0 auto;
	}
	
	section.top p:nth-child(1) {
		font-size : 0.875 rem;
		color : #9b9b9b;
		margin-top : 20px;
	}
	
	section.top p:nth-child(2) {
		font-size : 38px;
		/* padding : 10px; */
		margin-top : 18px;
	}
	
	section.top p:nth-child(3) {
		font-size : 1.2rem;
		color : #9b9b9b;
		margin : 20px auto 30px;
	}
	
	/* content 부분 css */
	
	.content {
		width : 100%;
	}
	
	.second {
	/* 	border : 1px solid red; */
		width : 900px;
		margin : auto;
	}
	
	.first {
		border-bottom : 1px solid #dbdbdb;
		padding : 28px 0px;
		display : flex;
		flex-wrap : wrap;
		position : relative;
	}
	
	.first div:nth-child(2) label {
	/* 	border : 1px solid black; */
		margin-left : 20px;
		font-size : 28px;
	}
	
	.first div:nth-child(2) p {
	/* 	border : 1px solid red; */
		margin-left : 20px;
	}
	
	.push {
	/* 	border : 1px solid red; */
		position : absolute;
		left : 850px;
		width : 90px;
	}
	
	.push img {
	/* 	border : 1px solid blue; */
		width : 47px;
		height : 47px;
		position : absolute;
		left : 10px;
	}
	
	.push span {
	/* 	border : 1px solid red; */
		font-size : 0.7rem;
		position : absolute;
		left : 11px;
		top : 45px;
	}
	
	.next {
	/* 	border : 1px solid blue; */
		position : absolute;
		top : 232px;
		left : 750px;
	}
	
	.next a {
		text-decoration : none;
		color : #888888;
	}
	
	/* 더보기 버튼 css */
	
	.more {
		width : 113px;
		margin : auto;
	 	margin-bottom : 30px;
	}
	
	.more img {
	 /* border : 1px solid black; */
		width: 113px;
		height : 30px;
		padding : 5px;
	}
	
	
	/* 공유 버튼 css */
	
	.share div {
	/* 	border : 1px solid red; */ 
		width : 900px;
		height : 25px;
		padding : 27px 0;
		position : relative;
	}
	
	.share div ul:nth-child(1) li {
		border : 1px solid #9b9b9b;
		list-style-type : none;
		display : inline-block;
		border-radius : 50px;
		padding : 10px 127px 10px 25px;
		position : absolute;
		top : 19px;
		color : #9b9b9b;
	}
	
	.share div ul:nth-child(2) {
		border : 2px solid #FF792A;
		display : inline-block;
		width : 120px;
		position : absolute;
		top : 19px;
		left : 228px;
		border-radius : 50px;
		padding : 6px 0px 8px 0px;
	}
	
	.share div ul:nth-child(2) li {
		list-style-type : none;
		font-size : 15px;
		margin-left : 12px;
		color : #FF792A;
	}
	
	.share div ul:nth-child(2) li:nth-child(1) {
		float : left;
	}
	
	.share div ul:nth-child(2) li:nth-child(1) img {
	/*	border : 1px solid black; */
		width : 28px;
		height : 28px;
	}
	
	.share div ul:nth-child(2) li:nth-child(2) {
	/* 	border : 1px solid black; */
		margin-top : 5px;
		margin-left : 4px;
		display : inline-block;
	}
	
	.share div ul:nth-child(3) li {
		list-style-type : none;
		position : absolute;
		top : 8px;
		left : 768px;
	/* 	border : 1px solid black; */
	}
	
	/* map 관련 css  */
	
	.third {
	/* 	border : 1px solid blue; */
		margin-top : 35px;
		padding : 27px 0px;
		border-top : 1px solid #dbdbdb;
	}
	
	.third h2 {
	/* 	border :1px solid red; */
		margin-bottom : 20px;
	}
	
	.map_wrap {position:relative;overflow:hidden;width:100%;height:450px;}
	.radius_border{border:1px solid #919191;border-radius:5px;}     
	.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
	.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
	.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
	.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}
	
	
	/* bottom 부분 css */
	
	section.bottom {
	 	background-color : #f7f7f7; 
		width : 100%;
		height : 600px;
		border-top : 1px solid #dbdbdb;
	}
	
	.main2 {
	/*  	border : 1px solid red; */
		width : 900px;
		margin : 0 auto;
	 	padding : 0 20px; 
	}
	
	.main3 {
	/* 	border : 1px solid blue; */
		width : 900px;
		height : 300px;
		margin : auto;
		margin-top : 20px;
		padding : 0 20px;
	}
	
	.main2 h2 {
	/* 	border : 1px solid green; */
		margin-top : 30px;
		margin-bottom : 20px;
	}
	
	h2 {
		color : #FF792A;
		line-height : 1.2em;
	}
	
	.similar { 
	/* 	border : 1px solid black; */
		width : 858.8px;
		height : 210px;
	 	border-bottom : 1px solid #dbdbdb;
	}
	
	div.similar article:nth-child(1) {
	/* 	border : 1px solid blue; */
		float : left;
		width : 190px;
		margin : 0 30px 0 0;
	}
	
	div.similar article:nth-child(2) {
	/* 	border : 1px solid blue; */
		float : left;
		width : 190px;
		margin : 0 30px 0 0;
	}
	
	div.similar article:nth-child(3) {
	/* 	border : 1px solid blue; */
		float : left;
		width : 190px;
		margin : 0 30px 0 0;
	}
	
	div.similar article:last-child {
	/* 	border : 1px solid black; */
		float : left;
		width : 190px;
	}
	
	div.similar article li {
		list-style-type : none;
	}
	
	.similar {
		position : relative;
	}
	
	div.similar article li:nth-child(1) {
	/* 	border : 1px solid purple; */
		position : absolute;
		top : 138px;
		font-size : 18px;
		color : #555;
		float : left;
		vertical-align : middle;
	}
	
	div.similar article li:nth-child(2) {
		font-size : 26px;
		color : #FF792A;
		float : right;
	}
	
	div.similar article li:nth-child(3) {
		margin-top : 6px;
		font-size : 14px;
		color : #9B9B9B;
		clear : both;
	}
	
	.tag li {
		float : left;
		list-style-type : none;
		border : 1px solid #cbcbcb;
		border-radius : 25px;
		font-size : 0.938rem;
		padding : 7px 16px;
		margin : 15px 12px 0px 0px;
		color : #6a6a6a;
	}
	
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69d02d054bc554d77e8ab840092a3b61"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69d02d054bc554d77e8ab840092a3b61&libraries=services"></script>
</head>
<body>
<!-- header -->
<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
<jsp:include page="../header.jsp"></jsp:include>

	<section class="top">
		<div>
			<!-- <p>181,458 클릭 | 2022-09-26</p> -->
			<p>${vo.rhits } 클릭 | 2022-09-26</p>
			<p>${rcategory } 맛집 베스트 35곳</p>
			<p>"국내에서 즐기는 ${rcategory }의 맛!"</p>
		</div>
	</section>
	<section class="content">
		<article class="second">
			<div class="bundle">
				<div class="pull">
					<ul class="restaurant_name">
					<c:forEach var="vo" items="${list}">
						<li class="first" style="color:rgb(85,85,85);">
							<img src="http://localhost:9000/mangoplate/resources/upload/${vo.rsimage }" width="300px" height="250px">
							<div>
								<label>${vo.rno}. ${vo.rname } </label>
								<!-- <span style="color:coral;">4.7</span> -->
								<p>${vo.raddr }</p>
							</div>
							<div class="push">
								<img src="http://localhost:9000/mangoplate/resources/images/star.png">
								<span>가고싶다</span>
							</div>
							<div class="next">
								<a href="http://localhost:9000/mangoplate/restaurant_detail.do?rid=${vo.rid }">${vo.rname} 더보기 ></a>
							</div>
						</li>
					</c:forEach>
					</ul>
				</div>
			</div>
			<article class="more">
				<div>
					<img src="http://localhost:9000/mangoplate/resources/images/more.png">
				</div>
			</article>
			<article class="share">
				<div>
					<ul>
						<li>http://localhost:9000/man...</li>
					</ul>
					<ul>
						<li><img src="http://localhost:9000/mangoplate/resources/images/share.jpg"></li>
						<li>공유하기</li>
					</ul>
					<ul>
						<li><img src="http://localhost:9000/mangoplate/resources/images/sns.png"></li>
					</ul>
				</div>
			</article>
			<article class="third">
				<h2>리스트 지도</h2>
				<div class="map_wrap">
				    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
				    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
				    <div class="custom_zoomcontrol radius_border"> 
				        <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
				        <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
				    </div>
				</div>
				<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(37.5252, 127.0389), // 지도의 중심좌표
				        level: 1 // 지도의 확대 레벨
				    };  
				
				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				    
				// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
				function zoomIn() {
				    map.setLevel(map.getLevel() - 1);
				}
				
				// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
				function zoomOut() {
				    map.setLevel(map.getLevel() + 1);
				}
				
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(37.5252, 127.0389); 
	
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});
	
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				
				</script>
			</article>
		</article>
	</section>
	<section class="bottom">
		<div class="main2">
			<h2>리스트의 식당과 비슷한 맛집</h2>
			<div class="similar">
				<article>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</article>
				<article>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</article>
				<article>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</article>
				<article>
					<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg" width="192px" height="128px">
					<div>
						<ul>
							<li>아재식당</li>
							<li>4.5</li>
							<li>연남도-인도 음식</li>
						</ul>
					</div>
				</article>
			</div>
		</div>
		<div class="main3">
			<h2>실시간 인기 키워드</h2>
			<article>
				<div class="upper_tag">
					<ul class="tag">
						<li># 전체</li>
						<li># 파스타</li>
						<li># 무한리필</li>
						<li># 이태원</li>
						<li># 고기</li>
						<li># 데이트</li>
						<li># 강남</li>
						<li># 홍대</li>
						<li># 스테이크</li>
						<li># 가로수길</li>
						<li># 디저트</li>
					</ul>
				</div>
			</article>
		</div>
	</section>
<!-- footer Include -->
   <iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>	
</body>
</html>