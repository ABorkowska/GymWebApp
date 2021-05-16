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
                <span class="shape"></span>Zapisy na zajęcia<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Zapisy na zajęcia</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="./home"/>">Home</a></li>
                <li><a href="">Zajęcia</a></li>
                <li>Zapisy</li>
            </ul>
        </div>
    </div>
</div>

<!-- Class register -->
<section class="register-section classes-page spad">
    <div class="container">
        <div class="classes-page-text">
            <div class="row">
                <div class="col-lg-8">
                    <div class="register-text">
                        <div class="section-title">
                            <h2>Formularz zapisu</h2>
                            <p>Zapisujesz się na .... " </p>
                        </div>
                            <form:form action="/gym/schedule" method="post" modelAttribute="training" class="register-form">
                            <div class="row">
                                <p hidden><form:input path="id"/></p>
                                <p hidden><form:input path="day"/></p>
                                <p hidden><form:input path="hour"/></p>
                                <p hidden><form:input path="name"/></p>
                                <p hidden><form:input path="nameOfTrainer"/>
                                <div class="col-lg-6">
                                    <label for="login">Login*</label>
                                    <input type="text" id="login">
                                </div>
                                <div class="col-lg-6">
                                    <label for="phone">Numer telefonu*</label>
                                    <input type="text" id="phone">
                                </div>
                                <div class="col-lg-6">
                                    <button type="submit" class="register-btn">Wyślij</button>
                                </div>
                                <div class="col-lg-6">
                                    <button type="submit" class="register-btn-2">Wróć do grafiku</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="register-pic">
                        <img src="<c:url value="/static/images/feature/quote.PNG"/>" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>
