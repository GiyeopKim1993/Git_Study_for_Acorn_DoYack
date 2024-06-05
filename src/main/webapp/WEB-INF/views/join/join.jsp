<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path"  value="<%=request.getContextPath()%>" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/join.css"/>
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
<div class="join-wrapper">
<h2 class="join__class">회원가입</h2>

	<form class="join__form" action="${path}/userRegister" method="post">
		<label for="join-name" class="join__label">
		<span class="join__text">이름</span>
		<input id="join-name" type="text" class="join__input" name="name" placeholder="이름을 입력해 주세요."/>
		</label>
		
		<label for="join-number" class="join__label">
		<span class="join__text">연락처</span>
		<input id="login-number" type="number" class="join__input" name="contact_number" placeholder="연락처('-'제외)를 입력해 주세요."/>
		</label>
		
		<label for="join-id" class="join__label">
		<span class="join__text">아이디(이메일)</span>
		<input id="login-id" type="text" class="join__input" name="id" placeholder="아이디(이메일)을 입력해 주세요." onblur="emailCheck()"  />
		<p id="check-result"></p>
		</label>
		
		<label for="join-password" class="join__label">
		<span class="join__text">비밀번호</span>
		<input id="login-password" type="password" class="join__input" name="password" placeholder="비밀번호를 입력해 주세요."/>
		</label>
		
		<label for="join-password-confirm" class="join__label">
		<span class="join__text">비밀번호 확인</span>
		<input id="login-password-confirm" type="password" class="join__input" placeholder="비밀번호를 다시 입력해 주세요."/>
		<p id="password-match-result"></p>
		</label>
		
		<div class="gender-selection">
        <span class="join__text">성별 (선택)</span>
        </div>
        <div class="gender-options">
            <label>
                <input type="radio" name="gender" value="male" checked>
                남성
            </label>
            <label>
                <input type="radio" name="gender" value="female">
                여성
            </label>
        </div>
        
        <label for="join-birth" class="join__label">
		<span class="join__text">출생연도</span>
		<input id="login-birth" type="number" class="join__input" name="birth_year" placeholder="출생연도를 숫자(ex:1994)로 입력하세요."/>
		</label>
       
        <div class="checkbox_header">
        <label for="agree_all">
            <input type="checkbox" id="allAgree">
            <span>모두 동의하기</span>
        </label>
        </div>

        <div class="checkbox-container">
            <input type="checkbox" id="ageAgree">
            <label for="ageAgree">만 14세 이상입니다.</label>
        </div>
        <div class="checkbox-container">
            <input type="checkbox" id="termsAgree">
            <label for="termsAgree">이용 약관 동의</label>
            <a href="https://pilly.kr/terms/service">전문보기</a>
        </div>
        <div class="checkbox-container">
            <input type="checkbox" id="privacyAgree">
            <label for="privacyAgree">개인정보처리방침 동의</label>
            <a href="https://pilly.kr/terms/privacy">전문보기</a>
        </div>
        <div class="checkbox-container">
            <input type="checkbox" id="marketingAgree">
            <label for="marketingAgree">마케팅 수신 동의 (선택)</label>
            <a href="https://pilly.kr/terms/marketing">전문보기</a>
        </div>
        <button class="register_btn" id="registerBtn" type="submit">회원가입</button>
	</form>
</div>

<script>
	// 회원가입 버튼 클릭 시
	document.getElementById('registerBtn').addEventListener('click', function(event) {
    // 아이디 중복 확인 함수 호출
    emailCheck();

});
	 // 아이디 중복 확인 함수
    function emailCheck() {
        var email = document.getElementById("login-id").value;
        var checkResult = document.getElementById("check-result");
        
        // AJAX 요청을 통해 서버에 중복 확인 요청
        $.ajax({
            url: '${path}/emailcheck',
            type: 'POST',
            data: { email: email },
            success: function(response) {
                if (response === 'duplicate') {
                    checkResult.textContent = '이미 사용 중인 이메일입니다.';
                    checkResult.style.color = 'red';
                } else {
                    checkResult.textContent = '사용 가능한 이메일입니다.';
                    checkResult.style.color = 'green';
                   
                }
            }
        });
    }

    // 비밀번호 일치 확인
    document.getElementById('login-password-confirm').addEventListener('input', function() {
        const password = document.getElementById('login-password').value;
        const confirmPassword = document.getElementById('login-password-confirm').value;
        const matchResult = document.getElementById('password-match-result');

        if (password !== confirmPassword) {
            matchResult.textContent = '비밀번호가 일치하지 않습니다.';
            matchResult.style.color = 'red';
        } else {
            matchResult.textContent = '비밀번호가 일치합니다.';
            matchResult.style.color = 'green';
        }
    });

    // 모두 동의하기 체크박스
    document.getElementById('allAgree').addEventListener('change', function(e) {
        const checkboxes = document.querySelectorAll('.checkbox-container input[type="checkbox"]');
        checkboxes.forEach(checkbox => {
            checkbox.checked = e.target.checked;
        });
    });

    document.getElementById('registerBtn').addEventListener('click', function(event) {
        const name = document.getElementById('join-name').value;
        const contact_number = document.getElementById('login-number').value;
        const id = document.getElementById('login-id').value;
        const password = document.getElementById('login-password').value;
        const confirmPassword = document.getElementById('login-password-confirm').value;
        const ageAgree = document.getElementById('ageAgree').checked;
        const termsAgree = document.getElementById('termsAgree').checked;
        const privacyAgree = document.getElementById('privacyAgree').checked;

        // 모든 필수 항목이 입력되었는지 확인
        if (!name || !contact_number || !id || !password || !confirmPassword) {
            alert('모든 정보를 입력해주세요.');
            event.preventDefault(); // 회원가입이 완료되지 않도록 기본 이벤트를 중지합니다.
        } else if (!ageAgree || !termsAgree || !privacyAgree) {
            alert('필수 항목에 모두 동의해 주세요.');
            event.preventDefault(); // 회원가입이 완료되지 않도록 기본 이벤트를 중지합니다.
        } else {
            alert('회원가입이 완료되었습니다.');
            // 모든 필수 항목이 입력되었고, 필수 항목에 모두 동의한 경우 로그인 페이지로 이동합니다.
            window.location.href = '${path}/loginform'; // 로그인 페이지의 URL로 변경해주세요
        }
    });
</script>

</body>
</html>
