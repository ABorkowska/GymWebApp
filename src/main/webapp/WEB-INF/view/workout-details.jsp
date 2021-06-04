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
            <div class="breadcrumb-title"><h6 class="title">Trening</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Home</a></li>
                <li><a href="<c:url value="/gym/dashboard"/>">Mój IRON</a></li>
                <li>Moje treningi</li>
            </ul>
        </div>
    </div>
</div>
<div class="padding-bottom padding-top bg_img" data-background="/static/images/banner/wall.jpg">
    <div class="container">
        <div class="login-wrapper">
            <h3 class="title">TWÓJ TRENING</h3>

            <form:form method="post" action="/gym/workout/delete/${workout.id}" class="registration-form"
                       modelAttribute="workout" style="color: black"><br>
            <div class="form-group"><h4>${workout.name}</h4>
                <br><br><b>
                <div class="form-group"> CEL TRENINGOWY : ${workout.type}</div>
                <div class="p-t-15"><b></b>
                </div>
                <br>
                <p><b>Ilość serii: ${workout.sets}</p>
                <p><b>Ilość powtórzeń: ${workout.reps}</p>
                <br>
                <div class="form-group">ĆWICZENIA</div>
                <ul>
                    <c:forEach var="exercise" items="${workout.exercises}">
                        <li>${exercise.name}</li>
                        <p><i>Ćwiczone partie: ${exercise.muscleGroup} / potrzebny sprzęt: ${exercise.equipment}</i></p>
                    </c:forEach>
                </ul>
            </div>
            <br>
            <div class="col-lg-6">
                <input type="submit" class="register-btn" value="Usuń trening"/>
                <div class="form-row p-t-10">
                </div>
            </div>
        </div>
        </form:form>
    </div>
</div>

</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>
