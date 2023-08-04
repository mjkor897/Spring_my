<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="/css/cmpnyLogin.css">
</head>
<body style="font-family: 'Pretendard-Regular';">
<form:form commandName="CmpnyDto" id="form1" name="form1">
    <div id="container" class="container">
        <!-- FORM SECTION -->
        <div class="row">
            <!-- SIGN UP -->
            <div class="col align-items-center flex-col sign-up">


            </div>
            <!-- END SIGN UP -->
            <!-- SIGN IN -->
            <div class="col align-items-center flex-col sign-in">
                <div class="form-wrapper align-items-center">
                    <div class="form sign-in">
                        <p style="font-size: 1.5em;">
                            <b>
                                Moving to office
                            </b>
                        </p>
                        <div class="input-group">
                            <i class='bx bxs-user'></i>
                            <input type="text" id="cmpnyAddrDomain" name="cmpnyAddrDomain" placeholder="Domain address">
                        </div>
                        <%--<div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="password" id="cmpnyAdminPw" name="cmpnyAdminPw" placeholder="Password">
                        </div>--%>
                        <button type="button" onclick="fn_login();">
                            next
                        </button>
                        <%--<p>
                            <b>
                                Forgot password?
                            </b>
                        </p>--%>
                        <p>
                  <span>
                    Don't have an account?
                  </span>
                            <b onclick="fn_move();" class="pointer">
                                Sign up here
                            </b>
                        </p>
                    </div>
                </div>
                <div class="form-wrapper">

                </div>
            </div>
            <!-- END SIGN IN -->
        </div>
        <!-- END FORM SECTION -->
        <!-- CONTENT SECTION -->
        <div class="row content-row">
            <!-- SIGN IN CONTENT -->
            <div class="col align-items-center flex-col">
                <div class="text sign-in">
                    <h2>
                        Welcome
                    </h2>

                </div>
                <div class="img sign-in">

                </div>
            </div>
            <!-- END SIGN IN CONTENT -->
            <!-- SIGN UP CONTENT -->
            <div class="col align-items-center flex-col">
                <%--<div class="img sign-up">

                </div>
                <div class="text sign-up">
                    <h2>
                        Company Join with us
                    </h2>

                </div>--%>
            </div>
            <!-- END SIGN UP CONTENT -->
        </div>
    <!-- END CONTENT SECTION -->
    </div>
</form:form>
</body>


<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    // CSS
    let container = document.getElementById('container')

    toggle = () => {
        container.classList.toggle('sign-in')
        container.classList.toggle('sign-up')
    }

    setTimeout(() => {
        container.classList.add('sign-in')
    }, 200)

    // 로그인
    function fn_login() {

        var cmpnyAddrDomain = $("#cmpnyAddrDomain").val();
        console.log(cmpnyAddrDomain);

        if(cmpnyAddrDomain == null || cmpnyAddrDomain == "") {
            alert("도메인 주소를 입력해주세요.");
            return;
        }

        //$("#form1").submit();

        var param = {
            cmpnyAddrDomain : $("#cmpnyAddrDomain").val()
        }

        $.ajax({
              type : "post"
            , url : "/login.do" // post방식으로 데이터를 보낼 서버인듯(controller)
            , data : param
            //, contentType: "application/json; charset=UTF-8" --> 하면 데이터 전송 안됨. ajax 파일 처리 후 원래 파일에 제대로 결과 값이 넘어오지 않아 발생
            , success : function(result) { // result == controller의 return 값
                  if(result ==  "false") {
                      alert("도메인 주소를 다시 확인 후 시도해주세요.");
                      return false;
                  } else {
                      // 로그인 성공 시
                      window.location.href = "/" + cmpnyAddrDomain + "/login.do";
                      //window.location.href = "/login/" + cmpnyAddrDomain;
                      //window.location.href = "/home";
                  }
            }, error : function(jqXHR, status, error) {
                alert("서버오류" + error);
            }
        });
    }

    // 회원가입 페이지 이동
    function fn_move() {
        window.location.href = "/sign.do";
    }

</script>