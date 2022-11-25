<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고스토리 list</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate_boardstory.css">
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script
	src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>
</head>
<body>
	<!-- Header Include -->
	<!-- <iframe src="http://localhost:9000/mangoplate/header.do" width="100%"
		height="61px" scrolling="no" frameborder=0></iframe> -->
	<jsp:include page="../header.jsp"></jsp:include>


	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<main class="pg-all_picks">
		<article class="contents">
			<section class="module editors-pick">
				<div class="inner">
					<c:if test="${sessionScope.svo.id == 'admin' }">
						<tr>
							<td colspan="4"><a href="boardstory_write.do">
									<button type="button" class="btn_style">글쓰기</button>
							</a></td>
						</tr>
					</c:if>
					<h1 class="title only-desktop">에디터 입맛별 맛집 매거진</h1>
					<ul class="list-editors-pick">
						<c:forEach var="vo" items="${list}">
							<li class="mango-pick-item-content-wrap"><a
								onclick="trackEvent('CLICK_STORY', {&quot;position&quot;:0,&quot;story_id&quot;:2571});"
								href="boardstory_content.do?sid=${vo.sid }">
									<figure class="mango-pick-item">
										<div class="thumb lazy"
											style="display: block; background-image: url(&quot;http://localhost:9000/mangoplate/resources/upload/${vo.ssimage}?fit=around|585:345&amp;crop=585:345;*,*&amp;output-format=jpg&amp;output-quality=80&quot;);">
										</div>
										<figcaption>
											<strong class="title">${vo.stitle }</strong>
											<p class="hash">${vo.sstitle }</p>

											<figure class="editor only-mobile">
												<span class="badge"></span>

												<div class="thumb">
													<img class="center-crop lazy" alt=${vo.editer }>

												</div>

												<figcaption>${vo.editer }</figcaption>
											</figure>
										</figcaption>

										<figure class="editor only-desktop">
											<span class="badge"></span>

											<div class="thumb">
												<img class="center-crop lazy" alt=${vo.editer }
													data-original="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/fmsvfia71h84uy.jpg?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
													data-error="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/jmcmlp180qwkp1jj.png?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80"
													src="https://mp-seoul-image-production-s3.mangoplate.com/mango_pick/fmsvfia71h84uy.jpg?fit=around|89:89&amp;crop=89:89;*,*&amp;output-format=jpg&amp;output-quality=80"
													style="display: block;">
											</div>

											<figcaption>${vo.editer }</figcaption>
										</figure>
									</figure>

									<div class="review-content">
										<figure class="user">
											<figcaption>${vo.editer }</figcaption>
										</figure>
										<p>${vo.scontent }</p>
									</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</section>
		</article>
	</main>
	<!-- footer Include -->
	<iframe src="http://localhost:9000/mangoplate/footer.do" width="100%"
		height="738px" scrolling="no" frameborder=0></iframe>


</body>
</html>







