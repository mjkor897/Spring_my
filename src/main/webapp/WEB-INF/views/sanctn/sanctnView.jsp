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
        <button type="button" class="btn" style="font-size: 13px;" onclick="fn_logout();">Logout</button>
    </nav>
</section>

<form:form commandName="SanctnDto" id="form1" name="form1">
    <input type="hidden" id="sessionMbrNm" name="sessionMbrNm" value="${memberLogin.mbrNm}">
    <input type="hidden" id="sanctnMbrId" name="sanctnMbrId" value="${memberLogin.mbrId}">
    <input type="hidden" id="sanctnUserSttusCdId" name="sanctnUserSttusCdId" value="${SanctnDto.sanctnUserSttusCdId}">
    <input type="hidden" id="sanctnId" name="sanctnId" value="${SanctnDto.sanctnId}">
    <input type="hidden" id="sanctnSttusCdId" name="sanctnSttusCdId" value="진행">

    <div class="container" style="height: 1000px;">
        <div class="container campaign_ad" id="container" name="container">
            <div class="mb-4">
                <h5 style="float: left; margin-bottom: 6px; font-family: 'Pretendard-Regular', sans-serif;">결재 진행상황</h5>
            </div>
            <table class="type07">
                <tbody id="sanctnTbody" style="background: white;">
                <tr>
                    <th scope="cols" rowspan="3" style="vertical-align: middle;">결재</th>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;">${SanctnDto.sanctnDraftRankNm}</td>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;"></td>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;"> </td>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;"> </td>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;"> </td>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;"> </td>
                    <td style="border-right: #ececec solid 1px; background: #f8f8f8;"> </td>
                </tr>
                <tr>
                        <%--<div><img style="max-height: 3%; max-width: 3%;" src="/img/check.png"></div>
                        <div><img style="max-height: 3%; max-width: 3%;" src="/img/noncheck.png"></div>--%>
                    <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px; color: #0c63e4;"><div><img style="max-height: 30%; max-width: 30%;" src="/img/check.png"></div></td>
                    <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px; color: #DB4437;"></td>
                    <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px;"></td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                </tr>
                <tr>
                    <td style="border-right: #ececec solid 1px;">${SanctnDto.sanctnDraftNm}</td>
                    <td style="border-right: #ececec solid 1px;"></td>
                    <td style="border-right: #ececec solid 1px;"></td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                    <td style="border-right: #ececec solid 1px;"> </td>
                </tr>
                <tr id="ccTr">
                    <th scope="row">참조</th>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                </tr>
                </tbody>
            </table>
            <div class="main">
                <div class="title">
                    <h5 class="left" style="font-family: 'Pretendard-Regular', sans-serif;">
                        내용<%--<span class="txt_small"> (결재종류와 그에 맞는 내용을 작성해주세요.)</span>--%>
                    </h5>
                </div>

                <div class="bbsinsert">
                    <table>
                        <thead style="background: white; border: #ececec solid 1px;">
                        <tr>
                            <th width="130px" class="title" style="color: black;"> <span class="ico">○</span> 결재종류 </th>
                            <th class="cont">
                                <span style="font-size: 14px; color: black;">
                                        ${SanctnDto.sanctnDocNm}
                                </span>
                            </th>
                        </tr>
                        <tr>
                            <td class="title">
                                <span>기안자</span>
                            </td>
                            <td class="cont fs14">
                                    ${memberLogin.mbrNm}
                                <input type="hidden" id="">
                                <span style="color: #4040406b; font-size: 12px;">(${memberLogin.mbrRankNm})</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">
                                <span>기안부서</span>
                            </td>
                            <td class="cont fs14">
                                    ${memberLogin.deptNm}
                            </td>
                        </tr>
                        <tr>
                            <td class="title">
                                <span>제목</span>
                            </td>
                            <td class="cont" style="width: 1050px; font-size: 14px; ">
                                 ${SanctnDto.sanctnSj}
                            </td>
                        </tr>
                        <tr style="height: 330px;">
                            <td class="title">
                                <span>내용</span>
                            </td>
                            <td class="cont" style="font-size: 14px; vertical-align: top;">
                                <span style="margin-top: 20px; display: inline-block;">
                                        ${SanctnDto.sanctnCn}
                                </span>
                            </td>

                        </tr>
                        <tr>
                            <td class="title">
                                <span>참조문서</span>
                            </td>
                            <td class="cont">
                                <div class="filebox" style="font-size: 14px; margin-top: 10px; margin-bottom: 10px;">
                                    <ul>
                                    <c:forEach var="r" items="${fileList}" varStatus="s">
                                        <li>
                                            <a class="downlink" id="${r.unityId}" href="${r.fileOrginlNm}" style="padding: 3 3 3 3; color: #6f7180;">${r.fileOrginlNm}</a>
                                        </li>
                                    </c:forEach>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        </thead>
                    </table>

                    <div class="btn_wrap">
                        <a class="btn_gray" href="/${login.cmpnyAddrDomain}/sanctn.do" style="position: absolute; left: 50%; margin-top: 20px; width: 120px;"><span class="txt_white">목록</span></a>
                        <%--<a class="btn_brown" href="javascript:fn_draft();" style="position: absolute; left: 50%; margin-top: 20px; width: 120px;"><span class="txt_white">기안하기</span></a>--%>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form:form>

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

    /* 결재선 테이블 */
    table.type07 {
        border-collapse: collapse;
        text-align: left;
        line-height: 1.5;
        /*border: 1px solid #ececec;*/
        /*margin: 20px 10px;*/
    }
    table.type07 thead {
        border-right: 1px solid #ececec;
        border-left: 1px solid #ececec;
        background: #f8f8f8;
    }
    table.type07 thead th {
        padding: 10px;
        /*font-weight: bold;*/
        vertical-align: top;
        color: #fff;
        font-size: 13px;
    }
    table.type07 tbody th {
        width: 150px;
        padding: 10px;
        font-weight: normal;
        vertical-align: top;
        border: 1px solid #ececec;
        background: #f8f8f8;
        text-align: center;
        font-size: 15px;
    }
    table.type07 td {
        width: 150px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #ececec;
        border-right: 1px solid #ececec;
        border-top: 1px solid #ececec;
        text-align: center;
        font-size: 14px;
    }

    .fs14 {
        font-size: 14px;
    }

    .filebox .upload-name {
        display: inline-block;
        height: 30px;
        padding: 0 10px;
        vertical-align: middle;
        border: 1px solid #dddddd;
        width: 70%;
        color: #999999;
    }
    .filebox label {
        display: inline-block;
        padding: 7px 20px;
        color: #fff;
        vertical-align: middle;
        background-color: #999999;
        cursor: pointer;
        height: 30px;
        margin-left: 10px;
        font-size: 14px;
    }
    .filebox input[type="file"] {
        position: absolute;
        width: 0;
        height: 0;
        padding: 0;
        overflow: hidden;
        border: 0;
    }
</style>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    $(document).ready(function(){

        var sanctnMbrNmArr = new Array();
        var sanctnMbrRankNmArr = new Array();
        var sanctnUserSttusCdIdArr = new Array();
        <c:forEach var="r" items="${selectSanctnUser}" varStatus="s">
            sanctnMbrNmArr.push("${r.sanctnMbrNm}");
            sanctnMbrRankNmArr.push("${r.sanctnMbrRankNm}");
            sanctnUserSttusCdIdArr.push("${r.sanctnUserSttusCdId}")
        </c:forEach>

        for (var i=0; i<sanctnMbrNmArr.length; i++) {
            var htmlData = '';
            var index = i + 1 ;
            $("#sanctnTbody").find("tr:eq(0)").find("td:eq("+ index +")").text(sanctnMbrRankNmArr[i]); // tr0 - td0
            $("#sanctnTbody").find("tr:eq(2)").find("td:eq("+ index +")").text(sanctnMbrNmArr[i]); // tr2 - td0
            var hidden = "<input type='hidden' id='"+ sanctnMbrNmArr[i] +"' value='"+ sanctnUserSttusCdIdArr[i] +"'></input>";
            $("#sanctnTbody").find("tr:eq(1)").find("td:eq("+ index +")").append(hidden);
            $("#sanctnTbody").append(htmlData);
        }

        var ccMbrNmArr = new Array();
        <c:forEach var="r" items="${selectSanctnCcUser}" varStatus="s">
            ccMbrNmArr.push("${r.ccMbrNm}");
        </c:forEach>

        for (var i=0; i<ccMbrNmArr.length; i++) {
            var htmlData = '';
            $("#ccTr").find("td:eq("+ i +")").text(ccMbrNmArr[i]);
            $("#ccTr").append(htmlData);
        }


        // 파일다운
        $(".downlink").click(function(e){
            e.preventDefault();
            var fileName = $(this).attr("href");
            window.location = "fileDown.do?fileName=" + fileName;
        });

        // 승인, 반려 이미지 뿌리기
        for (var i=0; i<sanctnMbrNmArr.length; i++) {
            var index = i + 1 ;
            var htmlData = '';
            var sttus =  $("#sanctnTbody").find("tr:eq(1)").find("td:eq("+ index +")").find("input").val();
            console.log(sttus);

            if(sttus == "승인") {
                htmlData += '<img style="max-height: 50%; max-width: 50%;" src="/img/check.png">';
            } else if(sttus == "반려") {
                htmlData += '<img style="max-height: 50%; max-width: 50%;" src="/img/noncheck.png">';
            }

            $("#sanctnTbody").find("tr:eq(1)").find("td:eq("+ index +")").append(htmlData);
        }

    });

    // 로그아웃
    function fn_logout() {
        window.location.href = '/mjcompany.co.kr/logout.do';
    }


</script>
</html>