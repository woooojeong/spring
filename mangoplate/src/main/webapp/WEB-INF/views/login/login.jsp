<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>

<script>
	let join_result = '${join_result}';
	let login_result = '${login_result}';
	
	if(login_result == 'fail'){
		alert("아이디 또는 패스워드가 다릅니다. 다시 로그인해주세요");	
	}
	
	if(join_result == 'ok'){
		alert("회원가입에 성공하셨습니다.");
	}
	
</script>

<script>
      function closeModal(){
    	  history.back();
    	 /*  location.href  ="index.do"; */
      }
</script>

<style>
	.content.CloseModal{
         display:none;
    }

	form[name='loginForm'] div {
 		/* border:1px solid blue; */
 		display: block;
	    position: relative;
 		margin-bottom: 40px;
 		text-align: center;
 	}
 	form[name='loginForm'] { 		 
	border:3px solid coral;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO", "sans-serif";
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
		 font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO", "sans-serif";
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
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO", "sans-serif";
		border:2px solid coral;
		display: block;
	    position: relative;
		border-radius:5px;
		width: 256px;
   		height: 20px;
		padding:7px 10px;
		margin-margin: 20px;
	    margin-bottom: 20px;
		font-size:12px;
	}
	
	form[name='loginForm'] button.btn-nav-close  {
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
	    font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO", "sans-serif";
	    display: block;
	    position: absolute;
	    top: 13px;
	    right: 15px;
	    text-indent: -9999px;
	    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
	    background-position: -935px -693px;
	    width: 30px;
	    height: 30px;
	}
	
	form[name='loginForm'] button.btn_mypage_style {
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO", "sans-serif";
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
</style>
</head>
<body>
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<form name="loginForm" action="loginCheck.do" method="post">
			 <button type="button" class="btn-nav-close"  data-dismiss="modal" onclick="closeModal()">닫기</button>
			 <div>	
			 	<img alt="" src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-logo-horizontal.svg">
			 </div>
			 <input type="text" name="id" id="id" placeholder="아이디를 입력해주세요">
			 <input type="password" name="pass" id="pass" placeholder="패스워드를 입력해주세요">
			 <button type="button" id="btnLogin" class="btn_mypage_style">로그인</button>
			 <p class="message">----------------- 또는 -----------------</p>	
			 <a href="join.do">
			 	<button type="button" class="btn_mypage_style">회원가입하기</button>
			 </a>
		</form>
	</div>
	
</body>
</html>







