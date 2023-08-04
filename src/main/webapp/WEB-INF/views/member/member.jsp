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

    <!-- Vendor CSS Files -->
    <link href="/vendor/aos/aos.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/css/home.css" rel="stylesheet">
    <link href="/css/member.css" rel="stylesheet">

    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />

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
                <li><a href="/${login.cmpnyAddrDomain}/member.do" class="active"><i class="bx bx-user"></i> <span>인사정보</span></a></li>
                <li><a href="/${login.cmpnyAddrDomain}/stats.do"><i class="bx bx-file-blank"></i> <span>인사통계</span></a></li>
                <li><a href="/${login.cmpnyAddrDomain}/sanctn.do"><i class="bx bx-server"></i> <span>전자결재</span></a></li>
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

<div class="container" style="position: absolute; left: 300px; top: 60px;">
    <div class="row">
        <!-- 부서 메뉴 시작 -->
        <div class="col-lg-3">
            <div class="sidebar" style="position: absolute; left: 20px; border: #F1F1F1 solid 1px; padding: 15px; background: white;">
                <div class="widget border-0">
                    <div class="search" style="display: flex; margin-right: -70px;">
                        <input id="srchMbrNm" name="mbrNm" class="form-control" type="text" placeholder="직원 검색" style="width: 50%; font-size: 0.9rem;">
                        <button type="button" onclick="fn_searchMbr();" class="form-control" style="width: 80px; margin-left: 1px; color: #6f7180; font-size: 0.9rem;">search</button>
                    </div>
                </div>

                <c:forEach items="${selectDept}" var="r">
                    <div class="menu" style="/*border: #F1F1F1 1px solid;*/ padding-top: 5px">
                        <c:choose>
                            <c:when test = "${empty r.highDeptCd}">
                                <c:forEach items="${r.rowDepts}" var="rr">
                                   <a href="javascript:fn_selectMbrInfo('${rr.rowDeptNm}', '${r.highDeptNm}');">
                                       <h6 style="display: inline-block; margin-bottom: 0; padding: 10px 10px; font-family: 'Pretendard-Regular';">${rr.rowDeptNm}</h6>
                                   </a>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <a href="javascript:fn_selectMbrInfo('', '${r.highDeptNm}');">
                                    <h6 style="display: inline-block; margin-bottom: 0; padding: 10px 10px; font-family: 'Pretendard-Regular';">${r.highDeptNm}</h6>
                                </a>
                                <a class="ml-auto" data-toggle="collapse" href="#dateposted" role="button" aria-expanded="false" aria-controls="dateposted">
                                    <i class="fas fa-chevron-down"></i>
                                </a>
                                <ul class="hide">
                                    <c:forEach items="${r.rowDepts}" var="rr"><%-- rowDepts라는 list타입의 객체를 selectDept에서 가져와서 돌림 --%>
                                        <div class="mt-3">${rr.rowDeptNm}</div>
                                    </c:forEach>
                                </ul>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </c:forEach>

            </div>
        </div>
        <!-- 부서 메뉴 끝 -->

        <div class="col-lg-9" style="margin-left: -12px;">
            <input type="hidden" id="deptNm" name="deptNm"/>
            <input type="hidden" id="highDeptNm" name="highDeptNm"/>
            <h5 id="mbrInfo" style="font-weight: bold; position: absolute; top: 25px; font-family: 'Pretendard-Regular';">CEO</h5>
            <div id="info" class="row" style="margin-right: 70px; margin-top: 50px;">
                <div class="col-sm-6 mb-4" style="width: 19%; margin-top: 20px;">
                    <div class="candidate-list candidate-grid">
                        <div class="candidate-list-image">
                            <img class="img-fluid" src="/img/memberIcon.jpg" alt="">
                        </div>
                        <div class="candidate-list-details">
                            <div class="candidate-list-info">
                                <div class="candidate-list-title">
                                    <h6 id="mbrNm" style="font-family: 'Pretendard-Regular';">김유주</h6>
                                </div>
                                <div class="candidate-list-option">
                                    <ul class="list-unstyled pb-2">
                                        <li id="li1">CEO</li>
                                        <li id="li2">사장</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--<div>
            <h6 id="srchNone" style="position:absolute; right: 50%; color: #6f7180"></h6>
            </div>--%>
            <p id="srchNone" style="color: #6f7180; text-align: center; padding: 200px; padding-left: 0;"></p>

            <%--<div class="row">
                <div class="col-12 text-center mt-4 mt-sm-5">
                    <ul class="pagination justify-content-center mb-0">
                        <li class="page-item disabled"> <span class="page-link">Prev</span> </li>
                        <li class="page-item active" aria-current="page"><span class="page-link">1 </span> <span class="sr-only">(current)</span></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">...</a></li>
                        <li class="page-item"><a class="page-link" href="#">25</a></li>
                        <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
                    </ul>
                </div>
            </div>--%>
        </div>
    </div>
</div>

</body></html>


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
<script src="0/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/js/main.js"></script>
<style type="text/css" data-typed-js-css="true">

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

    /* 하위 드롭다운 */
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}

    /* a링크 스타일 변경 */
    a:link { color: black; text-decoration: none;}
    /*a:hover { color: #2c2f3f; background-color: #e1e1e1}*/
    a:active { color: #265491;}

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
</style>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");

            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        }).mouseover(function(){
            $(this).next("ul").slideDown();
        });

        // menu class 중에 두번째 있는 menu 의 하위에 있는 a태그에 클릭 이벤트를 발생시킨다.
        $(".menu:eq(1)>a").click();


    });


    // 직원정보 보여주기
    // 보완 : 처음 시작페이지에 CEO를 동적으로 보여주기(현재는 데이터 박아놓음)
    function fn_selectMbrInfo(deptNm, highDeptNm) {

        $("#deptNm").val(deptNm); // input hidden value에 deptNm(파라미터) 넣어주기
        $("#highDeptNm").val(highDeptNm);
        // console.log($("#deptNm").val());

        var param = {
              deptNm : $("#deptNm").val()
            , highDeptNm : $("#highDeptNm").val()
        }

        $.ajax({
              type : "post"
            , url : "/mjcompany.co.kr/member/ajaxMbrInfo.do"
            , data : JSON.stringify(param)
            , contentType: "application/json"
            , success : function(selectMbrInfo) {
                $('#mbrInfo').empty();
                $('#info').empty();
                $('#srchNone').empty();
                $('#mbrInfo').append(highDeptNm);
                $('#mbrInfo').append(deptNm);
                $.each(selectMbrInfo, function (idx, val){
                    var output = '<div class="col-sm-6 mb-4" style="width: 19%; margin-top: 20px;">';
                    output += '<div class="candidate-list candidate-grid">';
                    output += '<div class="candidate-list-image">';
                    output += '<img class="img-fluid" src="/img/memberIcon.jpg" alt="">';
                    output += '</div>';
                    output += '<div class="candidate-list-details">';
                    output += '<div class="candidate-list-info">';
                    output += '<div class="candidate-list-title">';
                    output += '<h6 id="mbrNm" style="font-family: Pretendard-Regular;">';
                    output +=  val.mbrNm;
                    output += '</h6>'
                    output += '</div>';
                    output += '<div class="candidate-list-option">';
                    output += '<ul class="list-unstyled pb-2">';
                    output += '<li id="li1">'+ val.deptNm +'</li>';
                    output += '<li id="li2">'+ val.mbrRankNm +'</li>';
                    output += '</ul>';
                    output += '</div></div></div></div></div>';
                    $('#info').append(output);
                    console.log("성공");
                })
            }, error : function(error) {
                alert('통신실패!' + error);
            }
        });
    }

    // 직원검색
    // 보완 : 상위부서별로 보여주기
    function fn_searchMbr() {

        var mbrNm = $('#srchMbrNm').val();
        if(mbrNm == null || mbrNm == '') {
            alert('검색어를 입력해주세요.');
            return;
        }

        var param = { "mbrNm" : mbrNm }

        $.ajax({
              type: "post"
            , url: "/mjcompany.co.kr/member/ajaxSrchMbrInfo.do"
            , data: JSON.stringify(param)
            , contentType: "application/json"
            , success: function (srchSelectMbrInfo) {
                $('#mbrInfo').empty();
                $('#info').empty();
                $('#srchNone').empty();
                $('#mbrInfo').append("직원 검색 결과");
                $.each(srchSelectMbrInfo, function (idx, val) {
                    // 검색결과가 없을때 = none일때
                    if(val.mbrNm == 'none' && val.deptNm == 'none'){
                        $("#srchNone").append("검색 결과가 없습니다.");
                    } else {
                        var output = '<div class="col-sm-6 mb-4" style="width: 19%; margin-top: 20px;">';
                        output += '<div class="candidate-list candidate-grid">';
                        output += '<div class="candidate-list-image">';
                        output += '<img class="img-fluid" src="/img/memberIcon.jpg" alt="">';
                        output += '</div>';
                        output += '<div class="candidate-list-details">';
                        output += '<div class="candidate-list-info">';
                        output += '<div class="candidate-list-title">';
                        output += '<h6 id="mbrNm" style="font-family: Pretendard-Regular;">';
                        output +=  val.mbrNm;
                        output += '</h6>'
                        output += '</div>';
                        output += '<div class="candidate-list-option">';
                        output += '<ul class="list-unstyled pb-2">';
                        output += '<li id="li1">'+ val.deptNm +'</li>';
                        output += '<li id="li2">'+ val.mbrRankNm +'</li>';
                        output += '</ul>';
                        output += '</div></div></div></div></div>';
                        $('#info').append(output);
                    }
                })
            }
            , error : function(error) {
                alert('통신실패!' + error);
            }
        })
    }

    // 로그아웃
    function fn_logout() {
        window.location.href = '/mjcompany.co.kr/logout.do';
    }

</script>
