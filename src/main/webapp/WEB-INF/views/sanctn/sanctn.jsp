<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>mjcompany</title> <!--나중에 타이틀 회사명으로 통일?-->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>project_my</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/img/favicon.png" rel="icon">
    <link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/vendor/aos/aos.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/css/home.css" rel="stylesheet">
    <link href="/css/sanctn.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: iPortfolio
    * Updated: Mar 10 2023 with Bootstrap v5.2.3
    * Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>
<body data-aos-easing="ease-in-out" data-aos-duration="1000" data-aos-delay="0" class="">

    <!-- ======= Mobile nav toggle button ======= -->
    <i class="bi mobile-nav-toggle d-xl-none bi-list"></i>

    <!-- ======= Header ======= -->
    <header id="header">
        <div class="d-flex flex-column">

            <div class="profile" style="margin-top: 25px;">
                <img src="/img/mjcompany3.png" alt="" style="height: 60px; width: 210px;">
                <%--<h1 class="text-light"><a href="index.html">Alex Smith</a></h1>--%>
                <div class="social-links mt-3 text-center">
                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                </div>
            </div>

            <nav id="navbar" class="nav-menu navbar">
                <ul>
                    <li><a href="/${login.cmpnyAddrDomain}/home.do"><i class="bx bx-home"></i> <span>Home</span></a></li>
                    <li><a href="/${login.cmpnyAddrDomain}/member.do"><i class="bx bx-user"></i> <span>인사정보</span></a></li>
                    <li><a href="/${login.cmpnyAddrDomain}/stats.do"><i class="bx bx-file-blank"></i> <span>인사통계</span></a></li>
                    <li><a href="/${login.cmpnyAddrDomain}/sanctn.do" class="active"><i class="bx bx-server"></i> <span>전자결재</span></a></li>
                    <li><a href="/${login.cmpnyAddrDomain}/board.do"><i class="bx bx-book-content"></i> <span>게시판</span></a></li>
                    <li><a href="/${login.cmpnyAddrDomain}/mail.do"><i class="bx bx-envelope"></i> <span>Mail</span></a></li>
                </ul>
            </nav><!-- .nav-menu -->
        </div>
    </header><!-- End Header -->

    <section class="bar">
        <nav style="margin: 0; position: absolute; right: 20px;">
            ${memberLogin.mbrNm}님
            &nbsp;&nbsp;&nbsp;<span style="color: rgba(184,184,190,0.94);">|</span>
            <button type="button" class="btn" style="font-size: 13px; " onclick="fn_logout();">Logout</button>
        </nav>
    </section>

<div class="container">
    <form:form commandName="SanctnDto" id="form2" name="form2">
        <input type="hidden" id="sanctnId" name="sanctnId">
        <input type="hidden" id="sanctnUserSttusCdId" name="sanctnUserSttusCdId">
    <div class="container managergrounp" id="container" name="container">
        <h5 style="font-weight: bold; font-family: 'Pretendard-Regular', sans-serif;">결재 대기 문서<%--<span class="txt_small">(이메일 뉴스레터를 발송할 대상 수신자 목록을 선택하세요.)</span>--%> </h5>
        <hr>

        <div style="background: white; width: 100%; height: 235px; border: solid 1px #ececec;">

            <c:forEach var="r" items="${selectSanctnCcList}">
                <div style="width: 345px; height: 200px; background: white; margin-top: 15px; margin-bottom: 15px; margin-left: 15px; float: left; border: solid 2px #dfdfdf; border-radius: 10px;">
                    <span style="background: #eb7030; color: white; font-size: 12px; padding: 2px 9px 2px 9px; display: inline-block; border-radius: 3px; margin: 5 5 5 5;">
                            ${r.sanctnCcSttusCdId}
                    </span>
                    <div style="margin: 10 10 10 10; font-size: 18px; display: flex;">
                        <button type="button" class="btn" style="font-size: 18px; padding: 0;" onclick="fn_view('${r.sanctnId}', '${r.sanctnUserSttusCdId}');">${r.sanctnDocNm}</button>
                        <div style="width: 100px;"><img style="max-height: 80%; max-width: 30%; flex: 0;" src="/img/doc.png"></div>
                    </div>
                    <span style="display: flex; font-size: 13px; margin: 20 10 10 10; color: #6f7180; height: 15px;">
                        기안자 &nbsp; &nbsp; &nbsp;
                        <p style="flex: auto; color: black;">${r.sanctnDraftNm}</p>
                    </span>
                    <span style="display: flex; font-size: 13px; margin: 10 10 10 10; color: #6f7180;">
                        기안일 &nbsp; &nbsp; &nbsp;
                        <p style="flex: auto; color: black;">${r.rgsDt}</p>
                    </span>
                </div>
            </c:forEach>

            <c:forEach var="r" items="${selectSanctnList}">
                <div style="width: 345px; height: 200px; background: white; margin-top: 15px; margin-bottom: 15px; margin-left: 15px; float: left; border: solid 2px #dfdfdf; border-radius: 10px;">
                <c:choose>
                        <c:when test="${r.sanctnUserSttusCdId eq '승인'}">
                            <span style="background: #53B04DF4; color: white; font-size: 12px; padding: 2px 9px 2px 9px; display: inline-block; border-radius: 3px; margin: 5 5 5 5;">
                                    ${r.sanctnUserSttusCdId}
                            </span>
                        </c:when>
                        <c:when test="${r.sanctnUserSttusCdId eq '반려'}">
                            <span style="background: #DB4437; color: white; font-size: 12px; padding: 2px 9px 2px 9px; display: inline-block; border-radius: 3px; margin: 5 5 5 5;">
                                    ${r.sanctnUserSttusCdId}
                            </span>
                        </c:when>
                        <c:otherwise>
                            <span style="background: #5FB4F8ED; color: white; font-size: 12px; padding: 2px 9px 2px 9px; display: inline-block; border-radius: 3px; margin: 5 5 5 5;">
                                    ${r.sanctnUserSttusCdId}
                            </span>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${r.sanctnUserSttusCdId eq '대기'}">
                            <div style="margin: 10 10 10 10; font-size: 18px; display: flex;">
                                    ${r.sanctnDocNm}
                                <div style="width: 100px;"><img style="max-height: 80%; max-width: 30%; flex: 0;" src="/img/doc.png"></div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div style="margin: 10 10 10 10; font-size: 18px; display: flex;">
                                <button type="button" class="btn" style="font-size: 18px; padding: 0;" onclick="fn_view('${r.sanctnId}', '${r.sanctnUserSttusCdId}');">${r.sanctnDocNm}</button>
                                <div style="width: 100px;"><img style="max-height: 80%; max-width: 30%; flex: 0;" src="/img/doc.png"></div>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <span style="display: flex; font-size: 13px; margin: 20 10 10 10; color: #6f7180; height: 15px;">
                        기안자 &nbsp; &nbsp; &nbsp;
                        <p style="flex: auto; color: black;">${r.sanctnDraftNm}</p>
                    </span>
                    <span style="display: flex; font-size: 13px; margin: 10 10 10 10; color: #6f7180;">
                        기안일 &nbsp; &nbsp; &nbsp;
                        <p style="flex: auto; color: black;">${r.rgsDt}</p>
                    </span>
                    <c:if test="${r.sanctnUserSttusCdId eq '대기'}">
                        <a class="btn2" href="javascript:fn_sanctn('${r.sanctnId}', '${r.sanctnUserSttusCdId}');" style="width: 90px; height: 30px; padding-top: 3px; margin-left: 37%;">결재하기</a>
                    </c:if>
                </div>
                <%--<div style="text-align: center; color: #6f7180; font-size: 14px; margin-top: 100px;">
                    해당 데이터가 없습니다.
                </div>--%>
            </c:forEach>
        </div>
        </form:form>

        <form:form commandName="SanctnDto" id="form1" name="form1">
            <input type="hidden" id="psanctnId" name="psanctnId">
            <h5 style="margin-top: 20px; margin-bottom: -20px; font-weight: bold; font-family: 'Pretendard-Regular', sans-serif;">결재 등록 문서
                <a class="btn2" href="/${login.cmpnyAddrDomain}/sanctnRegist.do" style="width: 90px; height: 30px; padding-top: 3px; margin-top: 15px; margin-left: 82%; margin-bottom: 15px;">
                    작성하기 <span class="btn_txt_small">▶</span>
                </a>
            </h5>
            <hr>
            <table id="tb-list" class="bbsList" summary="이메일 수신자 그룹관리 (이메일 뉴스레터를 발송할 대상 수신자 목록을 선택하세요.)" style="background: white;">
                <colgroup>
                    <col style="width: 10%">
                    <col style="width: 20%">
                    <col style="width: 30%">
                    <col style="width: 10%">
                    <col style="width: 10%">
                </colgroup>
                <thead class="head" style="border: solid 1px #ececec;">
                <tr style="font-size: 13px;">
                    <th>기안일</th>
                    <th>결재종류</th>
                    <th>제목</th>
                    <th>기안자</th>
                    <th>상태</th>
                </tr>
                </thead>
                <tbody class="body" style="border: solid 1px #ececec;">
                    <c:forEach items="${list}" var="r">
                        <tr onclick="javascript:fn_view('${r.sanctnId}', '${r.sanctnSttusCdId}');" style="font-size: 13px; padding: 3px 3px 3px 3px; cursor: pointer;">
                            <td class="">${r.rgsDt}</td>
                            <td class="">${r.sanctnDocNm}</td>
                            <td class="">${r.sanctnSj}</td>
                            <td class="">${memberLogin.mbrNm}</td>
                            <td class=" txt_org">${r.sanctnSttusCdId}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form:form>

    </div>
</div>

    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="container">
            <div class="copyright">
                © Copyright <strong><span>iPortfolio</span></strong>
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer><!-- End  Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="/vendor/aos/aos.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/vendor/typed.js/typed.min.js"></script>
<script src="/vendor/waypoints/noframework.waypoints.js"></script>
<script src="/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/js/main.js"></script><style type="text/css" data-typed-js-css="true">
    .typed-cursor{
        opacity: 1;
    }
    .typed-cursor.typed-cursor--blink{
        animation: typedjsBlink 0.7s infinite;
        -webkit-animation: typedjsBlink 0.7s infinite;
        animation: typedjsBlink 0.7s infinite;
    }
    @keyframes typedjsBlink{
        50% { opacity: 0.0; }
    }
    @-webkit-keyframes typedjsBlink{
        0% { opacity: 1; }
        50% { opacity: 0.0; }
        100% { opacity: 1; }
    }

    body {
        background: #f8f9fd;
    }

    .bar {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        height: 40px;
        padding: 1rem;
        color: black;
        background: white;
        /*background: #b6b6f02e;*/
        font-size: 13px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border: solid 1px #F1F1F1;
    }

    .container {
        position: absolute;
        left: 155px;
        top: 30px;
    }


</style>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    $(document).ready(function(){

        // 특정 테이블의 row에 마우스 오버시 색상변경
        $( "#tb-list tbody tr" ).on( "mouseover", function() {
            $( this ).css( "background-color", "#f7f7f7" );
            //$( this).children("td").css( "cursor", "pointer" );
        });
        $( "#tb-list tbody tr" ).on( "mouseleave", function() {
            $( this ).css( "background-color", "white" );
        });

    });

    function fn_view(sanctnId, sanctnSttusCdId) {
        $("#psanctnId").val(sanctnId);
        $("#form1").attr("action", "/mjcompany.co.kr/sanctnView.do"); // 요청 보낼 주소
        $("#form1").submit();
    }

    // 로그아웃
    function fn_logout() {
        window.location.href = '/mjcompany.co.kr/logout.do';
    }


    function fn_sanctn(sanctnId, sanctnUserSttusCdId) {
        $("#sanctnId").val(sanctnId);
        $("#sanctnUserSttusCdId").val(sanctnUserSttusCdId);
        $("#form2").attr("action", "/mjcompany.co.kr/sanctnIng.do"); // 요청 보낼 주소
        $("#form2").submit();
    }


</script>
</html>