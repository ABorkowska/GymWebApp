<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>IRON Gym</title>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700&display=swap"/>"
          rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i&display=swap"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="http://cdn.bootstrapmb.com/bootstrap/4.3.1/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/lightcase.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/swiper.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
</head>

<body>
<!-- Header Section Stars Here -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
<!-- Fixed Sidebar Section Ends Here -->
<!-- Header Section Stars Here -->
<header>
    <div class="header-wrapper">
        <div class="logo"><a href=""><img src="<c:url value="/static/images/logo/logo.png"/>" alt="logo"></a>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="header-bottom-wrapper">
                <div class="logo d-xl-none">
                    <a href=""><img src="<c:url value="/static/images/logo/logo-tt.PNG"/>" alt="logo"></a>
                </div>
                <ul class="menu">
                    <li class="menu-item"><a href="<c:url value="/home"/>" class="menu-item-link">HOME</a></li></li>
                    <li class="menu-item"><a href="<c:url value="/admin/schedule"/>" class="menu-item-link">Grafik</a></li>
                    <li class="menu-item"><a href="<c:url value="/admin/schedule/register"/>" class="menu-item-link">Zapisy</a></li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Instruktorzy</a></li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Plany</a></li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Treningi</a></li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">ADMIN</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="<c:url value="/gym/login"/>" class="menu-item-link">Logowanie</a></li>
                            <li class="menu-item"><a href="<c:url value="/gym/register"/>" class="menu-item-link">Rejestracja</a></li>
                            <li class="menu-item"><a href="four-not-four.html" class="menu-item-link">404</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header><!-- Header Section Ends Here -->
<!-- Page Header Starts Here -->

