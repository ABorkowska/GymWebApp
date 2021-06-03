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
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/class-register.css"/>">
</head>
<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
<!-- Page Header-->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>Moje Treningi<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Stwórz trening</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Home</a></li>
                <li><a href="<c:url value="/gym/dashboard"/>">Mój IRON</a></li>
                <li>Moje treningi</li>
            </ul>
        </div>
    </div>
</div>
<div class="padding-bottom padding-top bg_img" data-background="/static/images/banner/stripes.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-8"><h3 class="title">Twoje treningi</h3><br>
                <div>
                     <div class="col-lg-10">
                        <div><b><c:forEach var="workout" items="${workouts}">
                            <h5>${workout.name}</h5><br>
                                <div class="p-t-15">
                                    <div class="form-group"> CEL TRENINGOWY: ${workout.type}</div>
                                    <p>Liczba serii: ${workout.sets}<p>
                                    <p>Liczba powtórzeń: ${workout.reps}<p>
                                    <p></p>
                                    <div class="form-group"> ĆWICZENIA</div><br>
                                    </c:forEach>
                                </div></b><br>
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li></li>
                                    <li></li>
                                </ul>
                                <div class="form-row p-t-10">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <aside class="sidebar">
                    <div class="widget widget-category widget-info"><h5 class="widget-title">Moje treningi</h5>
                        <ul>
                            <c:forEach var="workout" items="${workouts}">
                                <li><a href="#">${workout.name}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="widget widget-popular"><h5 class="widget-title">Polecane strony</h5>
                        <ul>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://www.budujmase.pl">Buduj Masę</a></h5></div>
                            </li>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://www.fabrykasily.pl/">Fabryka Siły</a></h5></div>
                            </li>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://sebastianchudziak.pl/encyklopedia/">Encyklopedia Siłowni</a></h5>
                                </div>
                            </li>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://www.sfd.pl/">SFD - ofcjalne strona sklepu</a></h5></div>
                            </li>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>

</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>
