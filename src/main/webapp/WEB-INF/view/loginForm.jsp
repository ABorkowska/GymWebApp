<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<!-- Page Header -->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>logowanie<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">zaloguj się</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Home</a></li>
                <li>Logowanie</li>
            </ul>
        </div>
    </div>
</div>

<!-- Login Form -->
<section class="login-section padding-bottom padding-top bg_img" data-background="/static/images/home/gallery-2.jpg"
         no-repeat center center>
    <div class="container">
        <div class="login-wrapper"><h3 class="title">Zaloguj się</h3>
            <div class="other-social-links text-center">
                <a href="https://pl-pl.facebook.com/login/web/" class="facebook">Facebook</a>
                <a href="https://myaccount.google.com/" class="google">Google</a>
                <a href="https://twitter.com/?lang=pl" class="twitter">Twitter</a>
            </div>
            <div class="text-center"><h6 class="login-or">LUB</h6></div>
            <c:if test="${error!= null}">
                <div cssClass="error">${error}
            </c:if>
            <form:form action="/gym/login" method="post" modelAttribute="user" class="login-form">
            <div class="form-group">
                <form:input path="username" type="text" id="username" placeholder="Podaj login"/>
                <form:errors path="username" cssClass="error"/></div>
            <div class="form-group">
                <form:password path="password" id="password" placeholder="Podaj hasło"/>
                <form:errors path="password" cssClass="error"/></div>
            <div class="form-group">
                <input type="submit" value="Zaloguj">
            </div>
            <div class="sign-in-option">
                <a href="<c:url value="/gym/register"/>">Nie masz konta? Zarejestruj się</a>
            </div>
            <div class="form-group">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </div
    </form:form>
</section>

</body>
<!-- Footer -->
<%@ include file="./footer.jsp" %>
<!-- /.footer -->

</html>
