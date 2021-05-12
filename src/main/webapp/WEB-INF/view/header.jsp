<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>IRON Gym</title>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700&display=swap"/>" rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i&display=swap"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="http://cdn.bootstrapmb.com/bootstrap/4.3.1/css/bootstrap.min.css"/>"
    <link rel="stylesheet" href="<c:url value="/static/css/all.min.css"/>"
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>"
    <link rel="stylesheet" href="<c:url value="/static/css/lightcase.css"/>"
    <link rel="stylesheet" href="<c:url value="/static/css/flaticon.css"/>"
    <link rel="stylesheet" href="<c:url value="/static/css/swiper.min.css"/>"
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>"
</head>

<body>
<!-- Header Section Stars Here -->
<%--<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>--%>
<!-- Fixed Sidebar Section Ends Here -->
<!-- Header Section Stars Here -->
<header>
    <div class="header-top d-none d-xl-block">
        <div class="container">
            <div class="header-wrapper">
                <div class="logo"><a href=""><img src="<c:url value="/static/images/logo/logo.png"/>" alt="logo"></a>
                </div>
                <div class="header-info">
                    <div class="info-item">
                        <div class="info-thumb"><i class="flaticon-placeholder"></i></div>
                        <div class="info-content">
                            <h6 class="title">Adres</h6><span>IRON Gym</span>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-thumb"><i class="flaticon-email"></i></div>
                        <div class="info-content"><h6 class="title">E-Mail</h6>
                            <span>info@irongym.com</span></div>
                    </div>
                    <div class="info-item">
                        <div class="info-thumb"><i class="flaticon-call"></i></div>
                        <div class="info-content"><h6 class="title">Tel.</h6><span>000 000 000</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="header-bottom-wrapper">
                <div class="logo d-xl-none"><a href="index.html"><img src="assets/images/logo/logo-two.png" alt="logo"></a>
                </div>
                <div class="header-bar d-xl-none"><span></span><span></span><span></span></div>
                <ul class="menu">
                    <li class="menu-item"><a href="index.html" class="menu-item-link">Home</a></li>
                    <li class="menu-item"><a href="about.html" class="menu-item-link">About</a></li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Class</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="classes.html" class="menu-item-link">Class Page</a></li>
                            <li class="menu-item"><a href="class-details.html" class="menu-item-link">Class Details</a>
                            </li>
                            <li class="menu-item"><a href="classes-schedule.html" class="menu-item-link">Class
                                Schedule</a></li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Trainer</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="trainers.html" class="menu-item-link">Trainer</a></li>
                            <li class="menu-item"><a href="trainer-details.html" class="menu-item-link">Trainer
                                Details</a></li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Blog</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="blog.html" class="menu-item-link">BLog</a></li>
                            <li class="menu-item"><a href="blog-details.html" class="menu-item-link">BLog Details</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="#0" class="menu-item-link">Pages</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="#0" class="menu-item-link">Login</a></li>
                            <li class="menu-item"><a href="registration.html" class="menu-item-link">Registration</a>
                            </li>
                            <li class="menu-item"><a href="four-not-four.html" class="menu-item-link">404</a></li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="contact.html" class="menu-item-link">Contact</a></li>
                    <li class="menu-item"><a href="login.html" class="header-button">Get Started</a></li>
                </ul>
                <div class="header-button-wrapper d-none d-xl-inline-flex"><a class="header-button" href="login.html">Get
                    Started</a></div>
            </div>
        </div>
    </div>
</header><!-- Header Section Ends Here -->
<!-- Page Header Starts Here -->

