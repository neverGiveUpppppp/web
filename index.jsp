
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jquery-3.6.0.min.js"></script>

<title>Insert title here</title>


<style>.test{width:300px; min-height:50px; border:1px solid red;}</style>

</head>
<body>

	<h1>jQuery-Ajax구현</h1>
	
	<h3>1.client가 server에 requset</h3>
	이름 : <input type="text" id="myName">
	<button id="nameBtn">전송</button>
	<script>
/* 		$('#nameBtn').on('click',function(){
			var userName = $('#myName').val();
	        
			$.ajax({
	        	url: 'jQueryAjax1',
	        	type: 'get',
	            data: {userName:userName},
	            success: function(){
	            	alert('전송 성공');
	            },
	            error: function(){
	            	console.log(data);
	            },
	            complete: function(){
	            	alert("성공실패 상관없이 무조건 실행되는 complete");
	            }
			});
		}); */
           
		$('#nameBtn').on('click',function(){
			var name = $('#myName').val();
		
			$.ajax({
				url: 'jQuery1.do',		 // jQuery1.do주소의 서블릿 호출하는 것. 서블릿 생성하러 ㄱㄱ
				data: {sendName:name},	  // data속성 : 서버로 전송할 요청 Parameter 설정 // sendName이 키값 name이 밸류값
				// 변수 name 안에 사용자가 인풋태그에 입력한 값이 담겨있음. 
				// name변수를 센드네임 변수에 집어 넣은 것. 
				
				success: function(){	// ajax 통신 성공 시 호출되는 함수를 지정
					alert('통신 성공'); 	// success : 통신 잘 성공했어 확인할 수 있게 해주는 속성	
				},
				error: function(){
					alert('통신 실패');		// error : 통신 실패 일 경우
				},
				complete: function(){	// complete : ajax통신 성공여부와 관계없이 통신 완료 후 실행되는 함수 지정
					alert('성공실패 무관하게 작동하는 complete');	// 석세스로 통신성공 뜬 후 complete로 다시 실행됨
				}
			});	
		});	
	</script>

	
	
	<br>
	

	<h3>2.버튼 선택 시, 서버에서 보낸 값 사용자가 수신</h3>		<!-- 서버가 클라이언트에 response -->
	<button id="getServerTextBtn">서버에서 보낸 값 확인</button>
	<p class="test" id="p1"></p>
	<script>
/* 같은코드 $('#getServerTextBtn').on('click',function(){ */
	</script>
	
	<br>
	
	<h3>3. 서버로 기본형 전송 값이 있고, 결과로 문자열을 받아 처리</h3>
	<h4>두 개의 값을 더한 결과를 받아옴</h4>
	첫번째 숫자 : <input type="text" id="firstNum"><br>
	두번째 숫자 : <input type="text" id="secondNum"><br>
	<button id="plusBtn">더하기</button>
	<p class="test" id="p2"></p>
	<script>
		// 더하기 버튼을 누르면 첫번째 숫자의 값과 두번째 숫자의 값을 ajax를 통해 jQuery3.do쪽으로 전송하는 코드 작성
		// 아작 ajax 시작한게 아님. 틀을 잡아보라는 것
		
	</script>


	<br>
	
	
	<h3>4. Object형태의 데이터를 서버에 전송, 서버에서 데이터 처리 후 서버 console로 출력</h3>
	<!-- 여기서 말하는 콘솔은 이클립스 콘솔을 의미함 -->
	학생1 : <input type="text" id="student1"><br>
	학생2 : <input type="text" id="student2"><br>
	학생3 : <input type="text" id="student3"><br>
	<button id="studentTest">결과확인</button>
	<script>
		// 결과확인 버든을 누르면 학생1, 학생2, 학생3의 이름이 jQuery4.do 쪽으로 전송
		// 전송된 학생들의 이름은 서버의 console창에 아래 예시와 같이 출력되고
		// 화면에서는 "전송 성공"이라는 알람창이 뜸
		// console 출력 예시 : 수업을 들을 하생은 ooo,xxx,ㅁㅁㅁ입니다
	
	</script>





	
	
</body>
</html>





