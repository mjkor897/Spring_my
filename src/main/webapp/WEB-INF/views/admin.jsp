<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />

<div>
    <ul>
        <div class="menu">
            <div style="padding: 10px 10px;">
            <h6 style="display: inline-block; margin-right: 10px;">CEO</h6></div>
            <a class="ml-auto" data-toggle="collapse" href="#dateposted" role="button" aria-expanded="false" aria-controls="dateposted">
                <i class="fas fa-chevron-down"></i>
            </a>
            <ul class="hide">
                <div>메뉴1-1</div>
                <div>메뉴1-2</div>
                <div>메뉴1-3</div>
                <div>메뉴1-4</div>
                <div>메뉴1-5</div>
                <div>메뉴1-6</div>
            </ul>
        </div>

        <div class="menu">
            <h6 style="display: inline-block; margin-right: 10px;">경영지원팀</h6>
            <a class="ml-auto" data-toggle="collapse" href="#dateposted" role="button" aria-expanded="false" aria-controls="dateposted">
                <i class="fas fa-chevron-down"></i>
            </a>
            <ul class="hide">
                <div>메뉴2-1</div>
                <div>메뉴2-2</div>
                <div>메뉴2-3</div>
                <div>메뉴2-4</div>
                <div>메뉴2-5</div>
                <div>메뉴2-6</div>
            </ul>
        </div>
    </ul>
</div>


<c:forEach items="${selectDept}" var="r">
    <div style="border: #F1F1F1 1px solid; padding-top: 5px">
        <ul style="margin:0; padding:0;">
            <div class="menu" style="padding: 10px 10px;">
                <h6 style="display: inline-block; margin-bottom: 0;">${r.highDeptNm}</h6>
            </div>
            <a class="ml-auto" data-toggle="collapse" href="#dateposted" role="button" aria-expanded="false" aria-controls="dateposted">
                <i class="fas fa-chevron-down"></i>
            </a>
            <c:forEach items="${r.rowDepts}" var="rr">
                <ul class="hide">
                    <div class="mt-3">${rr.rowDeptNm}</div>
                </ul>
            </c:forEach>
        </ul>
    </div>
</c:forEach>


<input id="check-btn" type="checkbox" />
<label for="check-btn"><a class="ml-auto" data-toggle="collapse" href="#dateposted" role="button" aria-expanded="false" aria-controls="dateposted">
    <i class="fas fa-chevron-down"></i>
</a></label>
<ul class="menubars">
    <li>메뉴</li>
    <li>메뉴</li>
    <li>메뉴</li>
    <li>메뉴</li>
</ul>


<%--<ul>
    <li><a href="#">메뉴1</a></li>
    <li><a href="#">메뉴2</a></li>
    <li>
        <input type="checkbox" id="menuBtn">
        <label for="menuBtn" class="labelBtn" onclick="">메뉴3</label>
        <ul class="submenu">
            <li><a href="#">소메뉴1</a></li>
            <li><a href="#">소메뉴2</a></li>
            <li><a href="#">소메뉴3</a></li>
            <li><a href="#">소메뉴4</a></li>
        </ul>
    </li>
    <li><a href="#">메뉴4</a></li>
    <li><a href="#">메뉴5</a></li>
</ul>--%>


<%--<div style="background: #f1f1f1; position: absolute; left: 20%; width: 700px; height: 400px;">
    <table style="border: black solid 1px; border-collapse: collapse;">
        <colgroup>
            <col style="width: 15%;">
            <col style="width: 85%;">
        </colgroup>
        <tbody>
            <tr>
                <th>결재</th>
                <td>
                    <table style="border: black solid 1px; border-collapse: collapse;">
                        <colgroup>
                            <col>
                            <col>
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <td style="border: black solid 1px;">주임</td>
                                <td style="border: black solid 1px;">대리</td>
                                <td style="border: black solid 1px;">차장</td>
                                <td style="border: black solid 1px;">과장</td>
                                <td style="border: black solid 1px;">상무</td>
                            </tr>
                            <tr>
                                <td style="border: black solid 1px;">주임</td>
                                <td style="border: black solid 1px;">대리</td>
                                <td style="border: black solid 1px;">차장</td>
                                <td style="border: black solid 1px;">과장</td>
                                <td style="border: black solid 1px;">상무</td>
                            </tr>
                            <tr>
                                <td style="border: black solid 1px;">주임</td>
                                <td style="border: black solid 1px;">대리</td>
                                <td style="border: black solid 1px;">차장</td>
                                <td style="border: black solid 1px;">과장</td>
                                <td style="border: black solid 1px;">상무</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>

    <!-- 참조 -->
    <table style="border: black solid 1px; border-collapse: collapse;">
        <colgroup>
            <col style="width: 15%;">
            <col style="width: 85%;">
        </colgroup>
        <tbody>
            <tr>
                <th style="border: black solid 1px;">참조</th>
                <td style="border: black solid 1px;">김미주</td>
            </tr>
        </tbody>
    </table>
</div>--%>

<table class="type07">
    <tbody>
    <tr>
        <td style="border-right: #ececec solid 1px;">주임</td>
    </tr>
    <tr>
        <td style="border-right: #ececec solid 1px;">주임</td>
    </tr>
    <tr>
        <td style="border-right: #ececec solid 1px;">주임</td>
    </tr>
    </tbody>
</table>




<table class="type07">
    <tr>
        <th scope="cols" rowspan="3" style="vertical-align: middle;">타이틀</th>
        <td style="border-right: #ececec solid 1px;">주임</td>
        <td style="border-right: #ececec solid 1px;">대리</td>
        <td style="border-right: #ececec solid 1px;">상무</td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
    </tr>
    <tr>
        <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px;">이름</td>
        <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px;">이름</td>
        <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px;">이름</td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
    </tr>
    <tr>
        <td style="border-right: #ececec solid 1px;">이름</td>
        <td style="border-right: #ececec solid 1px;">이름</td>
        <td style="border-right: #ececec solid 1px;">이름</td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
    </tr>
    <tr>
        <th scope="row">참조</th>
        <td>김미주</td>
        <td>정유진</td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
        <td style="border-right: #ececec solid 1px;"> </td>
    </tr>
</table>

<table class="type07">
    <tr>
        <th scope="cols" style="vertical-align: middle;">타이틀</th>
        <th>1</th>
    </tr>
    <tr>
        <td style="height: 80px;width: 200px; vertical-align: middle; border-right: #ececec solid 1px;">이름</td>
        <td style="width: 200px;">1</td>
    </tr>
    <tr>
        <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px;">이름</td>
        <td>1</td>
    </tr>
    <tr>
        <td style="height: 80px; vertical-align: middle; border-right: #ececec solid 1px;">이름</td>
        <td>1</td>
    </tr>
</table>

<style>
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}

    #check-btn { display: none; }
    #check-btn:checked ~ .menubars { display: block; }
    .menubars { display: none; }


    table.type07 {
        border-collapse: collapse;
        text-align: left;
        line-height: 1.5;
        border: 1px solid #ececec;
        margin: 20px 10px;
    }
    table.type07 thead {
        border-right: 1px solid #ececec;
        border-left: 1px solid #ececec;
        background: #e7708d;
    }
    table.type07 thead th {
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        color: #fff;
    }
    table.type07 tbody th {
        width: 150px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #ececec;
        background: #fcf1f4;
        text-align: center;
    }
    table.type07 td {
        width: 100px;
        padding: 10px;
        vertical-align: top;
        border-bottom: 1px solid #ececec;
        text-align: center;
    }
</style>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul")

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
</script>



