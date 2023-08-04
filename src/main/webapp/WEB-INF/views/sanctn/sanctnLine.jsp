<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>결재선</title>
</head>
<body>

<div class="row" style="margin-left: 20px; margin-top: 20px;">
    <div class="col-md-6">
        <h3 class="mt-1" style="font-family: 'Pretendard-Regular';">결재선 설정</h3>
    </div>
</div>


<table class="type07" style="margin-left: 20px; width: 200px;">
    <tbody style="border: 1px solid #ececec;">
        <tr>
            <th scope="cols" style="vertical-align: middle;">목록</th>
        </tr>

        <!-- 단일 -->
        <c:forEach items="${singleSanctnList}" var="r">
            <tr>
                <td style="vertical-align: middle;">
                    <p style="font-weight: bold;">
                            ${r.rowDeptNm}
                        <input type="hidden" name="rowDeptNm" value="${r.rowDeptNm}">
                    </p>
                    <c:forEach items="${r.rowSingleSanctns}" var="rr">
                        <ul>
                            <li style="text-indent: 10px;">
                                <input type="checkbox" name="mbrCd" value="${rr.mbrCd}">
                                    ${rr.mbrNm}
                                <span style="color: #4040406b; font-size: 13px;">${rr.mbrRankNm}</span>
                            </li>
                        </ul>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>

        <c:forEach items="${sanctnList}" var="r">
            <c:if test="${!empty r.highDeptCd}">
                <tr>
                    <td style="vertical-align: middle;">
                        <p style="font-weight: bold;">${r.highDeptNm}</p>
                        <c:forEach items="${r.rowSanctns}" var="rr">
                            <p style="font-weight: bold; text-indent: 10px; margin-top: 2px;">
                                    ${rr.rowDeptNm}
                                <input type="hidden" name="rowDeptNm" value="${rr.rowDeptNm}">
                            </p>

                            <c:forEach items="${rr.rowSanctns}" var="rrr">
                                <ul>
                                    <li style="text-indent: 20px;">
                                        <input type="checkbox" name="mbrCd" value="${rrr.mbrCd}">
                                            ${rrr.mbrNm}
                                        <span style="color: #4040406b; font-size: 13px;">${rrr.mbrRankNm}</span>
                                    </li>
                                </ul>
                            </c:forEach>
                        </c:forEach>
                    </td>
                </tr>
            </c:if>
        </c:forEach>
    </tbody>
</table>

<button type="button" class="sanctnBtn" onclick="fn_sanctn();" style="position: absolute; left: 300px; top: 280px; font-family: 'Pretendard-Regular', sans-serif;">결재 <span style="color: #4040406b;"> > </span></button>
<button type="button" class="sanctnBtn" onclick="fn_sanctnCC();" style="position: absolute; left: 300px; top: 325px; font-family: 'Pretendard-Regular', sans-serif;">참조 <span style="color: #4040406b;"> > </span></button>

<div style="position: absolute; left: 450px; top: 70px; width: 470px; height: 434px; border: 1px solid #ececec; "></div>

<table class="type07" style="position: absolute; left: 450px; top: 70px; width: 470px;">
    <tr>
        <th style="vertical-align: middle; text-align: center; width: 20px; border: 1px solid #ececec;">1</th>
        <th style="height: 62px; vertical-align: middle; text-align: left; border: #ececec solid 1px ; padding-left: 30px;">
            ${memberLogin.mbrNm}
            <input type="hidden" id="sanctnDraftId" name="sanctnDraftId" value="${memberLogin.mbrId}">
            <input type="hidden" id="sanctnDraftNm" name="sanctnDraftNm" value="${memberLogin.mbrNm}">
                <input type="hidden" id="sanctnDraftRankNm" name="sanctnDraftRankNm" value="${memberLogin.mbrRankNm}">
            <span style="color: #4040406b; font-size: 13px;">${memberLogin.mbrRankNm}</span>
        </th>
    </tr>
    <tbody id="sanctnTbody" style="border: 1px solid #ececec;">
    </tbody>
</table>

<div style="position: absolute; left: 450px; top: 499px;">
    <h4 style="margin-bottom: 10px;"> 참조 </h4>
    <div id="ccDiv" style="border: 1px solid #ececec; width: 470px; height: 60px;">
        <%--<div style="vertical-align: middle; background: #f8f8f8; width: 100px; height: 50px; font-size: 14px; align-items: center; margin: 5px 5px 5px 5px; padding-left: 10px; display: flex; float: left;">
            김미주(주임)
        </div>--%>
    </div>
</div>

<a class="btn_gray" href="javascript:fn_confirm();"><span class="txt_white" style="font-family: 'Pretendard-Regular', sans-serif;">확인</span></a>

<input type="hidden" id="sessionMbrCd" name="sessionMbrCd" value="${memberLogin.mbrCd}">

</body>
<script src="/js/main.js"></script><style type="text/css" data-typed-js-css="true">

    @font-face {
        font-family: 'Pretendard-Regular';
        src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
        font-weight: 400;
        font-style: normal;
    }

    body {
        font-family: "Pretendard-Regular", sans-serif;
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
        padding: 5px;
        /*font-weight: bold;*/
        vertical-align: top;
        color: #fff;
        font-size: 13px;
    }
    table.type07 tbody th {
        width: 150px;
        padding: 5px;
        font-weight: normal;
        vertical-align: top;
        /*border: 1px solid #ececec;*/
        background: #f8f8f8;
        text-align: center;
        font-size: 15px;
    }
    table.type07 td {
        width: 150px;
        padding: 5px;
        vertical-align: top;
        /*border-bottom: 1px solid #ececec;
        border-right: 1px solid #ececec;
        border-top: 1px solid #ececec;
        border-left: 1px solid #ececec;*/
        text-align: left;
        font-size: 14px;
    }

    ul {
        padding-left: 0px;
        margin-top: 5px;
        margin-bottom: 5px;
    }

    ul li {
        list-style: none;
    }

    p {
        margin-bottom: 0;
    }

    .sanctnBtn {
        background: white;
        border: 2px solid #ececec;
        padding: 5px 20px 5px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    .txt_white {
        font-size: 14px;
        font-weight: bold;
        color: #fff;
    }

    .btn_gray {
        -moz-box-shadow: inset 0px 1px 0px 0px #ffffff;
        -webkit-box-shadow: inset 0px 1px 0px 0px #828282;
        box-shadow: inset 0px 1px 0px 0px #828282;
        background: -webkit-gradient( linear, left top, left bottom, color-stop(0.05, #828282), color-stop(1, #828282) );
        background: -moz-linear-gradient( center top, #fff 5%, #fff 100% );
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff', endColorstr='#fff');
        background-color: #fff;
        -webkit-border-top-left-radius: 3px;
        -moz-border-radius-topleft: 3px;
        border-top-left-radius: 3px;
        -webkit-border-top-right-radius: 3px;
        -moz-border-radius-topright: 3px;
        border-top-right-radius: 3px;
        -webkit-border-bottom-right-radius: 3px;
        -moz-border-radius-bottomright: 3px;
        border-bottom-right-radius: 3px;
        -webkit-border-bottom-left-radius: 3px;
        -moz-border-radius-bottomleft: 3px;
        border-bottom-left-radius: 3px;
        text-indent: 0;
        border: 1px solid #828282;
        display: inline-block;

        width: 70px;
        height: 30px;
        line-height: 30px;
        text-decoration: none;
        text-align: center;

        position: absolute;
        left: 50%;
        margin-top: 20px;
    }

</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">

    // 결재
    function fn_sanctn() {

        // 중복체크
        var chkArr = [];
        $('input:checkbox[name=mbrCd]:checked').each(function(){
            var chk = $(this).val();
            chkArr.push(chk);
        });
        var dbchkArr = [];
        $('input:hidden[name=sanctnMbrCd]').each(function(){
            var dbchk = $(this).val();
            dbchkArr.push(dbchk);
        });
        var comparison = chkArr.filter(x=> dbchkArr.includes(x));
        if(comparison.length != 0) {
            alert("이미 포함된 결재자는 중복으로 설정할 수 없습니다.");
            return;
        }

        // 자기자신은 결재자로 등록할 수 없음
        var sessionCd = $("#sessionMbrCd").val();
        var selfArr = [];
        $('input:checkbox[name=mbrCd]:checked').each(function(){
            var self = $(this).val();
            selfArr.push(self);
        });
        if(selfArr.includes(sessionCd) == true) {
            alert("이미 포함된 결재자는 중복으로 설정할 수 없습니다.");
            return;
        }

        // 정렬순번
        var sanctnSn = 1;
        var trLen = $("#sanctnTbody").find("tr").length;
        console.log(trLen);
        if (trLen > 0) {
            sanctnSn = trLen + 1;
        }

        // 체크된 사람의 mbrCd 가져와서 쿼리 돌리기
        var mbrCdArr = [];
        $('input:checkbox[name=mbrCd]:checked').each(function(){
            var mbrCd = $(this).val();
            mbrCdArr.push(mbrCd);
        });
        console.log(mbrCdArr);

        // mbrCd 보내서 데이터 얻어오기
        var param = { "mbrCdArr" : mbrCdArr }; // controller에서 받는 key값
        $.ajax({
            url: "/mjcompany.co.kr/ajaxMbrCd.do"
            , type: "post"
            , data: JSON.stringify(param)
            , contentType : "application/json"
            , error : function(request, status, error){
                alert('통신실패!' + error);
            }, success : function(list) {
                $.each(list, function(idx, val) {
                    sanctnSn ++;
                    var htmlData = '<tr>';
                    htmlData += '<td style="vertical-align: middle; text-align: center; width: 20px; border-right: 1px solid #ececec; border-bottom: 1px solid #ececec; ">';
                    htmlData += sanctnSn
                    htmlData += '</td>';
                    htmlData += '<td style="height: 62px; vertical-align: middle; padding-left: 30px; border-bottom: 1px solid #ececec;">';
                    htmlData += val.mbrNm;
                    htmlData += '<span style="color: #4040406b; font-size: 13px; margin-left: 5px;">'+ val.mbrRankNm +'</span>';
                    htmlData += '<input type="hidden" id="sanctnMbrId" name="sanctnMbrId" value="'+ val.mbrId +'">';
                    htmlData += '<input type="hidden" id="sanctnMbrCd" name="sanctnMbrCd" value="'+ val.mbrCd +'">';
                    htmlData += '<input type="hidden" id="sanctnMbrNm" name="sanctnMbrNm" value="'+ val.mbrNm +'">';
                    htmlData += '<input type="hidden" id="sanctnMbrRankNm" name="sanctnMbrRankNm" value="'+ val.mbrRankNm +'">';
                    htmlData += '</td>';
                    htmlData += '</tr>';
                    $("#sanctnTbody").append(htmlData);
                }) // each end
            } //success end
        });

        // 체크박스 해제
        $('input:checkbox[name=mbrCd]').prop("checked", false);

    }

    // 참조
    function fn_sanctnCC() {

        // 유효성검사 패스(결재자로 등록된 사람도 겹치면 체크해야됨)

        var mbrCdArr = [];
        $('input:checkbox[name=mbrCd]:checked').each(function(){
            var mbrCd = $(this).val();
            mbrCdArr.push(mbrCd);
        });

        // mbrCd 보내서 데이터 얻어오기
        var param = { "mbrCdArr" : mbrCdArr }; // controller에서 받는 key값
        $.ajax({
            url: "/mjcompany.co.kr/ajaxMbrCd.do"
            , type: "post"
            , data: JSON.stringify(param)
            , contentType : "application/json"
            , error : function(request, status, error){
                alert('통신실패!' + error);
            }, success : function(list) {
                $.each(list, function(idx, val) {
                    var htmlData = '';
                    htmlData += '<div style="vertical-align: middle; background: #f8f8f8; width: 100px; height: 50px; font-size: 14px; align-items: center; margin: 5px 5px 5px 5px; padding-left: 10px; display: flex; float: left;">';
                    htmlData += val.mbrNm;
                    htmlData += '<span style="color: #4040406b; font-size: 13px; margin-left: 5px;">'+ val.mbrRankNm +'</span>';
                    htmlData += '<input type="hidden" id="ccMbrId" name="ccMbrId" value="'+ val.mbrId +'">';
                    htmlData += '<input type="hidden" id="ccMbrCd" name="ccMbrCd" value="'+ val.mbrCd +'">';
                    htmlData += '<input type="hidden" id="ccMbrNm" name="ccMbrNm" value="'+ val.mbrNm +'">';
                    htmlData += '<input type="hidden" id="ccMbrRankNm" name="ccMbrRankNm" value="'+ val.mbrRankNm +'">';
                    htmlData += '</div>';
                    $("#ccDiv").append(htmlData);
                }) // each end
            } //success end
        });

        // 체크박스 해제
        $('input:checkbox[name=mbrCd]').prop("checked", false);
    }

    // 확인
    function fn_confirm() {

        // 결재자
        // -> hidden값 3개 모두 sanctn.jsp에 가져가야함
        // 방법1. 자바스크립트 for문 돌려서 각각의 배열 생성 후 보내기
        // 방법2. 생각중...

        // sanctnDraftId, sanctnDraftNm 넘기기
        var sanctnDraftId = $("#sanctnDraftId").val();
        var sanctnDraftNm = $("#sanctnDraftNm").val();
        var sanctnDraftRankNm = $("#sanctnDraftRankNm").val();
        console.log(sanctnDraftNm);


        var sanctnMbrCd = [];
        $('input:hidden[name=sanctnMbrCd]').each(function(){
            var mbrCd = $(this).val();
            sanctnMbrCd.push(mbrCd);
        });
        var sanctnMbrId = [];
        $('input:hidden[name=sanctnMbrId]').each(function(){
            var mbrId = $(this).val();
            sanctnMbrId.push(mbrId);
        });
        var sanctnMbrNm = [];
        $('input:hidden[name=sanctnMbrNm]').each(function(){
            var mbrNm = $(this).val();
            sanctnMbrNm.push(mbrNm);
        });
        var sanctnMbrRankNm = [];
        $('input:hidden[name=sanctnMbrRankNm]').each(function(){
            var mbrRankNm = $(this).val();
            sanctnMbrRankNm.push(mbrRankNm);
        });

        // 참조자
        var ccMbrCd = [];
        $('input:hidden[name=ccMbrCd]').each(function(){
            var mbrCd = $(this).val();
            ccMbrCd.push(mbrCd);
        });
        var ccMbrId = [];
        $('input:hidden[name=ccMbrId]').each(function(){
            var mbrId = $(this).val();
            ccMbrId.push(mbrId);
        });
        var ccMbrNm = [];
        $('input:hidden[name=ccMbrNm]').each(function(){
            var mbrNm = $(this).val();
            ccMbrNm.push(mbrNm);
        });
        var ccMbrRankNm = [];
        $('input:hidden[name=ccMbrRankNm]').each(function(){
            var mbrRankNm = $(this).val();
            ccMbrRankNm.push(mbrRankNm);
        });

        // 함수 만들기 : new Function('키' , '함수명(파라미터명)')(값)
        new Function("sanctnMbrCd", "sanctnMbrNm","sanctnMbrId", "sanctnMbrRankNm", "ccMbrCd", "ccMbrNm", "ccMbrId", "ccMbrRankNm", "sanctnDraftId", "sanctnDraftNm", "sanctnDraftRankNm", "return opener.fn_goSanctn(sanctnMbrCd, sanctnMbrNm, sanctnMbrId, sanctnMbrRankNm, ccMbrCd, ccMbrNm, ccMbrId, ccMbrRankNm, sanctnDraftId, sanctnDraftNm, sanctnDraftRankNm)")
        (sanctnMbrCd, sanctnMbrNm, sanctnMbrId, sanctnMbrRankNm, ccMbrCd, ccMbrNm, ccMbrId, ccMbrRankNm, sanctnDraftId, sanctnDraftNm, sanctnDraftRankNm);
        window.close();

    }

</script>
</html>
