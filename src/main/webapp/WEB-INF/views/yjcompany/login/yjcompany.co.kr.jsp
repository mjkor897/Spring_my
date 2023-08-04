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
<body>
<%--<img class="wave" src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/wave.png">--%>
<div class="container">
    <%--<div class="img">
        &lt;%&ndash;<img src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/bg.svg">&ndash;%&gt;
    </div>--%>
    <div class="login-content">
        <form>
            <%--<img src="https://raw.githubusercontent.com/sefyudem/Responsive-Login-Form/master/img/avatar.svg">--%>
            <img src="/img/userIcon.png">
            <h1 class="title" style="margin-top: 10px; margin-bottom: 20px;">Welcome</h1>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div class="div">
                    <h4>Username</h4>
                    <input type="text" class="input">
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <h4>Password</h4>
                    <input type="password" class="input">
                </div>
            </div>
            <%--<a href="#">Forgot Password?</a>--%>
            <input type="submit" class="btn" value="Login">
        </form>
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

    //Source :- https://github.com/sefyudem/Responsive-Login-Form/blob/master/img/avatar.svg

</script>

