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
  <link href="/css/mail.css" rel="stylesheet">

  <!-- SunEdtor css -->
  <%--<link rel="stylesheet" href="/css/bootstrap.css">--%>
  <link rel="stylesheet" href="/css/suneditor.min.css">
  <!-- SunEdtor js -->
  <script type="text/javascript" src="/js/suneditor.min.js"></script>

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
        <li><a href="/${login.cmpnyAddrDomain}/sanctn.do"><i class="bx bx-server"></i> <span>전자결재</span></a></li>
        <li><a href="/${login.cmpnyAddrDomain}/board.do"><i class="bx bx-book-content"></i> <span>게시판</span></a></li>
        <li><a href="/${login.cmpnyAddrDomain}/mail.do" class="active"><i class="bx bx-envelope"></i> <span>Mail</span></a></li>
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

<%--우리가 받는 이메일에 표시되는 각종 이미지들은 대부분 그들 서버에 먼저 업로드되어,
이메일에서는 그 이미지의 주소만 호출해서 보여주는것이지 그 이메일에 직접 첨부되는게 아님--%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://select2.github.io/dist/css/select2.min.css" rel="stylesheet">
<script src="https://select2.github.io/dist/js/select2.full.js"></script>

<div class="container" style="position:absolute; left: 20%; top: 60px; height: 900px;">
  <h5 style="font-weight: bold; font-family: 'Pretendard-Regular', sans-serif; margin-left: 10px; margin-bottom: 20px;">메일 작성</h5>
  <div style="background: white; width: 92%; height: 840px; border: solid 1px #ececec;">
    <div class="row inbox">
      <div class="col-md-9" style="width: 100%; margin-left: 15px;">
        <div class="panel panel-default">
          <div class="panel-body message">
            <%--<p class="text-center">New Message</p>--%>
            <form class="form-horizontal" role="form">
              <input type="hidden" id="mailSendUserId" name="mailSendUserId">
              <div class="form-group mb-3">
                <label for="mailList" class="col-sm-1 control-label mb-1" style="font-size: 15px; margin-top: 10px;">받는사람 </label>
                <div class="col-sm-11 inputWrap" >
                  <input type="email" class="form-control select2-offscreen" style="width: 1160px; border-radius : 0; height: 50px;border: #F1F1F1 solid 1.5px;" id="mailList" name="mailList" placeholder="Type email" readonly>
                  <div class="emailsDiv" id="emails"></div>
                  <button type="button" class="btnClear" onclick="fn_addrBook();">주소록</button>
                </div>

              </div>
              <div class="form-group" style="margin-top: 35px;">
                <label for="mailSj" class="col-sm-1 control-label mb-1" style="font-size: 15px;">제목</label>
                <div class="col-sm-11" >
                  <input type="text" class="form-control select2-offscreen" style="width: 1160px; border-radius : 0; height: 50px;border: #F1F1F1 solid 1.5px;" id="mailSj" name="mailSj" placeholder="제목을 입력해주세요." tabindex="-1">
                </div>
              </div>

            </form>

            <div class="col-sm-11 col-sm-offset-1">

              <div class="form-group">
                <textarea class="form-control" style="width: 1160px; border-radius : 0;border: #F1F1F1 solid 1.5px;" id="mailCn" name="mailCn" rows="12" placeholder="내용을 입력해주세요."></textarea>
              </div>

              <div class="insert">
                <label className="input-file-button" for="input-file" style="padding: 7px 10px;background-color: #e6e8ea;/*border-radius: 4px;*/color: black;cursor: pointer;font-size: 13px;margin-bottom: 5px;">
                  파일 첨부
                </label>
                <input type="file" id="input-file" onchange="fn_addFile(this);" multiple="multiple" style="margin-bottom: 5px; display: none;"/>
                <div class="file-list" style="background: #f9f9f9; border: dashed 2px #F1F1F1;"></div>
              </div>

              <div class="form-group mb-3" style="margin-top: 30px;">
                <a href="javascript:fn_sendMail();" class="button" style="position: relative; margin: 0; left: 50%; width: 120px; height: 45px; border-radius: 5px; padding-top: 7px; font-size: 15px;">보내기</a>
                <%--<a class="btn_brown" href="javascript:fn_draft();" style="position: relative; margin: 0; left: 50%; margin-top: 30px; width: 100px; background: #139dc8; border: 0 #139dc8;"><span class="txt_white">기안하기</span></a>--%>
              </div>

            </div>
          </div>
        </div>
      </div><!--/.col-->
    </div>
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

  /* 첨부파일 */
  .insert {
    padding: 20px 30px;
    display: block;
    width: 1160px;
    /*margin: 5vh auto*/;
    margin-top: 15px;
    /*height: 90vh;*/
    /*border: 1px solid #dbdbdb;*/
    border: #F1F1F1 solid 1.5px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    background: white;
  }
  .insert .file-list {
    height: 150px;
    overflow: auto;
    border: 1px solid #989898;
    padding: 10px;
  }
  .insert .file-list .filebox p {
    font-size: 13px;
    /*margin-top: 10px;*/
    margin-bottom: 0;
    display: inline-block;
  }
  .insert .file-list .filebox .delete i{
    color: #ff5353;
    margin-left: 5px;
  }

  .input-file-button{
    padding: 7px 10px;
    background-color: #e6e8ea;
    /*border-radius: 4px;*/
    color: white;
    cursor: pointer;
    font-size: 13px;
    margin-bottom: 5px;
  }

  /* 주소록 버튼 */
  .inputWrap {
    position: relative;
    height: 30px;
    display: inline-block;
  }

  .inputWrap input {
    padding-right: 30px;
    /*height: inherit;*/
  }

  .inputWrap .btnClear {
    position: absolute;
    top: 6px;
    right: -65px;
    height: 38px;
    width: 75px;
    background-size: 50%;
    border: none;
    outline: none;
    cursor: pointer;
    /*border-radius: 8px;*/
    font-size: 13px;
    background: #e6e8ea;
  }

  .emailsDiv {
    position: absolute;
    top: 5px;
    height: 31px;
  }

  /* 버튼 */
  a.button {
    display: block;
    width: 65px;
    padding: 0;
    margin: 10px 10px 10px 10px;
    text-align: center;
    line-height: 35px;
    color: white;
    background: #343a40;
    box-shadow: #343a40 0 0px 0px 2px inset;
    font-size: 13px;
  }

  a.button:hover {
    color: white;
    box-shadow: #555 0 0px 0px 40px inset;
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

<script src="/js/common.js"></script>
<script src="/WEB-INF/views/mail/addrBook.jsp"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

  // 이메일형식 검증
  function CheckEmail(obj){
    var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    if(!reg_email.test(obj)) {
      return false;
    } else {
      return true;
    }
  }
  function fn_test() {

    var test = new Array();

    // 이메일 하나라도 지정, 제목 지정
    $("input[name=mailUserId]").each(function(index, item){
      var obj = $(item).val();
      test.push(obj);
    });
    var len = test.length;
    console.log(len);
    if(len == 0){
      alert("받는사람이 지정되지 않았습니다.");
      return;
    } else if($("#mailSj").val() == "" || $("#mailSj").val() == null) {
      alert("제목을 입력해주세요.");
      return false;
    }

  }

  var list = new Array(); // 여러명 담을 배열
  var fileNo = 0;
  var filesArr = new Array(); // 파일이 저장될 배열

  // 첨부파일 추가 (cc:https://purecho.tistory.com/68)
  function fn_addFile(obj){
    var maxFileCnt = 5;   // 첨부파일 최대 개수
    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

    // 첨부파일 개수 확인
    if (curFileCnt > remainFileCnt) {
      alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    } else {
      for (const file of obj.files) {
        // 첨부파일 검증
        if(validation(file)) {
          // 파일 배열에 담기
          var reader = new FileReader();
          reader.onload = function () {
            filesArr.push(file);
          };
          reader.readAsDataURL(file);

          // 목록 추가
          var htmlData = '';
          htmlData += '<div id="file' + fileNo + '" class="filebox">';
          htmlData += '   <p class="name">' + file.name + '</p>';
          htmlData += '   <a class="btn" onclick="fn_deleteFile(' + fileNo + ');">x</a>';
          htmlData += '</div>';
          $('.file-list').append(htmlData);
          fileNo++;
      } else {
          continue;
        }
      }
    }
    // 초기화 -> '선택된 파일 없음' 유지 위함
    document.querySelector("input[type=file]").value = "";
  }

  // 첨부파일 검증
  function validation(obj){
    var fileTypes = ['text/plain','application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    if (obj.name.length > 100) {
      alert("파일명이 100자 이상인 파일은 제외되었습니다.");
      return false;
    } else if (obj.size > (100 * 1024 * 1024)) {
      alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
      return false;
    } else if (obj.name.lastIndexOf('.') == -1) {
      alert("확장자가 없는 파일은 제외되었습니다.");
      return false;
    }/* else if (!fileTypes.includes(obj.type)) { // 파일타입에 있는것들만 가능
      alert("첨부가 불가능한 파일은 제외되었습니다.");
      return false;
    }*/ else {
      return true;
    }
  }

  function fn_deleteFile(fileNo) {
    document.querySelector("#file" + fileNo).remove();
    //filesArr[num].is_delete = true; // ??? 무슨뜻
  }

  // 메일 보내기
  function fn_sendMail() {

    var valArr = new Array();
    $("input[name=mailUserId]").each(function(index, item){
      var obj = $(item).val();
      valArr.push(obj);
    });
    var len = valArr.length;
    console.log(len);
    if(len == 0){
      alert("받는사람이 지정되지 않았습니다.");
      return;
    } else if($("#mailSj").val() == "" || $("#mailSj").val() == null) {
      alert("제목을 입력해주세요.");
      return false;
    }

    var formData = new FormData(); // input 'file'로 ajax 보낼 시 formData 형태로 보내야함
    var mailSendUserId = $("#mailSendUserId").val(); // 차피 고정되어있는데 굳이 ? -> 실전에서는 로그인한 사람의 세션 가져와서
    //var mailUserId = $("#mailUserId").val();
    var mailSj = $("#mailSj").val();
    var mailCn = $("#mailCn").val();
    var arrayCount = filesArr.length;

    formData.append("mailSendUserId", mailSendUserId); // 키 => dto 이름으로 맞춤
    //formData.append("mailUserId", mailUserId);
    formData.append("mailSj", mailSj);
    formData.append("mailCn", mailCn);

    // name = mailUserId에 있는 value를 가져와서 list에 넣고, list를 mailUserIdList라는 list타입의 entity에 넣어서 보낸다.
    $("input[name=mailUserId]").each(function(index, item){
      list.push($(item).val());
    });

    var mailUserIdListLen = list.length;
    for(var i=0; i<mailUserIdListLen; i++){
      formData.append("mailUserIdList", list[i]);
    }
    for(var i=0; i<arrayCount; i++){
      formData.append("multipartFile", filesArr[i]); // key => dto의 multipartFile와 매칭
    }

    $.ajax({
      url: "/mjcompany.co.kr/mail.do"
      , type: "post"
      , data: formData
      , contentType : false             // * 중요 *
      , processData : false             // * 중요 *
      , enctype : 'multipart/form-data' // * 중요 *
      , error : function(request, status, error){
        alert('통신실패!' + error);
      }, success : function(result) {
        // 검증이 필요할수도.. 메일 실패했는데 뜨니까ㅠ
        location.href = "/mjcompany.co.kr/mail/mailSuccess.do";
      }
    });
  }

  // 주소록 버튼
  function fn_addrBook() {
    var openUrl = "/mjcompany.co.kr/mail/addrBook.do";
    var option = "width = 1000, height = 650, top = 100, left = 200, location = no";

    window.open(openUrl, "addrBook", option);
  }

  // 이메일 뿌리기
  function fn_goMailPage(params) {
    var paramsLen = params.length;

    $("#emails").empty();

    for(var i=0; i<paramsLen; i++) {
      console.log(params[i]);
      // emails 배열을 html로 뿌리기
      var htmlData = '';
      htmlData += '<div id="email'+ i +'" style="display: inline-block; background-color: #f0f0f0; border-radius: 10px; margin-top: 1px; margin-left: 6px;">';
      htmlData += '<p style="padding: 4px 0px 4px 10px; font-size: 13px; display: inline-block; margin: 0; color: black;">';
      htmlData += params[i];
      htmlData += '</p>';
      htmlData += '<a class="btn" onclick="fn_deleteEmail('+ i +');">x</a>';
      htmlData += '<input type="hidden" id="mailUserId'+ i +'" name="mailUserId" value="'+ params[i] +'"/>';
      htmlData += '</div>';
      $("#emails").append(htmlData);
    }
  }

  function fn_deleteEmail(emailNo) {
    $("#email" + emailNo).remove();
  }

  // 로그아웃
  function fn_logout() {
    window.location.href = '/mjcompany.co.kr/logout.do';
  }

</script>