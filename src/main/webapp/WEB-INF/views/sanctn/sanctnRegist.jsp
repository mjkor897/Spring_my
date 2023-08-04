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

<form:form commandName="SanctnDto" id="form1" name="form1" enctype="multipart/form-data">
    <input type="hidden" id="sanctnId" name="sanctnId" value="${SanctnDto.sanctnId}">
    <input type="hidden" id="sanctnSttusCdId" name="sanctnSttusCdId" value="진행">

    <div class="container" style="height: 1000px;">
        <div class="container campaign_ad" id="container" name="container">
            <div class="mb-2">
                <h5 style="float: left; font-family: 'Pretendard-Regular', sans-serif;">결재선</h5>
                <a href="javascript:fn_sanctnLine();" class="top_btn btn01" style="font-size: 13px; margin-left: 10px; margin-top: 5px; color: black;"> 결재선설정 <span class="btn_txt_small">▶</span></a>
            </div>
                <table class="type07">
                    <tbody id="sanctnTbody" style="background: white;">
                    <tr>
                        <th scope="cols" rowspan="3" style="vertical-align: middle;">결재</th>
                        <td style="border-right: #ececec solid 1px; background: #f8f8f8;">${memberLogin.mbrRankNm}</td>
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
                        <td style="border-right: #ececec solid 1px;">${memberLogin.mbrNm}</td>
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
                        본문<span class="txt_small"> (결재종류와 그에 맞는 내용을 작성해주세요.)</span>
                    </h5>
                </div>

                <div class="bbsinsert">
                    <table>
                        <thead style="background: white; border: #ececec solid 1px;">
                        <tr>
                            <th width="130px" class="title" style="color: black;"> <span class="ico">○</span> 결재종류 </th>
                            <th class="cont">
                                <select name="sanctnDocNm" class="time hour" style="font-size: 14px; height: 30px;">
                                    <option value="경비청구신청서">경비청구신청서</option>
                                    <option value="휴가신청서">휴가신청서</option>
                                    <option value="프로젝트 수행실적">프로젝트 수행실적</option>
                                    <option value="출장계획서">출장계획서</option>
                                    <option value="기타 품의">기타 품의</option>
                                </select>
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
                            <td class="cont" style="padding-top: 8px; padding-bottom: 8px;">
                                <input class="big_input fs14" style="height: 40px;" type="text" id="sanctnSj" name="sanctnSj" value="" placeholder="제목을 입력해 주세요.">
                            </td>
                        </tr>
                        <tr style="height: 330px;">
                            <td class="title">
                                <span>내용</span>
                            </td>
                            <td class="cont">
                                <textarea class="form-control fs14" style="border-radius : 0;border: #f1f1f1 solid 1.5px;" id="sanctnCn" name="sanctnCn" rows="13" placeholder="내용을 입력해주세요."></textarea>
                            </td>

                        </tr>
                        <tr>
                            <td class="title">
                                <span>참조문서</span>
                            </td>
                            <td class="cont">
                                <input class="fs14" type="file" id="referDocFile" name="referDocFile" multiple="multiple">
                                <%--<label for="referDocFile" class="fs14">파일찾기</label>--%>
                                <%--<div class="filebox">
                                    <input class="upload-name fs14" value="첨부파일" placeholder="첨부파일">
                                    <label for="file" class="fs14">파일찾기</label>
                                    <input type="file" id="file" class="fs14">
                                </div>--%>
                            </td>
                        </tr>
                        </thead>
                    </table>

                    <div class="btn_wrap">
                        <%--<a class="btn_gray" href="/${login.cmpnyAddrDomain}/sanctn.do"><span class="txt_white">기안하기</span></a>--%>
                        <a class="btn_brown" href="javascript:fn_draft();" style="position: absolute; left: 50%; margin-top: 30px; width: 100px; background: #139dc8; border: 0 #139dc8;"><span class="txt_white">기안하기</span></a>
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

    $("#file").on('change',function(){
        var fileName = $("#file").val();
        $(".upload-name").val(fileName);
    });

    function fn_sanctnLine() {
        var openUrl = "/mjcompany.co.kr/sanctnLine.do";
        var option = "width = 950, height = 700, top = 100, left = 200, location = no";

        window.open(openUrl, "addrBook", option);
    }

    function fn_goSanctn(sanctnMbrCd, sanctnMbrNm, sanctnMbrId, sanctnMbrRankNm, ccMbrCd, ccMbrNm, ccMbrId, ccMbrRankNm, sanctnDraftId, sanctnDraftNm, sanctnDraftRankNm) {

        draftData = '<input type="hidden" id="sanctnDraftId" name="sanctnDraftId" value="'+ sanctnDraftId +'">';//기안자아이디
        draftData += '<input type="hidden" id="sanctnDraftNm" name="sanctnDraftNm" value="'+ sanctnDraftNm +'">';//기안자이름
        draftData += '<input type="hidden" id="sanctnDraftRankNm" name="sanctnDraftRankNm" value="'+ sanctnDraftRankNm +'">';//기안자직위
        $("#sanctnTbody").append(draftData);

        // 결재자 2명 뿌리고 다시 1명 뿌리면 처음에 뿌렸던 두번째 결재자가 안지워짐
        // 또한 뿌린 hidden값도 안사라지고 쌓임
        var sanctnMbrCdLen = sanctnMbrCd.length;
        for(var i=0; i<sanctnMbrCdLen; i++) {
            var htmlData = '';

            htmlData += '<input type="hidden" id="sanctnMbrCdArr" name="sanctnMbrCdArr" value="'+ sanctnMbrCd[i] +'">';
            htmlData += '<input type="hidden" id="sanctnMbrIdArr" name="sanctnMbrIdArr" value="'+ sanctnMbrId[i] +'">';
            htmlData += '<input type="hidden" id="sanctnMbrNmArr" name="sanctnMbrNmArr" value="'+ sanctnMbrNm[i] +'">';
            htmlData += '<input type="hidden" id="sanctnMbrRankNmArr" name="sanctnMbrRankNmArr" value="'+ sanctnMbrRankNm[i] +'">';
            htmlData += '<input type="hidden" id="sanctnUserSttusCdIdArr" name="sanctnUserSttusCdIdArr" value="대기">';
            var index = i + 1 ;
            $("#sanctnTbody").find("tr:eq(0)").find("td:eq("+ index +")").text(sanctnMbrRankNm[i]); // tr0 - td0
            $("#sanctnTbody").find("tr:eq(2)").find("td:eq("+ index +")").text(sanctnMbrNm[i]); // tr2 - td0
            $("#sanctnTbody").append(htmlData);
        }

        var ccMbrCdLen = ccMbrCd.length;
        for(var i=0; i<ccMbrCdLen; i++) {
            var htmlData = '';
            htmlData += '<input type="hidden" id="ccMbrIdArr" name="ccMbrIdArr" value="'+ ccMbrId[i] +'">';
            htmlData += '<input type="hidden" id="ccMbrCdArr" name="ccMbrCdArr" value="'+ ccMbrCd[i] +'">';
            htmlData += '<input type="hidden" id="ccMbrNmArr" name="ccMbrNmArr" value="'+ ccMbrNm[i] +'">';
            htmlData += '<input type="hidden" id="ccMbrRankNmArr" name="ccMbrRankNmArr" value="'+ ccMbrRankNm[i] +'">';
            htmlData += '<input type="hidden" id="sanctnCcSttusCdIdArr" name="sanctnCcSttusCdIdArr" value="참조">';
            $("#ccTr").find("td:eq("+ i +")").text(ccMbrNm[i]);
            $("#ccTr").append(htmlData);
        }
    }

    function fn_draft() {

        if(confirm("기안하시겠습니까?")) {
            $("#form1").attr("action", "/mjcompany.co.kr/sanctnInsert.do"); //요청 보낼 주소
            $("#form1").submit();
        } else {
            return;
        }
    }

    // 로그아웃
    function fn_logout() {
        window.location.href = '/mjcompany.co.kr/logout.do';
    }

</script>
</html>