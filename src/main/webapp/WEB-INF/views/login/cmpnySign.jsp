<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Sign up</title>
    <link rel="stylesheet" href="/css/cmpnyLogin.css">
</head>
<body style="font-family: 'Pretendard-Regular';">
<form:form commandName="CmpnyDto" id="form1" name="form1">
    <div id="container" class="container">
        <!-- FORM SECTION -->
        <div class="row">
            <!-- SIGN UP -->
            <div class="col align-items-center flex-col sign-up">
                <div class="form-wrapper align-items-center">
                    <div id="signDiv" class="form sign-up" style="height: 670px">
                    <div class="input-group">
                        <i class='bx bxs-user'></i>
                        <input type="text" id="cmpnyNo" name="cmpnyNo" placeholder="Company Registration Number">
                    </div>
                    <div class="input-group">
                        <i class='bx bxs-user'></i>
                        <input type="text" id="cmpnyNm" name="cmpnyNm" placeholder="Company name">
                    </div>
                    <div class="input-group">
                        <i class='bx bxs-lock-alt'></i>
                        <input type="text" id="cmpnyAdminId" name="cmpnyAdminId" placeholder="Company id">
                    </div>
                    <div class="input-group">
                        <i class='bx bxs-lock-alt'></i>
                        <input type="password" id="cmpnyAdminPw" name="cmpnyAdminPw" placeholder="Company password">
                    </div>
                    <div class="input-group">
                        <i class='bx bxs-lock-alt'></i>
                        <div style="display: flex;">
                            <input type="text" id="cmpnyArea" name="cmpnyArea" placeholder="Company area">
                            <button type="button" onclick="sample6_execDaumPostcode();" style="width: 100px; font-size: 1rem; background-color: #efefef; color: #6f7180; border-radius: 0.5rem; border: 0.125rem solid #ffffff">
                                search
                            </button>
                            <%--<input type="image" src="/img/search.png" onclick="sample5_execDaumPostcode()" alt="" width="auto" height="auto" style="width: 20%">--%>
                            <%--<button><img src="/img/search.png" style="width: 20%"> </button>--%>
                        </div>
                    </div>
                    <div class="input-group">
                        <i class='bx bxs-lock-alt'></i>
                        <input type="text" id="cmpnyPhone" name="cmpnyPhone" placeholder="Company number">
                    </div>
                    <div class="input-group">
                        <i class='bx bx-mail-send'></i>
                        <input type="email" id="cmpnyAddrDomain" name="cmpnyAddrDomain" placeholder="Domain address to be issued">
                    </div>
                    <div class="input-group">
                        <i class='bx bx-mail-send'></i>
                        <input type="email" id="cmpnyAddrEmail" name="cmpnyAddrEmail" placeholder="Email address to issued">
                    </div>
                    <button type="button" onclick="fn_regist();">
                        Sign up
                    </button>
                <p>
                  <span>
                    Already have an account?
                  </span>
                    <b onclick="fn_move();" class="pointer">
                        Sign in here
                    </b>
                </p>
                </div>
            </div>

            </div>
            <!-- END SIGN UP -->
            <!-- SIGN IN -->
            <%--<div class="col align-items-center flex-col sign-in">--%>
                <%--<div class="form-wrapper align-items-center">--%>
                    <%--<div class="form sign-in">--%>
                        <%--<div class="input-group">
                            <i class='bx bxs-user'></i>
                            <input type="text" id="cmpnyAdminId2" name="cmpnyAdminId" placeholder="Username">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="password" id="cmpnyAdminPw2" name="cmpnyAdminPw" placeholder="Password">
                        </div>
                        <button type="button" onclick="fn_login();">
                            Sign in
                        </button>--%>
                        <%--<p>
                            <b>
                                Forgot password?
                            </b>
                        </p>--%>
                        <%--<p>
                  <span>
                    Don't have an account?
                  </span>
                            <b onclick="toggle();" class="pointer">
                                Sign up here
                            </b>
                        </p>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="form-wrapper">

                </div>--%>
            <%--</div>--%>
            <!-- END SIGN IN -->
        </div>
        <!-- END FORM SECTION -->
        <!-- CONTENT SECTION -->
        <div class="row content-row">
            <!-- SIGN IN CONTENT -->
            <div class="col align-items-center flex-col">
                <%--<div class="text sign-in">
                    <h2>
                        Welcome
                    </h2>

                </div>
                <div class="img sign-in">

                </div>--%>
            </div>
            <!-- END SIGN IN CONTENT -->
            <!-- SIGN UP CONTENT -->
            <div class="col align-items-center flex-col">
                <div class="img sign-up">

                </div>
                <div class="text sign-up">
                    <h2 style="font-size: 50px;">
                        Company Join with us
                    </h2>

                </div>
            </div>
            <!-- END SIGN UP CONTENT -->
        </div>
        <!-- END CONTENT SECTION -->
    </div>
</form:form>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

    // CSS
    let container = document.getElementById('container')

    toggle = () => {
        container.classList.toggle('sign-in')
        container.classList.toggle('sign-up')
    }

    setTimeout(() => {
        container.classList.add('sign-up')
    }, 200)

    // 우편번호 찾기
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("cmpnyArea").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                //document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }


    // 회원가입 유효성 검사
    function fn_regist() {
        // 빈칸이 하나라도 있으면 fail
        var flag = true;

        var cmpnyNo = $("#cmpnyNo").val();
        var cmpnyNm = $("#cmpnyNm").val();
        var cmpnyAdminId = $("#cmpnyAdminId").val();
        var cmpnyAdminPw = $("#cmpnyAdminPw").val();
        var cmpnyArea = $("#cmpnyArea").val();
        var cmpnyPhone = $("#cmpnyPhone").val();
        var cmpnyAddrDomain = $("#cmpnyAddrDomain").val();
        var cmpnyAddrEmail = $("#cmpnyAddrEmail").val();

        if(cmpnyNo == null || cmpnyNo == "") {
            flag = false;
        }
        if(cmpnyNm == null || cmpnyNm == "") {
            flag = false;
        }
        if(cmpnyAdminId == null || cmpnyAdminId == "") {
            flag = false;
        }
        if(cmpnyAdminPw == null || cmpnyAdminPw == "") {
            flag = false;
        }
        if(cmpnyArea == null || cmpnyArea == "") {
            flag = false;
        }
        if(cmpnyPhone == null || cmpnyPhone == "") {
            flag = false;
        }
        if(cmpnyAddrDomain == null || cmpnyAddrDomain == "") {
            flag = false;
        }
        if(cmpnyAddrEmail == null || cmpnyAddrEmail == "") {
            flag = false;
        }
        if(flag == false) {
            alert("빈칸을 모두 채워주세요.");
            return;
        }

        // 유효성 통과 후 submit
        //window.location.replace
        //window.location.href = '/login'; // mapping된 url 입력
        alert("회원가입에 성공했습니다!");
        $("#form1").submit();
    }

    // 로그인 페이지 이동
    function fn_move() {
        window.location.href = "/login.do";
    }

</script>

