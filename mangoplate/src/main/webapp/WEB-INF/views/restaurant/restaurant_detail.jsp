<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당 상세페이지</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/restaurant_detail.css">
</head>
<body>
<!-- header -->
<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
<jsp:include page="../header.jsp"></jsp:include>
	<!-- content -->
	<main class="pg-restaurant have-share-sns-another ng-scope"
		ng-controller="mp20_restaurant_controller"
		data-restaurant_key="onGDjypuMJMF" data-restaurant_name="상암회관"
		data-metro_str="마포/공덕" data-subcuisine_code_str="국수 / 면 요리"
		data-price_code_str="만원 미만" data-parking_code_str=""
		data-review_count="9">
		<article class="contents">
			<div class="column-wrapper">
				<div class="column-contents">
					<div class="inner">
						<section class="restaurant-detail">
							<header>
								<div class="restaurant_title_wrap">
									<span class="title">
										<h1 class="restaurant_name">${vo.rname }</h1> <strong
										class="rate-point expected"> <span>4.4</span>
									</strong>

										<p class="branch"></p>
									</span>

									<div class="restaurant_action_button_wrap">
										
										<a href="http://localhost:9000/mangoplate/review_write.do?rid=${vo.rid}">
										<button class="review_writing_button" data-restaurant_key="onGDjypuMJMF">
											<i class="review_writing_button_icon"></i> <span
												class="review_writing_button_text">리뷰쓰기</span>
										</button></a>

										<div class="wannago_wrap">
											<button class="btn-type-icon favorite wannago_btn "
												data-restaurant_uuid="398759" data-action_id=""></button>
											<p class="wannago_txt">가고싶다</p>
										</div>
									</div>
								</div>

								<div class="status
                branch_none
                ">
									<span class="cnt hit">7,612</span> <span class="cnt review">9</span>
									<span class="cnt favorite">137</span>
								</div>
							</header>


							<section class="restaurant_introduce_section_mobile only-mobile">
								<div class="RestaurantIntroduceSection">


									<div
										class="RestaurantIntroduceSection__Section CardSlider EatDealFadeSliderSection">
										<div class="SectionLabel SectionLabel--Mint">
											<h3 class="SectionLabel__Label">EAT딜</h3>
										</div>

										<div class="EatDealFadeSliderSection__Content">
											<section class="EatDealIntroduce">
												<i class="EatDealIntroduce__SignatureIcon"></i>
												<h3 class="EatDealIntroduce__Title">EAT딜</h3>
												<p class="EatDealIntroduce__Description">
													할인된 가격으로<br>인기 메뉴를<br>맛볼 수 있는 기회!
												</p>
											</section>

											<div class="SectionTitle">
												<span class="SectionTitle__Title">할인된 가격으로 인기 메뉴를 맛볼
													수 있는 기회!</span><span class="SectionTitle__Description">(모바일
													앱에서 사용할 수 있습니다. )</span>
											</div>

											<div class="CardSlider__Slider EatDealFadeSlider">
												<section class="EatDealCard EatDealCard--Placeholder">
													<div class="EatDealCard__Wrapper">
														<div class="EatDealCard__Picture"></div>

														<div class="EatDealCard__InfoWrap">
															<h3 class="EatDealCard__Title"></h3>
															<div class="EatDealCard__PriceWrap"></div>
														</div>
													</div>
												</section>
												<section class="EatDealCard EatDealCard--Placeholder">
													<div class="EatDealCard__Wrapper">
														<div class="EatDealCard__Picture"></div>

														<div class="EatDealCard__InfoWrap">
															<h3 class="EatDealCard__Title"></h3>
															<div class="EatDealCard__PriceWrap"></div>
														</div>
													</div>
												</section>
											</div>
										</div>
									</div>


								</div>

							</section>


							<ul class="Restaurant__InfoList only-mobile">
								<li class="Restaurant__InfoItem">
									<div class="Restaurant__InfoItemMapContainer"></div>
									<div class="Restaurant__InfoItemLabel">
										<div class="Restaurant__InfoItemLabel--RoadAddressText">서울특별시
											마포구 월드컵북로54길 17</div>
										<div class="Restaurant__InfoItemLabel--Address">
											<span class="Restaurant__InfoAddress--Rectangle">지번</span> <span
												class="Restaurant__InfoAddress--Text">서울시 마포구 상암동
												1597</span>
										</div>

									</div>
								</li>

								<li class="Restaurant__InfoItem"><a href="tel:02-303-1950">
										<div class="Restaurant__InfoItemLabel">02-303-1950</div>
								</a></li>
							</ul>

							<!-- 상세 정보 -->
							<table class="info
              no_menu
              ">
								<caption>레스토랑 상세 정보</caption>

								<tbody>
									<tr class="only-desktop">
										<th>주소</th>
										<td>${vo.raddr }<br> <span
											class="Restaurant__InfoAddress--Rectangle">지번</span> <span
											class="Restaurant__InfoAddress--Text">서울특별시 강남구 신사동 643-18</span>
										</td>
									</tr>

									<tr class="only-desktop">
										<th>전화번호</th>
										<td>${vo.rcontact }</td>
									</tr>

									<tr>
										<th>식당 종류</th>
										<td><span>${vo.rcategory }</span></td>
									</tr>

									<tr>
										<th>가격대</th>
										<td>${vo.rprice }</td>
									</tr>

								</tbody>
							</table>

							<p class="update_date">업데이트 : ${vo.rdate }</p>

							<div id="reviewListFocusId"></div>
						</section>
						<section class="RestaurantReviewList">
							<header class="RestaurantReviewList__Header">
								<h2 class="RestaurantReviewList__Title">
									<span class="RestaurantReviewList__RestaurantName">상암회관</span><span
										class="RestaurantReviewList__RestaurantNameSuffixDesktop">리뷰</span><span
										class="RestaurantReviewList__RestaurantNameSuffixMobile">의
										리뷰</span> <span class="RestaurantReviewList__AllCount">9</span>
								</h2>

								<ul class="RestaurantReviewList__FilterList">
									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__FilterButton--Selected RestaurantReviewList__AllFilterButton">
											전체 <span class="RestaurantReviewList__ReviewCount">9</span>
										</button>
									</li>

									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__RecommendFilterButton">
											맛있다 <span class="RestaurantReviewList__ReviewCount">9</span>
										</button>
									</li>

									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__OkFilterButton RestaurantReviewList__FilterButton--Inactive">
											괜찮다 <span class="RestaurantReviewList__ReviewCount">0</span>
										</button>
									</li>

									<li class="RestaurantReviewList__FilterItem">
										<button
											class="RestaurantReviewList__FilterButton RestaurantReviewList__NotRecommendButton RestaurantReviewList__FilterButton--Inactive">
											별로 <span class="RestaurantReviewList__ReviewCount">0</span>
										</button>
									</li>
								</ul>
							</header>
							<ul class="RestaurantReviewList__ReviewList">
								<li
									class="RestaurantReviewItem RestaurantReviewList__ReviewItem">
									<a class="RestaurantReviewItem__Link" href="/reviews/OTk3MzU0"
									target="_blank">
										<div class="RestaurantReviewItem__User">
											<div class="RestaurantReviewItem__UserPictureWrap">
												<img class="RestaurantReviewItem__UserPicture loaded"
													data-src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/1294770_1614160853431?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80"
													alt="user profile picture"
													src="https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/1294770_1614160853431?fit=around|56:56&amp;crop=56:56;*,*&amp;output-format=jpg&amp;output-quality=80"
													data-was-processed="true">
											</div>

											<span class="RestaurantReviewItem__UserNickName">젊어서먹으세</span>

											<ul class="RestaurantReviewItem__UserStat">
												<li
													class="RestaurantReviewItem__UserStatItem RestaurantReviewItem__UserStatItem--Review">234</li>
												<li
													class="RestaurantReviewItem__UserStatItem RestaurantReviewItem__UserStatItem--Follower">10</li>
											</ul>

											<i class="RestaurantReviewItem__HolicBadge"></i>
										</div>

										<div class="RestaurantReviewItem__ReviewContent">
											<div class="RestaurantReviewItem__ReviewTextWrap">
												<c:forEach var="review" items="${list}">
												<!-- <p class="RestaurantReviewItem__ReviewText">
													주인 언니가 너무 친절하시고 곰탕칼국수에 밥도 내주는데 가격도 착하다! 나이드신 부모님과 아이들을 데리고
													온 동네 주민들이 바글바글한 상암 맛집. 앉자마자 따뜻한 두부와 김치를 내오는데 따듯한 온도에 감동,
													부드럽고 고소한 맛에 감동. <br>강원도에서 계약재배를 통해 수급한 콩으로 만든 콩 국물은
													담백하다. 근처 옥합콩국수는 한달새 가격이 올랐는데 상암회관은 아직 9천원이라는 착한 가격을 유지하고
													있다. <br>진주집은 가격보다 양이 더 부담됐는데 상암회관은 양도 적당하고, 테이블에 올려진
													굵은 소금으로 간을 셀프로 조절할 수 있어서 좋다.
												</p> -->
												<p>
													${review.vcontent }
												</p>
												</c:forEach>

												<span class="RestaurantReviewItem__ReviewDate">2022-09-10</span>
											</div>

											<ul class="RestaurantReviewItem__PictureList">
												<li class="RestaurantReviewItem__PictureItem">
													<button class="RestaurantReviewItem__PictureButton"
														data-index="0">
														<img class="RestaurantReviewItem__Picture loaded"
															data-src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81221?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															alt="review picture"
															src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81221?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															data-was-processed="true">

													</button>
												</li>

												<li class="RestaurantReviewItem__PictureItem">
													<button class="RestaurantReviewItem__PictureButton"
														data-index="1">
														<img class="RestaurantReviewItem__Picture loaded"
															data-src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81224?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															alt="review picture"
															src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81224?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															data-was-processed="true">

													</button>
												</li>

												<li class="RestaurantReviewItem__PictureItem">
													<button class="RestaurantReviewItem__PictureButton"
														data-index="2">
														<img class="RestaurantReviewItem__Picture loaded"
															data-src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81229?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															alt="review picture"
															src="https://mp-seoul-image-production-s3.mangoplate.com/398759/1294770_1662814227013_81229?fit=around|120:120&amp;crop=120:120;*,*&amp;output-format=jpg&amp;output-quality=80"
															data-was-processed="true">

													</button>
												</li>
											</ul>
										</div>

										<div
											class="RestaurantReviewItem__Rating RestaurantReviewItem__Rating--Recommend">
											<span class="RestaurantReviewItem__RatingText">맛있다</span>
										</div>


								</a>
								</li>
							</ul>
						</section>
					</div>
				</div>
				<div class="side-wrap">
					<div class="column-side">
						<!-- 지도 -->
						<div class="map-container" tabindex="0"
							style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/2x/pattern_1.png&quot;) 0px 0px repeat transparent;">
							<div class="map_layer"></div>
							<div
								style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/2x/openhand.cur&quot;), default;">
								<div
									style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;">
									<div
										style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;">
										<div
											style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;"></div>
										<div
											style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;">
											<div
												style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;">
												<div draggable="false" unselectable="on"
													style="position: absolute; top: 21px; left: 110px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55867/25375@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: 277px; left: 110px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55867/25376@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: -235px; left: 110px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55867/25374@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: -235px; left: 366px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55868/25374@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: 277px; left: -146px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55866/25376@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: 21px; left: 366px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55868/25375@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: 21px; left: -146px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55866/25375@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: 277px; left: 366px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55868/25376@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
												<div draggable="false" unselectable="on"
													style="position: absolute; top: -235px; left: -146px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;">
													<img draggable="false" unselectable="on" alt=""
														crossorigin="anonymous" width="256" height="256"
														src="https://nrbe.pstatic.net/styles/basic/1665119629/16/55866/25374@2x.png?mt=bg.ol.sw.ar.lko"
														style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;">
												</div>
											</div>
										</div>
										<div
											style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;">
											<div
												style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"></div>
											<div
												style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"></div>
											<div
												style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div>
										</div>
									</div>
									<div
										style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div>
								</div>
							</div>
							<div
								style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;">
								<div
									style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right; height: 22px;">
									<a
										href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html"
										target="_blank"
										style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img
										src="https://ssl.pstatic.net/static/maps/mantle/2x/naver-normal-new.png"
										width="48" height="17" alt="NAVER"
										style="display: block; width: 48px; height: 17px; overflow: hidden; border: 0 none; margin: 0; padding: 0; max-width: none !important; max-height: none !important; min-width: 0 !important; min-height: 0 !important;"></a>
								</div>
							</div>
						</div>

						<div class="inner">
							<!-- 주변 인기 식당 -->
							<section class="module near-rastaurant NearByRestaurantList">
								<span class="title NearByRestaurantList__Title">주변 인기 식당</span>

								<ul
									class="list-restaurants type-single NearByRestaurantList__List">



									<li class="NearByRestaurantItem NearByRestaurantList__Item">
										<div class="NearByRestaurantItem__PictureAndContent">

											<a class="NearByRestaurantItem__PictureLink"
												href="/restaurants/s7YK66H3myEH"> <img
												class="NearByRestaurantItem__Picture loaded"
												data-src="https://mp-seoul-image-production-s3.mangoplate.com/382175/172778_1656668677959_143456?fit=around|383:383&amp;crop=383:383;*,*&amp;output-format=jpg&amp;output-quality=80"
												alt="near by popular restaurant picture"
												src="https://mp-seoul-image-production-s3.mangoplate.com/382175/172778_1656668677959_143456?fit=around|383:383&amp;crop=383:383;*,*&amp;output-format=jpg&amp;output-quality=80"
												data-was-processed="true">
											</a>

											<div class="NearByRestaurantItem__Content">
												<div class="NearByRestaurantItem__NameWrap">
													<a class="NearByRestaurantItem__Name"
														href="/restaurants/s7YK66H3myEH">웰컴투더헬</a> <span
														class="NearByRestaurantItem__Rating NearByRestaurantItem__Rating--Expected">3.9</span>
												</div>

												<div class="NearByRestaurantItem__MetroAndCuisine">
													<span class="NearByRestaurantItem__Metro">마포/공덕</span> <span
														class="NearByRestaurantItem__SubCuisine">칵테일 / 와인</span>
												</div>

												<div class="NearByRestaurantItem__InfoWrap">
													<dl class="NearByRestaurantItem__Info">
														<dt class="NearByRestaurantItem__InfoLabel">음식 종류</dt>
														<dd
															class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--SubCuisine">칵테일
															/ 와인</dd>
													</dl>

													<dl class="NearByRestaurantItem__Info">
														<dt class="NearByRestaurantItem__InfoLabel">위치</dt>
														<dd
															class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--Metro">마포/공덕</dd>
													</dl>

													<dl class="NearByRestaurantItem__Info">
														<dt class="NearByRestaurantItem__InfoLabel">가격대</dt>
														<dd
															class="NearByRestaurantItem__InfoValue NearByRestaurantItem__InfoValue--PriceRange">2만원-3만원</dd>
													</dl>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</section>


							<div class="ad_area tag only-mobile"
								id="web_mobile-restaurant-tag">
								<div class="ad_wrap">
									<div class="content" id="web_mobile-restaurant-tag-content"></div>
								</div>
							</div>

						</div>

						<div class="ad_area right_map only-desktop"
							id="web_desktop-restaurant-right_map">
							<div class="ad_wrap" style="">
								<div class="content"
									id="web_desktop-restaurant-right_map-content">
									<div
										id="google_ads_iframe_/395211568/production/desktop-web.restaurant.right-side_0__container__"
										style="border: 0pt none; width: 336px; height: 0px;"></div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</article>
	</main>
</body>
<!-- footer Include -->
<iframe src="footer.do" width="100%" height="750px" scrolling="no"
	frameborder=0></iframe>
</html>