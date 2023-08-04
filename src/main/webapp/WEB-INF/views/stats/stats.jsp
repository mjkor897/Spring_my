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
                <li><a href="/${login.cmpnyAddrDomain}/stats.do" class="active"><i class="bx bx-file-blank"></i> <span>인사통계</span></a></li>
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

<form:form commandName="statsView" method="post">
    <div class="row container" style="position: absolute; top: 60px;">
        <h5 style="font-family: 'Pretendard-Regular'; font-weight: bold;">&nbsp;인사통계</h5>
        <div class="row" style="background: white; width: 90%; /*height: 900px;*/ position: absolute; left: 35px; top: 50px; border: #F1F1F1 solid 1px;">
            <div class="col-xl-3 col-md-6" style="padding: 25px 15px 15px 15px;">
                <div class="card mb-4" style="border:#F1F1F1 solid 1px;">
                    <div class="card-body" style="font-size: 20px; font-weight: bold; background: #b6b6f02e;">${statsView.totalMbr} 명</div>
                    <div class="card-footer d-flex align-items-center justify-content-between" style="background: #b6b6f024; border-top: #f1f1f1 solid 2px;">
                        <a class="small text-black stretched-link" href="#">현재인원</a>
                        <div class="small"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6" style="padding: 25px 15px 15px 15px;">
                    <div class="card mb-4" style="border:#F1F1F1 solid 1px;">
                    <div class="card-body" style="font-size: 20px; font-weight: bold; background: #b6b6f02e;">${statsView.avgMbr} 세</div>
                    <div class="card-footer d-flex align-items-center justify-content-between" style="background: #b6b6f024; border-top: #f1f1f1 solid 2px;">
                        <a class="small text-black stretched-link" href="#">평균연령</a>
                        <div class="small"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6" style="padding: 25px 15px 15px 15px;">
                <div class="card mb-4" style="border:#F1F1F1 solid 1px;">
                    <div class="card-body" style="font-size: 20px; font-weight: bold; background: #b6b6f02e;">${statsView.yosMbr} 년</div>
                    <div class="card-footer d-flex align-items-center justify-content-between" style="background: #b6b6f024; border-top: #f1f1f1 solid 2px;">
                        <a class="small text-black stretched-link" href="#">평균근속년수</a>
                        <div class="small"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6" style="padding: 25px 15px 15px 15px;">
                <div class="card mb-4" style="border:#F1F1F1 solid 1px;">
                    <div class="card-body" style="font-size: 20px; font-weight: bold; background: #b6b6f02e;">${statsView.retireMbr} %</div>
                    <div class="card-footer d-flex align-items-center justify-content-between" style="background: #b6b6f024; border-top: #f1f1f1 solid 2px;">
                        <a class="small text-black stretched-link" href="#">퇴사율</a>
                        <div class="small"></div>
                    </div>
                </div>
            </div>

            <!-- 차트 -->
            <div class="row">
                <div class="col-xl-5">
                    <div class="card mb-4" style="border: solid 1px #F1F1F1;">
                        <div class="card-header" style="background: #b6b6f02e; border: solid 1px #F1F1F1; font-weight: bold;">
                            직원별현황
                        </div>
                        <div class="card-body">
                            <div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand">
                                <div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="myChart1" width="421" height="168" style="display: block; height: 202px; width: 506px;" class="chartjs-render-monitor"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-xl-7">
                    <div class="card mb-4" style="border: solid 1px #F1F1F1;">
                        <div class="card-header" style="background: #b6b6f02e; border: solid 1px #F1F1F1;font-weight: bold;">
                            재직현황
                        </div>
                        <div class="card-body">
                            <div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand">
                                <div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <div style="height: 166px; width: 250px; float: left; margin-left: 20px;">
                                <canvas id="myChart2" width="421" height="268" style="display: block; height: 202px; width: 506px;" class="chartjs-render-monitor"></canvas>
                            </div>
                            <div style="height: 166px; width: 250px; float: left; margin-left: 50px;">
                                <canvas id="myChart3" width="421" height="268" style="display: block; height: 202px; width: 506px;" class="chartjs-render-monitor"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="card mb-4" style="border: solid 1px #F1F1F1;">
                        <div class="card-header" style="background: #b6b6f02e; border: solid 1px #F1F1F1;font-weight: bold;">
                            직위별현황
                        </div>
                        <div class="card-body">
                            <div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand">
                                <div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="myChart4" width="421" height="168" style="display: block; height: 202px; width: 506px;" class="chartjs-render-monitor"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="card mb-4" style="border: solid 1px #F1F1F1;">
                        <div class="card-header" style="background: #b6b6f02e; border: solid 1px #F1F1F1;font-weight: bold;">
                            퇴직사유
                        </div>
                        <div class="card-body">
                            <div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand">
                                <div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="myChart5" width="421" height="168" style="display: block; height: 202px; width: 506px;" class="chartjs-render-monitor"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="card mb-4" style="border: solid 1px #F1F1F1;">
                        <div class="card-header" style="background: #b6b6f02e; border: solid 1px #F1F1F1;font-weight: bold;">
                            남녀성비
                        </div>
                        <div class="card-body">
                            <div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand">
                                <div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="myChart6" width="421" height="168" style="display: block; height: 202px; width: 506px;" class="chartjs-render-monitor"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="cntJung" name="cntJung" value="${statsView.cntJung}">
    <input type="hidden" id="cntBeJung" name="cntBeJung" value="${statsView.cntBeJung}">
    <input type="hidden" id="cntEtc" name="cntEtc" value="${statsView.cntEtc}">

    <input type="hidden" id="cntTenure" name="cntTenure" value="${statsView.cntTenure}">
    <input type="hidden" id="cntRetire" name="cntRetire" value="${statsView.cntRetire}">
    <input type="hidden" id="cntLoa" name="cntLoa" value="${statsView.cntLoa}">

    <input type="hidden" id="cntWoman" name="cntWoman" value="${statsView.cntWoman}">
    <input type="hidden" id="cntMan" name="cntMan" value="${statsView.cntMan}">

</form:form>

<form:form commandName="cntBgnde" method="post">
    <input type="hidden" id="cntBgnde2018" name="cntBgnde2018" value="${cntBgnde.cntBgnde2018}">
    <input type="hidden" id="cntBgnde2019" name="cntBgnde2019" value="${cntBgnde.cntBgnde2019}">
    <input type="hidden" id="cntBgnde2020" name="cntBgnde2020" value="${cntBgnde.cntBgnde2020}">
    <input type="hidden" id="cntBgnde2021" name="cntBgnde2021" value="${cntBgnde.cntBgnde2021}">
    <input type="hidden" id="cntBgnde2022" name="cntBgnde2022" value="${cntBgnde.cntBgnde2022}">
    <input type="hidden" id="cntBgnde2023" name="cntBgnde2023" value="${cntBgnde.cntBgnde2023}">
</form:form>

<form:form commandName="cntEnd" method="post">
    <input type="hidden" id="cntEnd2018" name="cntEnd2018" value="${cntEnd.cntEnd2018}">
    <input type="hidden" id="cntEnd2019" name="cntEnd2019" value="${cntEnd.cntEnd2019}">
    <input type="hidden" id="cntEnd2020" name="cntEnd2020" value="${cntEnd.cntEnd2020}">
    <input type="hidden" id="cntEnd2021" name="cntEnd2021" value="${cntEnd.cntEnd2021}">
    <input type="hidden" id="cntEnd2022" name="cntEnd2022" value="${cntEnd.cntEnd2022}">
    <input type="hidden" id="cntEnd2023" name="cntEnd2023" value="${cntEnd.cntEnd2023}">
</form:form>

<form:form commandName="cntRetire" method="post">
    <input type="hidden" id="cntRe001" name="cntRe001" value="${cntRetire.cntRe001}">
    <input type="hidden" id="cntRe002" name="cntRe002" value="${cntRetire.cntRe002}">
    <input type="hidden" id="cntRe003" name="cntRe003" value="${cntRetire.cntRe003}">
    <input type="hidden" id="cntRe004" name="cntRe004" value="${cntRetire.cntRe004}">
    <input type="hidden" id="cntRe005" name="cntRe005" value="${cntRetire.cntRe005}">
    <input type="hidden" id="cntRe006" name="cntRe006" value="${cntRetire.cntRe006}">
</form:form>

<form:form commandName="cntRank" method="post">
    <input type="hidden" id="cntRank001" name="cntRank001" value="${cntRank.cntRank001}">
    <input type="hidden" id="cntRank002" name="cntRank002" value="${cntRank.cntRank002}">
    <input type="hidden" id="cntRank003" name="cntRank003" value="${cntRank.cntRank003}">
    <input type="hidden" id="cntRank004" name="cntRank004" value="${cntRank.cntRank004}">
    <input type="hidden" id="cntRank005" name="cntRank005" value="${cntRank.cntRank005}">
    <input type="hidden" id="cntRank006" name="cntRank006" value="${cntRank.cntRank006}">
    <input type="hidden" id="cntRank007" name="cntRank007" value="${cntRank.cntRank007}">
    <input type="hidden" id="cntRank008" name="cntRank008" value="${cntRank.cntRank008}">
    <input type="hidden" id="cntRank009" name="cntRank009" value="${cntRank.cntRank009}">
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
        background: #f5f8fd;
    }

    .container {
        position: absolute;
        left: 20%;
        top: 30px;
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

</style>
</body>
</html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    // 직원별현황
    var cntJung = $("#cntJung").val();
    var cntBeJung = $("#cntBeJung").val();
    var cntEtc = $("#cntEtc").val();

    // 차트 (cc:www.chartjs.org/docs/latest/samples/)
    var context = document
        .getElementById('myChart1')
        .getContext('2d');
    var myChart = new Chart(context, {
        type: 'doughnut', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '정규직','비정규직','기타'
            ],
            datasets: [
                { //데이터
                    label: '직원별현황', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        cntJung, cntBeJung, cntEtc //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        //색상
                        'rgba(46,26,224,0.8)',
                        'rgba(238,198,36,0.93)',
                        'rgba(86,165,255,0.87)'
                    ]/*,
                    borderColor: [
                        //경계선 색상
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ]*/,
                    borderWidth: 1 //경계선 굵기
                }/* ,
                        {
                            label: 'test2',
                            fill: false,
                            data: [
                                8, 34, 12, 24
                            ],
                            backgroundColor: 'rgb(157, 109, 12)',
                            borderColor: 'rgb(157, 109, 12)'
                        } */
            ]
        },
        options: {
            scales: {
                /*yAxes: [
                    {
                        ticks: {
                            beginAtZero: true
                        }
                    }
                ]*/
            }
        }
    });

    // 재직현황
    var cntTenure = $("#cntTenure").val();
    var cntRetire = $("#cntRetire").val();
    var cntLoa = $("#cntLoa").val();

    var context = document
        .getElementById('myChart2')
        .getContext('2d');
    var myChart = new Chart(context, {
        type: 'pie', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '입사자','퇴사자', '휴직자'
            ],
            datasets: [
                { //데이터
                    label: '재직현황', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        cntTenure, cntRetire, cntLoa //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        //색상
                        'rgba(46,26,224,0.8)',
                        'rgba(238,198,36,0.93)',
                        'rgba(86,165,255,0.87)'
                    ],
                    /*borderColor: [
                        //경계선 색상
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],*/
                    borderWidth: 1 }//경계선 굵기
            ]
        },
        options: {
            scales: {

            }
        }
    });

    // 재직현황2
    var cntBgnde2018 = $("#cntBgnde2018").val();
    var cntBgnde2019 = $("#cntBgnde2019").val();
    var cntBgnde2020 = $("#cntBgnde2020").val();
    var cntBgnde2021 = $("#cntBgnde2021").val();
    var cntBgnde2022 = $("#cntBgnde2022").val();
    var cntBgnde2023 = $("#cntBgnde2023").val();

    var cntEnd2018 = $("#cntEnd2018").val();
    var cntEnd2019 = $("#cntEnd2019").val();
    var cntEnd2020 = $("#cntEnd2020").val();
    var cntEnd2021 = $("#cntEnd2021").val();
    var cntEnd2022 = $("#cntEnd2022").val();
    var cntEnd2023 = $("#cntEnd2023").val();


    var context = document
        .getElementById('myChart3')
        .getContext('2d');
    var myChart = new Chart(context, {
        type: 'line', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '2018','2019','2020','2021','2022','2023'
            ],
            datasets: [
                { //데이터
                    label: '입사자', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        cntBgnde2018,cntBgnde2019,cntBgnde2020,cntBgnde2021,cntBgnde2022,cntBgnde2023 //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        'rgba(46,26,224,0.8)'
                    ],
                    borderColor: 'rgba(46,26,224,0.8)'
                } ,
                        {
                            label: '퇴사자',
                            fill: false,
                            data: [
                                cntEnd2018,cntEnd2019,cntEnd2020,cntEnd2021,cntEnd2022,cntEnd2023
                            ],
                            backgroundColor: 'rgba(238,198,36,0.93)',
                            borderColor: 'rgba(238,198,36,0.93)'
                        },
            ]
        },
        options: {
            scales: {
                yAxes: [
                    {
                        ticks: {
                            beginAtZero: true
                        }
                    }
                ]
            }
        }
    });

    // 직위별현황
    var cntRank001 = $("#cntRank001").val();
    var cntRank002 = $("#cntRank002").val();
    var cntRank003 = $("#cntRank003").val();
    var cntRank004 = $("#cntRank004").val();
    var cntRank005 = $("#cntRank005").val();
    var cntRank006 = $("#cntRank006").val();
    var cntRank007 = $("#cntRank007").val();
    var cntRank008 = $("#cntRank008").val();
    var cntRank009 = $("#cntRank009").val();

    var context = document
        .getElementById('myChart4')
        .getContext('2d');

    var myChart = new Chart(context, {
        type: 'bar', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '사장', '전무', '상무', '부장', '과장', '차장', '대리', '주임', '사원'
            ],
            datasets: [
                { //데이터
                    label: '재직현황',
                    fill: false,
                    data: [
                        cntRank001, cntRank002, cntRank003, cntRank004, cntRank005, cntRank006, cntRank007, cntRank008, cntRank009
                        ],
                        backgroundColor: [
                        //색상
                        'rgba(46,26,224,0.8)',
                        'rgba(238,198,36,0.93)',
                        'rgba(86,165,255,0.87)',
                        'rgba(238,55,165,0.87)',
                        'rgba(80,180,74,0.87)',
                        'rgba(207,188,243,0.89)',
                        'rgba(109,163,225,0.87)',
                        'rgba(179,238,189,0.87)',
                        'rgba(255,172,65,0.91)',
                    ],
                    borderWidth: 1 }
            ]
        },
        options: {
            legend : {
                display : false
            },
            scales : {
                yAxes: [{
                    ticks: {
                        min: 0,
                        stepSize: 5,
                        max: 10,
                    }
                }]
            }
        }
    });

    // 퇴직사유
    var cntRe001 = $("#cntRe001").val();
    var cntRe002 = $("#cntRe002").val();
    var cntRe003 = $("#cntRe003").val();
    var cntRe004 = $("#cntRe004").val();
    var cntRe005 = $("#cntRe005").val();
    var cntRe006 = $("#cntRe006").val();

    var context = document
        .getElementById('myChart5')
        .getContext('2d');
    var myChart = new Chart(context, {
        type: 'bar', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '정년퇴직','임원퇴직', '타사이직', '전출', '개인사유', '기타사유'
            ],
            datasets: [
                { //데이터
                    label: '재직현황', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        cntRe001, cntRe002, cntRe003, cntRe004, cntRe005, cntRe006 //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        //색상
                        'rgba(46,26,224,0.8)',
                        'rgba(238,198,36,0.93)',
                        'rgba(86,165,255,0.87)',
                        'rgba(238,55,165,0.87)',
                        'rgba(80,180,74,0.87)',
                        'rgba(207,188,243,0.89)',
                    ],
                    borderWidth: 1 }//경계선 굵기
            ]
        },
        options: {
            legend : {
                display : false
            },
            scales : {
                yAxes: [{
                    ticks: {
                        min: 0,
                        stepSize: 5,
                        max: 10,
                    }
                }]
            }
        }
    });

    // 남녀성비
    var cntWoman = $("#cntWoman").val();
    var cntMan = $("#cntMan").val();

    var context = document
        .getElementById('myChart6')
        .getContext('2d');
    var myChart = new Chart(context, {
        type: 'doughnut', // 차트의 형태
        data: { // 차트에 들어갈 데이터
            labels: [
                //x 축
                '남성','여성'
            ],
            datasets: [
                { //데이터
                    label: '남녀성비', //차트 제목
                    fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                    data: [
                        cntMan, cntWoman //x축 label에 대응되는 데이터 값
                    ],
                    backgroundColor: [
                        //색상
                        'rgba(46,26,224,0.8)',
                        'rgba(238,198,36,0.93)'
                    ],
                    borderWidth: 1 ,
                    pointStyle: 'circle',
                }
            ]
        },
        options: {
            legend: {
                usePointStyle: true,
                position: 'right'
            },
            scales : {

            }
        }
    });

    // 로그아웃
    function fn_logout() {
        window.location.href = '/mjcompany.co.kr/logout.do';
    }

</script>