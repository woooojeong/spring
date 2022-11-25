<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(document).ready(function(){
		//중복확인 버튼 이벤트 처리 --> AJAX 호출
		$("#idCheck").click(function(){
			if($("#id").val() == ""){
				alert("아이디를 입력해주세요");
				$("#id").focus();
				return false;
			}else{
				//중복체크 진행 : AJAX 호출 및 결과 출력
				$.ajax({
					url:"id_check.do?id="+$("#id").val(),
					success:function(result){
						//alert("result===>>" + result);
						if(result == 1){
							$("#idCheckMsg").text("사용중인 아이디입니다. 다시 입력해주세요~")
								.css("color","red").css("font-size","8px")
								/* .css("margin","5px 0 0 156px") */;
							$("#id").val("").focus();							
						}else{
							$("#idCheckMsg").text("사용 가능한 아이디입니다.")
							.css("color","blue").css("font-size","8px")
							/* .css("margin","5px 0 0 156px") */;
							$("#pass").focus();
						}
						
					}//success
					
				});//ajax
			}
		});
	});
</script>

<script>
      function closeModal(){
    	  history.back();
    	 /*  location.href  ="index.do"; */
      }
</script>

<style>
	form[name='joinForm'] div.join_logo {
 		/* border:1px solid blue; */
 		display: block;
	    position: relative;
 		margin-bottom: 40px;
 		text-align: center;
 	}
 	
 	form[name='joinForm'] { 		 
	border:3px solid coral;
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
	
	form[name='joinForm'] span {
	    word-wrap: break-word;
	    -webkit-text-size-adjust: 100%;
	    word-break: keep-all;
	    margin: 0;
	    padding: 0;
	    -webkit-tap-highlight-color: transparent;
	    border: 0 none;
	    /* margin-margin: 30px; */
	    /* margin-bottom: 20px; */
	    /* padding-bottom: 0; */
	    font-size: 12px;
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
	    font-size: 12px;
	    /* line-height: 21px; */
	    letter-spacing: -0.3px;
	    color: coral;
	    text-align: center;
	}
	
	form[name='joinForm'] input[name='id'],
	form[name='joinForm'] input[name='pass'], 
	form[name='joinForm'] input[name='name'],
	form[name='joinForm'] input[name='addr1'],
	form[name='joinForm'] input[name='addr2'] {
		border:2px solid coral;
		display: block;
	    position: relative;
		border-radius:5px;
		width: 256px;
   		height: 20px;
		padding:7px 10px;
		margin-margin: 20px;
	    margin-bottom: 15px;
		font-size:12px;
	}
	
	form[name='joinForm'] input[name='cpass']{
		border:2px solid coral;
		display: block;
	    position: relative;
		border-radius:5px;
		width: 256px;
   		height: 20px;
		padding:7px 10px;
		margin-margin: 20px;
	    /* margin-bottom: 15px; */
		font-size:12px;
	}
	
	form[name='joinForm'] button.btn-nav-close  {
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
	    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
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
		border:2px solid coral;
		display: inline-block;
	    position: relative;
		border-radius:5px;
		width: 65px;
   		height: 36px;
		/* padding:7px 10px; */
		/* margin-margin: 20px; */
	    /* margin-bottom: 15px; */
		font-size:12px;
	} 
	
	form[name='joinForm'] input[name='pnum'] {
		border:2px solid coral;
		display: inline-block;
	    position: relative;
		border-radius:5px;
		width: 185px;
   		height: 20px;
		padding:7px 10px;
		margin-margin: 20px;
	    margin-bottom: 15px;
		font-size:12px;
	}
	
	form[name='joinForm'] input[name='email1'] {
		border:2px solid coral;
		display: inline-block;
	    position: relative;
		border-radius:5px;
		width: 115px;
   		height: 20px;
		padding:7px 10px;
		margin-right: 5px;
	    margin-bottom: 15px;
		font-size:12px;
	}
	
	form[name='joinForm'] select[name='email2'] { 
		border: 2px solid coral;
		display: inline-block;
	    position: relative;
		border-radius:5px;
		width: 120px;
   		height: 36px;
		/* padding:7px 10px; */
		/* margin-margin: 20px; */
	    /* margin-bottom: 15px; */
		font-size:12px;
	} 
	
	
	form[name='joinForm'] #join_textbutton {
		position: relative;
	    margin-bottom: 15px;
	}
	
	form[name='joinForm'] #join_textbutton button {
	  position: absolute;
	  width: 80px;
	  height: 30px;
	  top: 0;
	  bottom: 0;
	  right: 5px;
	  margin: auto 0;
	  padding:2px;
	  border-radius: 4px;
	  text-align: center;
	}
</style>
</head>
<body>
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<form name="joinForm"  action="joinCheck.do"  method="post">
			 <button type="button" class="btn-nav-close"  data-dismiss="modal" onclick="closeModal()">닫기</button>
			 <div class="join_logo">	
			 	<img alt="" src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/mangoplate-logo-horizontal.svg">
			 </div>
			 <p>가입을 통해 더 다양한 서비스를 만나보세요!</p>
			 <div id="join_textbutton">
					<input type="text" name="id" id="id" placeholder="아이디 입력">
					<button type="button" class="btn_style" id="idCheck">중복확인</button>
				<div id="idCheckMsg"></div>
			 </div>
			 <input type="password" name="pass" id="pass" placeholder="패스워드 입력">
			 <input type="password" name="cpass" id="cpass" placeholder="패스워드 재입력">
			 <span id="passCheckMsg">*비밀번호를 다시 입력해주세요</span>
			 <input type="text" name="name" id="name" placeholder="성명">
			 <div>
				<select name="hp" id="hp">
					<option value="default">통신사</option>
					<option value="010">SKT</option>
					<option value="011">LGU+</option>
					<option value="016">KT</option>
				</select>
				<input type="text" name="pnum" id="pnum" placeholder=" 전화번호 입력(000-0000-0000)">
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
				<!-- <button type="button" class="btn_style" id="btnSearchAddr">주소찾기</button> -->
			 </div>
			 <input type="text" name="addr2" id="addr2" placeholder="상세주소 입력">
			
			 <button type="button" class="btn_mypage_style" id="btnJoin">회원가입하기</button>
		</form>
	</div>
	
</body>
</html>







