<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사소개</title>
<style>
	* {
		margin : 0px;
		padding : 0px;
	}
	
	
	
	/* top 관련 css */
	.company_top {
	/* 	border : 1px solid black; */
		width : 100%;
		height : 400px;
		background-image : url("http://localhost:9000/mangoplate/resources/images/company.jpg");
		background-repeat : no-repeat;
		background-size : 100% 400px;
	}
	
	.company_top tr td span{
		color : #fff;
	}
	
	.company_top tr td span:nth-child(1) {
	 /* 	border : 1px solid red;  */
		font-size : 3rem;
		font-weight : 700;
		margin-left : 120px;
		margin-bottom : 25px;
	}
	
	.company_top tr td span:nth-child(3) {
	 /* 	border : 1px solid blue; */
		font-size : 1.3rem;
		font-weight : 400;
		margin-left : 120px;
	}
	
	
	
	/* 소제목 관련 css */
	
	.history {
	/* 	border : 1px solid black; */
		width : 1000px;
		margin : auto;
	}
	
	.small_title {
		margin : 50px 0px;
	}
	
	.small_title h1 {
		color : #ff792a;
		text-align : center;
		margin : 80px 0px 30px;
		font-size : 1.8rem;
	}
	
	.small_title p {
		color : #333333;
		text-align : center;
		font-size : 19px;
		line-height : 1.6em;
	}
	
	/* 연혁 관련 css */
	
	.main_history li {
		list-style-type : none;			
	}
	
	.main_history img {
	/* 	border : 1px solid black; */
		margin-bottom : 40px;
	}
	
	.main_history {
	/* 	border : 1px solid black; */
		padding : 30px;
	}
	
	.main_history ul li:nth-child(1){
	/* 	border :1px solid black; */
	/* 	margin : 0 0 0 30px; */
		color : #ff792a;
		font-size : 1.2em;
	}
	
	.main_history ul li:nth-child(2), li:nth-child(3), li:nth-child(4), li:nth-child(5) {
	/* 	border : 1px solid black; */
		margin : 20px 15px;
		padding : 0px 40px;
		color : #333333;
		font-size : 19.2px;
	}
	
	
	/* 홈페이지 소개 */
	
	.point {
		width : 1000px;
		height : 558px;
	/* 	border : 1px solid black; */
		margin : auto;
		background-color : #ff792a;
	}
	
	.point p {
		color : #fff;
		font-size : 21px;
		text-align : center;
		line-height : 2.2rem;
		font-weight : 600;
	}
	
	.point img:nth-child(1) {
		padding : 30px;
	}
	
	/* .point div {
		border : 1px solid black;
		width : 300px;
		margin : auto;
	} */
	
	.img {
	/* 	border : 1px solid black; */
		width : 500px;
		height : 300px;
		display : block;
		margin : auto;
		padding-bottom : 45px;
	}
	
	
	/* 회사소개 관련 css */
	
	.info { 
	/* 	border : 1px solid blue; */
		width : 1000px;
		margin : auto;
	}
	
	.info1 img {
	/* 	border : 1px solid blue; */
		padding : 30px;
		margin-bottom : 30px;
		
	}
	
	.info2 li {
		list-style-type : none;
	}
	
	.info2 li:nth-child(odd) {
	/* 	border : 1px solid black; */
		color : #ff792a;
		font-size : 1.2em;
		margin-left : 30px;
	}
	
	.info2 li:nth-child(even) {
	/* 	border : 1px solid red; */
		margin : 20px 0 20px 30px;
		padding-left :40px;
		color : #003399;
		font-size : 1.2em;
	}
	
	.info2 {
	/* 	border : 1px solid red; */
		float : left;
	}
	
	
	
	/* map 관련 css  */
	
	.map_wrap {
	/* 	border : 1px solid black; */
		position:relative;overflow:hidden;width:400px;height:250px;
		display : inline-block;
		}
	.radius_border{border:1px solid #919191;border-radius:5px;}     
	.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
	.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
	.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
	.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}
	
	
	
	/* 하단 공백 css */
	
	.under1 {
		clear : both;
		border-bottom : 3px solid #ff792a;
		width : 100px;;
		height : 20px;
		margin : auto;
		padding : 120px 0 0;
	/* 	border : 1px solid red; */
	}
	
	.under3 {
		border-top : 3px solid #ff792a;
		width : 100px;;
		height : 200px;
		margin : auto;
		padding : 120px 0 0;
	}
	
	.under2 {
	/* 	border : 1px solid black; */
		text-align : center;
		font-size : 1.5rem;
		padding : 60px 18px;
	}
	
	.under2 p:nth-child(2) {
		margin-top : 10px;
	}
	
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69d02d054bc554d77e8ab840092a3b61"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69d02d054bc554d77e8ab840092a3b61&libraries=services"></script>
</head>
<body>
<!-- header -->
<iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe>

	<section>
		<div>
			<table class="company_top">
				<tr>
					<td>
						<span>ABOUT US</span><br>
						<span>맛있는 경험, 맛있는 삶.</span>
					<td>
				</tr>
			</table>
		</div>
	</section>
	<section class="history">
		<div class="small_title">
			<h1>"믿을만한 맛집을 소개하고 추천하는 서비스?"</h1>
			<p>맛집을 사랑하는 공동 창업자 4명의 고민으로 시작된 망고플레이트.</p>
			<p>솔직한 리뷰와 정확한 정보를 바탕으로 맛집을 추천하는 서비스가 되고자 합니다.</p>
		</div>
		<div class="main_history">
			<img src="http://localhost:9000/mangoplate/resources/images/history.png">
			<ul>
				<li>2013</li>
				<li><span style="font-weight : 700;">APR.</span> 망고플레이트 설립</li>
				<li><span style="font-weight : 700;">JUN.</span> 스파크랩스 액셀레이터 2기 선정</li>
				<li><span style="font-weight : 700;">OCT.</span> 망고플레이트 앱 출시</li>
			</ul>
			<ul>
				<li>2014</li>
				<li><span style="font-weight : 700;">MAY.</span> beLAUNCH 2014 글로벌 브레인 우승</li>
				<li><span style="font-weight : 700;">JUN.</span> 스파크랩스 글로벌 투자 유치</li>
				<li><span style="font-weight : 700;">JUL.</span> 마루 180 입주</li>
				<li><span style="font-weight : 700;">SEP.</span> 소프트뱅크벤처스 투자 유치</li>
			</ul>
			<ul>
				<li>2015</li>
				<li><span style="font-weight : 700;">JUN.</span> 퀄컴 벤처스, 소프트뱅크 벤처스, YJ캐피탈 추가 투자 유치 (67억원)</li>
				<li><span style="font-weight : 700;">JUL.</span> 망고플레이트 PC 웹 리뉴얼</li>
				<li><span style="font-weight : 700;">SEP.</span> 망고플레이트 앱 리뉴얼</li>
			</ul>
			<ul>
				<li>2016</li>
				<li><span style="font-weight : 700;">JUL.</span> 서울시 선정 서울 관광 우수IT’서비스</li>
				<li><span style="font-weight : 700;">AUG.</span> 망고플레이트 비즈니스 망고웨잇 출시</li>
				<li><span style="font-weight : 700;">DEC.</span> 11회K-ICT 대한민국 인터넷대상- 특별상</li>
			</ul>
			<ul>
				<li>2017</li>
				<li><span style="font-weight : 700;">MAR.</span> 2017 서울관광스타트업 프로젝트 공모전 수상</li>
				<li><span style="font-weight : 700;">APR.</span> 2017 F8 페이스북 위치정보 런칭 파트너사 선정</li>
				<li><span style="font-weight : 700;">SEP.</span> 경기도와 식품안전 플랫폼MOU 체결</li>
				<li><span style="font-weight : 700;">DEC.</span> 삼성전자 무선사업부와 음성 검색 데이터및 콘텐츠 제휴</li>
			</ul>
			<ul>
				<li>2018</li>
				<li><span style="font-weight : 700;">JAN.</span> 세계 최대 지도 제공업체HERE와 데이터 제휴</li>
				<li><span style="font-weight : 700;">APR.</span> KT 기가지니와 데이터 제휴</li>
			</ul>
		</div>
	</section>
	<section>
		<article class="point">
			<img src="http://localhost:9000/mangoplate/resources/images/product.png"><br>
			<img src="http://localhost:9000/mangoplate/resources/images/product2.png" class="img">
			<p>위치 기반 맛집 검색 및 추천 서비스</p>
			<p>모바일 앱과 웹에서 사용하실 수 있습니다.</p>
		</article>
	</section>
	<section class="info">
		<article class="info1">
			<img src="http://localhost:9000/mangoplate/resources/images/contact.png">
		</article>
		<div class="info2">
			<ul>
				<li>전화번호</li>
				<li>+82-2-565-5988</li>
				<li>식당등록 및 정보수정 문의</li>
				<li>cs@mangoplate.com</li>
				<li>광고 문의</li>
				<li>ad@mangoplate.com</li>
				<li>컨텐츠 제휴 및 마케팅 문의</li>
				<li>marketing@mangoplate.com</li>
				<li>식당 대기관리 시스템 문의</li>
				<li>biz@mangoplate.com</li>
				<li>기타 문의</li>
				<li>cs@mangoplate.com</li>
				<li>채용 관련 메일</li>
				<li>hr@mangoplate.com</li>
				<li>주소</li>
				<li>서울특별시 강남구 봉은사로 479, 479타워 11층</li>
			</ul>
		</div>
		<article class="third">
			<div class="map_wrap">
			    <div id="map" style="width:400px;height:250px;position:relative;overflow:hidden;"></div> 
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
	</section>
		<div class="under1"></div>
	<section>
	</section>
		<div class="under2">
			<p>망고플레이트는 항상 열려있습니다.</p>
			<p>궁금한 점이 있다면 언제든 연락주세요!</p>
		</div>
	<section>
	</section>
		<div class="under3"></div>
	<section>
	</section>
<!-- footer Include -->
   <iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>	
</body>
</html>