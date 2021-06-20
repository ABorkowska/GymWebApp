<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="stylesheet" href="<c:url value="http://cdn.bootstrapmb.com/bootstrap/4.3.1/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/lightcase.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/swiper.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
    <link rel="stylesheet" href="<c:url value="http://www.w3ii.com/lib/w3.css"/>">
</head>
<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
<!-- Banner Section Starts Here -->
<section class="banner-section bg_img" data-background="./static/images/home/barbell.jpg">
    <div class="container">
        <div class="banner-content-container">
            <div class="banner-content">
                <h4 class="sub-title">
                    <span class="shape-wrapper"><span class="shape"></span>Idealne miejsce na Twój trening<span class="shape"></span></span></h4>
                <h5 class="title"> z IRON do celu... Podejmij wyzwanie!</h5>
            </div>
        </div>
    </div>
</section>
<div class="building-outer">
    <div class="container">
        <div class="building-list">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="building-box">
                        <figure><img src=<c:out value="/static/images/home/t.PNG"/>?" alt=""></figure>
                        <h4>TRENUJ Z NAMI</h4>
                        <p>Zapraszamy na zajęcia grupowe z naszymi instruktorami</p><a href="<c:out value="/gym/schedule"/>" class="btn">Sczegóły</a></div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="building-box">
                        <figure><img src=<c:out value="/static/images/home/tr.PNG"/>?" alt=""></figure>
                        <h4>TRENUJ Z INSTRUKTOREM</h4>
                        <p>Skorzystaj z oferty indywidualnych planów treningowych </p><a href="<c:out value="/gym/plans"/>" class="btn">Sczegóły</a></div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="building-box">
                        <figure><img src=<c:out value="/static/images/home/i.PNG"/>?" alt=""></figure>
                        <h4>TRENUJ INDYWIDUALNIE</h4>
                        <p>Stwórz własny trening według swoich preferencji</p><a href="<c:out value="/gym/workout/create"/>" class="btn">Sczegóły</a></div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>
