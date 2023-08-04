<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="/css/memberLogin.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="font-family: 'Pretendard-Regular';">
<%--<img class="wave" src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/wave.png">--%>
<div class="container">
    <%--<div class="img">
        &lt;%&ndash;<img src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/bg.svg">&ndash;%&gt;
    </div>--%>
    <div class="login-content">
        <form:form commandName="MemberDto" method="post">
                <%--<img src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/avatar.svg">--%>
            <img src="/img/userIcon.png">
            <h1 class="title" style="margin-top: 10px; margin-bottom: 20px;">Welcome</h1>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div class="div">
                    <h4>Username</h4>
                    <input type="text" class="input" id="mbrId" name="mbrId">
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <h4>Password</h4>
                    <input type="password" class="input" id="mbrPw" name="mbrPw">
                </div>
            </div>
            <%--<a href="#">Forgot Password?</a>--%>
            <%--<input type="submit" class="btn" value="Login">--%>
                <button type="button" onclick="fn_login();" class="btn">
                    LOGIN
                </button>
        </form:form>
    </div>
</div>

</body>
</html>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    // CSS
    const inputs = document.querySelectorAll(".input");

    function addcl(){
        let parent = this.parentNode.parentNode;
        parent.classList.add("focus");
    }

    function remcl(){
        let parent = this.parentNode.parentNode;
        if(this.value == ""){
            parent.classList.remove("focus");
        }
    }


    inputs.forEach(input => {
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
    });

    // 로그인
    function fn_login() {

        var mbrId = $("#mbrId").val();
        var mbrPw = $("#mbrPw").val();

        console.log(mbrId);
        console.log(mbrPw);

        var flag = true;
        if(mbrId == null || mbrId == "") {
            flag = false;
        }
        if(mbrPw == null || mbrPw == "") {
            flag = false;
        }
        if(flag == false) {
            alert("빈칸을 모두 채워주세요.");
            return;
        }

        //$("#form1").submit();

        var param = {
              mbrId : $("#mbrId").val()
            , mbrPw : $("#mbrPw").val()
        }

        $.ajax({
              type : "post"
            , url : "/mjcompany.co.kr/login.do" // post방식으로 데이터를 보낼 서버인듯(controller) = 호출할 mapping 주소 입력
            , data : JSON.stringify(param)
            , contentType: "application/json"
            //, contentType: "application/json; charset=UTF-8" --> 하면 데이터 전송 안됨. ajax 파일 처리 후 원래 파일에 제대로 결과 값이 넘어오지 않아 발생
            , success : function(result) { // result == controller의 return 값
                if(result ==  "false") {
                    console.log(result);
                    console.log(param);
                    alert("아이디와 바밀번호를 다시 확인 후 시도해주세요.");
                    return false;
                } else {
                    // 로그인 성공 시
                    window.location.href = "/mjcompany.co.kr/home.do"; // mapping된 주소 입력.
                    //window.location.href = "/home";
                }
            }, error : function(jqXHR, status, error) {
                alert("서버오류" + error);
            }
        });
    }

</script>
