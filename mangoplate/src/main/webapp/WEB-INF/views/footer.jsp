<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
</head>
<body>
	<footer class="footer">
		<div class="inner">
			<div class="mp_logo">
				<a href="index.do" class="btn-mp" target="_parent"> 
					<img class="mp_logo_img"
					src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-gray-logo.svg"
					alt="mangoplate logo">
				</a>
				<p class="subtitle">Eat, Share, Be Happy.</p>
			</div>

			<button class="btn-mp-app" data-event_term="V1"
				data-event_name="CLICK_DOWNLOAD_BOTTOM_DEFAULT"
				onclick="trackEvent('CLICK_DOWNLOAD_BOTTOM_DEFAULT'); go_to_app_or_market(this);">
				망고플레이트 앱에서 열기</button>

			<p class="sns-shortcut">
				<a class="btn facebook" href="https://www.facebook.com/mangoplate"
					target="_blank" onclick="trackEvent('CLICK_SHARE_FACEBOOK');">
					망고플레이트 페이스북 계정으로 바로가기 </a> <a class="btn instagram"
					href="https://instagram.com/mangoplate/" target="_blank"
					onclick="trackEvent('CLICK_SHARE_INSTA');"> 망고플레이트 인스타그램 계정으로
					바로가기 </a>
			</p>

			<nav class="links-external">
				<ul class="list-links">
					<li><a href="company.do" target="_parent"> 회사소개 </a></li>

					<li><a href="/" target="_parent"> 망고플레이트 채용 </a></li>

					<li><a href="/" target="_parent"> 투자 정보 </a></li>

					<li class="only-desktop"><a href="/"
						target="_parent"> 브랜드 가이드라인 </a></li>

					<li><a
						href="https://www.mangoforbiz.com/?utm_campaign=main_bottom_business&amp;utm_medium=bizhome&amp;utm_source=web"
						target="_blank"> 망고플레이트 비즈니스 </a></li>

					<li><a
						href="https://www.mangoforbiz.com/?utm_campaign=20180116v1&amp;utm_medium=main_bottom_adinquiry&amp;utm_source=mp_web"
						target="_blank"> 광고 문의 </a></li>

				</ul>

				<ul class="list-links">
					<li><a href="/mangoplate/notice_list.do" target="_parent"> 공지사항 </a></li>

					<li><a class="" href="/terms/contract"
						onclick="trackEvent('CLICK_TERMS', 'contract')" target="_blank">
							이용약관 </a></li>
					<li><a class="" href="/terms/contract_non_signup"
						onclick="trackEvent('CLICK_TERMS', 'contract_non_signup')"
						target="_blank"> 비회원 이용자 이용정책 </a></li>
					<li><a class="bold" href="/terms/privacy"
						onclick="trackEvent('CLICK_TERMS', 'privacy')" target="_blank">
							개인정보처리방침 </a></li>
					<li><a class="" href="/terms/location"
						onclick="trackEvent('CLICK_TERMS', 'location')" target="_blank">
							위치기반서비스 이용약관 </a></li>
					<li><a class="" href="/terms/community_guidelines"
						onclick="trackEvent('CLICK_TERMS', 'community_guidelines')"
						target="_blank"> 커뮤니티 가이드라인 </a></li>
					<li><a class="" href="/terms/youth_protection"
						onclick="trackEvent('CLICK_TERMS', 'youth_protection')"
						target="_blank"> 청소년보호정책 </a></li>

					<li><a href="https://brunch.co.kr/@mangoplate/14"
						target="_blank"> 홀릭 소개 </a></li>

					<li><a href="/company#contact"> 문의하기 </a></li>
				</ul>
			</nav>

			<div class="sitemap-location-keywords">
				<div class="keyword_wrap">
					<span class="keyword">인기지역 : </span> <a class="keyword"
						target="_blank" href="/search/이태원"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:0,&quot;keyword&quot;:&quot;이태원&quot;})">
						이태원 </a> | <a class="keyword" target="_blank" href="/search/홍대"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:1,&quot;keyword&quot;:&quot;홍대&quot;})">
						홍대 </a> | <a class="keyword" target="_blank" href="/search/강남역"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:2,&quot;keyword&quot;:&quot;강남역&quot;})">
						강남역 </a> | <a class="keyword" target="_blank" href="/search/가로수길"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:3,&quot;keyword&quot;:&quot;가로수길&quot;})">
						가로수길 </a> | <a class="keyword" target="_blank" href="/search/신촌"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:4,&quot;keyword&quot;:&quot;신촌&quot;})">
						신촌 </a> | <a class="keyword" target="_blank" href="/search/명동"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:5,&quot;keyword&quot;:&quot;명동&quot;})">
						명동 </a> | <a class="keyword" target="_blank" href="/search/대학로"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:6,&quot;keyword&quot;:&quot;대학로&quot;})">
						대학로 </a> | <a class="keyword" target="_blank" href="/search/연남동"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:7,&quot;keyword&quot;:&quot;연남동&quot;})">
						연남동 </a> | <a class="keyword" target="_blank" href="/search/부산"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:8,&quot;keyword&quot;:&quot;부산&quot;})">
						부산 </a> | <a class="keyword" target="_blank" href="/search/합정"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:9,&quot;keyword&quot;:&quot;합정&quot;})">
						합정 </a> | <a class="keyword" target="_blank" href="/search/대구"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:10,&quot;keyword&quot;:&quot;대구&quot;})">
						대구 </a> | <a class="keyword" target="_blank" href="/search/여의도"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:11,&quot;keyword&quot;:&quot;여의도&quot;})">
						여의도 </a> | <a class="keyword" target="_blank" href="/search/건대"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:12,&quot;keyword&quot;:&quot;건대&quot;})">
						건대 </a> | <a class="keyword" target="_blank" href="/search/광화문"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:13,&quot;keyword&quot;:&quot;광화문&quot;})">
						광화문 </a> | <a class="keyword" target="_blank" href="/search/일산"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:14,&quot;keyword&quot;:&quot;일산&quot;})">
						일산 </a> | <a class="keyword" target="_blank" href="/search/제주"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:15,&quot;keyword&quot;:&quot;제주&quot;})">
						제주 </a> | <a class="keyword" target="_blank" href="/search/경리단길"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:16,&quot;keyword&quot;:&quot;경리단길&quot;})">
						경리단길 </a> | <a class="keyword" target="_blank" href="/search/한남동"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:17,&quot;keyword&quot;:&quot;한남동&quot;})">
						한남동 </a> | <a class="keyword" target="_blank" href="/search/삼청동"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:18,&quot;keyword&quot;:&quot;삼청동&quot;})">
						삼청동 </a> | <a class="keyword" target="_blank" href="/search/대전"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:19,&quot;keyword&quot;:&quot;대전&quot;})">
						대전 </a> | <a class="keyword" target="_blank" href="/search/종로"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:20,&quot;keyword&quot;:&quot;종로&quot;})">
						종로 </a> | <a class="keyword" target="_blank" href="/search/서촌"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:21,&quot;keyword&quot;:&quot;서촌&quot;})">
						서촌 </a> | <a class="keyword" target="_blank" href="/search/잠실"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:22,&quot;keyword&quot;:&quot;잠실&quot;})">
						잠실 </a> | <a class="keyword" target="_blank" href="/search/사당역"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:23,&quot;keyword&quot;:&quot;사당역&quot;})">
						사당역 </a> | <a class="keyword" target="_blank" href="/search/인천"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:24,&quot;keyword&quot;:&quot;인천&quot;})">
						인천 </a> | <a class="keyword" target="_blank" href="/search/코엑스"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:25,&quot;keyword&quot;:&quot;코엑스&quot;})">
						코엑스 </a> | <a class="keyword" target="_blank" href="/search/상수"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:26,&quot;keyword&quot;:&quot;상수&quot;})">
						상수 </a> | <a class="keyword" target="_blank" href="/search/서래마을"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:27,&quot;keyword&quot;:&quot;서래마을&quot;})">
						서래마을 </a> | <a class="keyword" target="_blank" href="/search/송도"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:28,&quot;keyword&quot;:&quot;송도&quot;})">
						송도 </a> | <a class="keyword" target="_blank" href="/search/왕십리"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:29,&quot;keyword&quot;:&quot;왕십리&quot;})">
						왕십리 </a> | <a class="keyword" target="_blank" href="/search/분당"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:30,&quot;keyword&quot;:&quot;분당&quot;})">
						분당 </a> | <a class="keyword" target="_blank" href="/search/혜화"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:31,&quot;keyword&quot;:&quot;혜화&quot;})">
						혜화 </a> | <a class="keyword" target="_blank" href="/search/고속터미널"
						onclick="trackEvent('CLICK_FOOTER_POPULAR_LOCATION', {&quot;position&quot;:32,&quot;keyword&quot;:&quot;고속터미널&quot;})">
						고속터미널 </a>
				</div>
			</div>

			<div class="language-copyrights">
				<p class="select-language">
					<a href="/" class="selected"> 한국어 </a> <a href="/en"> English </a>

					<a href="/zh"> 简体中文 </a>
				</p>

				<small>
					<p>

						㈜ 여기어때컴퍼니<br>서울특별시 강남구 봉은사로 479, 479타워 11층<br>대표이사: 정명훈<br>사업자
						등록번호: 742-86-00224 <a
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7428600224"
							target="_blank">[사업자정보확인]</a><br>통신판매업 신고번호: 2017-서울강남-01779<br>고객센터:
						02-565-5988<br>
						<br> <span class="copyrights">© 2022 MangoPlate Co.,
							Ltd. All rights reserved.</span>
					</p>
				</small>
			</div>
		</div>
	</footer>

</body>
</html>