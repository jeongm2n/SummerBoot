<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Wash Boot</title>
    <jsp:include page="/WEB-INF/common.jsp" />
    <style>
        button{background-color: #FD8008; color: #fff; border-color: #FD8008;}
    </style>
</head>
<body>

<!-- Top -->
<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>Wash Boot에 오신걸 환영합니다!
<%--                로그인시 '아이디님'표시하기--%>
            </div>
        </div>
    </div>
</nav>

<!-- Nav -->
<nav class="navbar navbar-expand-lg navbar-light shadow">
    <div class="container d-flex justify-content-between align-items-center">

        <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
            Wash Boot
        </a>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div class="flex-fill">
                <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false">지점</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">서울</a></li>
                            <li><a class="dropdown-item" href="#">경기 군포</a></li>
                            <li><a class="dropdown-item" href="#">경기 평택</a></li>
                            <li><a class="dropdown-item" href="#">대구</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">예약</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shop.html">세차용품</a>
                    </li>
                </ul>
            </div>
            <div>
                <button type="button">로그인
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                    <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                </svg>
                </button>
            </div>
            <!-- 장바구니, 예약현황 : 로그인 이후 변경되게하기 -->
<%--            <div class="navbar align-self-center d-flex">--%>
<%--                <a class="nav-icon position-relative text-decoration-none" href="#">--%>
<%--                    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>--%>
<%--                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>--%>
<%--                </a>--%>
<%--                <a class="nav-icon position-relative text-decoration-none" href="#">--%>
<%--                    <i class="fa fa-fw fa-user text-dark mr-3"></i>--%>
<%--                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>--%>
<%--                </a>--%>
<%--            </div>--%>
        </div>

    </div>
</nav>
<!-- Close Nav -->

</body>
</html>