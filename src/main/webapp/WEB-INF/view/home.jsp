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
                <h5 class="title">build your body<br> with IRON</h5>
<%--                <p></p>--%>
<%--                <div class="button-group">--%>
<%--                    <a href="#" class="custom-button">read more</a>--%>
<%--                    <a href="#" class="custom-button active">contact us</a>--%>
<%--                </div>--%>
            </div>
        </div>
<%--        <div class="banner-thumb"><img src=".static/images/banner/01.jpg" alt="banner-thumb"></div>--%>
    </div>
</section>
<div class="building-outer">
    <div class="container">
        <div class="building-list">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="building-box">
                        <figure><img src=<c:out value="/static/images/build1.png"/>?" alt=""></figure>
                        <h4>TRENUJ Z NAMI</h4>
                        <p>Zapraszamy na zajęcia grupowe z naszymi instruktorami</p><a href="<c:out value="/gym/schedule"/>" class="btn">Sczegóły</a></div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="building-box">
                        <figure><img src=<c:out value="/static/images/build3.png"/>?" alt=""></figure>
                        <h4>TRENUJ Z INSTRUKTOREM</h4>
                        <p>Skorzystaj z oferty planów treningowych z trenerem personalnym </p><a href="<c:out value="/gym/plans"/>" class="btn">Sczegóły</a></div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="building-box">
                        <figure><img src=<c:out value="/static/images/build2.png"/>?" alt=""></figure>
                        <h4>TRENUJ INDYWIDUALNIE</h4>
                        <p>Stwórz własny trening według swoich preferencji</p><a href="<c:out value="/gym/workout"/>" class="btn">Sczegóły</a></div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>

<!-- JavaScript File Links -->
<%--<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/modernizr-3.6.0.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/plugins.js"/>"></script>--%>
<%--<script src="<c:url value="/http://cdn.bootstrapmb.com/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/isotope.pkgd.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/swiper.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/waypoint.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/counterup.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/lightcase.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/wow.min.js"/>"></script>--%>
<%--<script src="<c:url value="/static/js/main.js"/>"></script>--%>
<%--</body>--%>
<%--</html>--%>