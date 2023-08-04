<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en"><head>
    <title>mjcompany</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/css/addrBook.css">

</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h5 class="mt-1" style="font-family: 'Pretendard-Regular', sans-serif;">주소록 선택</h5>
            </div>
        </div>

        <a href="javascript:fn_choose();" class="button" style="position: relative; left: 93%; margin: 0;">선택</a>

        <div class="row">
            <div class="col-md-12">
                <div class="table-wrap">
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th style="padding-left: 10px;">&nbsp;</th>
                            <th style="padding-left: 10px;">이름</th>
                            <th style="padding-left: 10px;">부서</th>
                            <th style="padding-left: 10px; width: 350px;">이메일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="r">
                        <tr class="alert" role="alert">
                            <td style="padding: 20px;"><input type="checkbox" name="checkAt" value="${r.mbrEmail}"></td>
                            <td style="vertical-align: middle;"><c:out value="${r.mbrNm}"/></td>
                            <td style="vertical-align: middle;"><c:out value="${r.deptNm}"/></td>
                            <td style="vertical-align: middle;"><c:out value="${r.mbrEmail}"/></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

</body></html>
<style>

    a.button {
        display: block;
        width: 65px;
        padding: 0;
        margin: 10px 10px 10px 10px;
        text-align: center;
        line-height: 35px;
        color: white;
        background: #6f8294;
        /*box-shadow: #343a40 0 0px 0px 2px inset;*/
    }

    a.button:hover {
        color: white;
        box-shadow: #555 0 0px 0px 40px inset;
    }

</style>

<script src="/js/main.js"></script>
<script src="/js/common.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    function fn_choose() {

        var len = $('input:checkbox[name=checkAt]:checked').length;

        // 최대 3개 선택
        if(len > 3) {
            alert("최대 3개까지 선택 가능합니다.");
            return;
        }

        var emails = [];
        $('input:checkbox[name=checkAt]:checked').each(function(){ // (index, value) 이런식으로 하면 왜 안가져와지지
            var email = $(this).val();
            emails.push(email);
            console.log("fn_choose : "+email);
        });

        // 함수 만들기 : new Function('키' , '함수명(파라미터명)')(값)
        new Function("emails", "return opener.fn_goMailPage(emails)")(emails);
        window.close();

        //openUrl("/mjcompany.co.kr/mail.do", emails);
        //fn_goMailPage(emails);
    }


</script>

