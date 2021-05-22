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
    <link rel="stylesheet" href="<c:url value="/static/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
</head>

<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<!-- Page Header -->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>kup plan treningowy<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Formularz zakupu</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Home</a></li>
                <li><a href="<c:url value="/gym/plans"/>">Plany Treningowe</a></li>
                <li> Kup plan</li>
            </ul>
        </div>
    </div>
</div>

<!-- Buy plan form -->
<section class="register-section classes-page spad bg_img" data-background="/static/images/banner/banner-bg.jpg">
    <div class="container">
        <div class="card card-5 ">
            <div class="card-body">
                <div class="register-text">
                    <div class="section-title">
                        <h3>Wybrany plan: ${plan.name}</h3>
                        <br>
                        <p><b>Liczba treningów: ${plan.numberOfClasses}</b></p>
                        <p><b>Cena: ${plan.price}0 zł.</b></p>
                    </div>
                </div>
                <div class="section-title">
                    <form:form method="post" action="/gym/plans/${plan.id}" modelAttribute="plan" class="register-form">
                    <div class="col-lg-6">
                        <div class="form-row">
                            <div class="name"></div>
                            <div class="value">
                                <p hidden><form:input path="id"/></p>
                                <p hidden><form:input path="name"/></p>
                                <p hidden><form:input path="numberOfClasses"/></p>
                                <p hidden><form:input path="price"/></p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Instruktor<br>(opcjonalnie)</div>
                            <div class="value">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <form:select multiple="false" path="trainers">
                                        <form:option value="" label="Wybierz z listy"/>
                                        <form:options itemValue="id" itemLabel="name" name="trainer" items="${trainers}"/>
                                    </form:select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">Dołaczam plan żywieniowy (+150.00 zł)</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Tak
                                    <input type="radio" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Nie
                                    <input type="radio" checked="checked" name="exist">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <input type="submit" class="register-btn" value="Kupuję"/>
                        <div class="form-row p-t-10">
                            <input type="button" class="btn btn--radius-2" onclick="location.href='/gym/plans';"
                                   value="Powrót do oferty"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form:form>
</section>
</body>

<!-- Footer -->
<%@ include file="./footer.jsp" %>
<!-- /.footer -->

<!-- JavaScript File Links -->
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/static/js/modernizr-3.6.0.min.js"/>"></script>
<script src="<c:url value="/static/js/plugins.js"/>"></script>
<script src="<c:url value="/http://cdn.bootstrapmb.com/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/static/js/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/static/js/swiper.min.js"/>"></script>
<script src="<c:url value="/static/js/waypoint.js"/>"></script>
<script src="<c:url value="/static/js/counterup.min.js"/>"></script>
<script src="<c:url value="/static/js/lightcase.js"/>"></script>
<script src="<c:url value="/static/js/wow.min.js"/>"></script>
<script src="<c:url value="/static/js/main.js"/>"></script>
</body>
</html>