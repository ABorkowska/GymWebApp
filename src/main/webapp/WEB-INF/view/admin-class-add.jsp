<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap-admin.min.css"/>">
</head>

<body>
<!-- Header -->
<%@ include file="./header-admin.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<section class="schedule-section padding-bottom padding-top">
    <div class="container">
        <div class="schedule-wrapper">
            <div class="schedule-header text-center">
                <h2>Dodawanie zajęć</h2>
            </div>
            <div class="schedule-header">
                <form:form method="post" action="/admin/schedule/add" modelAttribute="schedule" class="register-form">
            </div>
            <div class="form-row">
                <div class="value">

                    <label>Dzień tygodnia</label>
                    <form:select path="day">
                        <form:option value = "Poniedziałek">Poniedziałek</form:option>
                        <form:option value = "Wtorek">Wtorek</form:option>
                        <form:option value = "Środa">Środa</form:option>
                        <form:option value = "Czwartek">Czwartek</form:option>
                        <form:option value = "Piątek">Piątek</form:option>
                        <form:option value = "Sobota">Sobota</form:option>
                        <form:option value = "Niedziela">Niedziela</form:option>
                    </form:select>

                </div>
                <div class="value col-lg-2">
                    <div class="value">
                        <label>Godzina</label>
                        <form:input path="hour" type="text" placeholder="HH:MM"/>
                        <form:errors path="hour" cssClass="error"/>
                    </div>
                </div>
                <div class="value col-lg-4">
                    <div class="value">
                        <label>Nazwa</label>
                        <form:input path="name" type="text"/>
                        <form:errors path="name" cssClass="error"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="value">
                    <p></p>
                    <label>Instruktor</label>
                    <form:select path="nameOfTrainer" multiply="false">
<%--                        <form:option value = "-- Wybierz z listy --"></form:option>--%>
                        <c:forEach var="trainerName" items="${trainerNames}">
                            <form:option value="${trainerName}"></form:option>
                            <form:errors path="nameOfTrainer" cssClass="error"/>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
            <p></p>
            <div class="col-lg-3">
                <input type="submit" class="register-btn" value="Zapisz"/>
                <p></p>
            </div>
            <div class="form-row">
                <div class="col-lg-3">
                    <input type="button" class="custom-button-plan"
                           onclick="location.href='/admin/schedule';" value="Wróć do grafiku"/>
                </div>
            </div>
        </div>
    </div>
    </form:form>
</section>


</body>
<!-- Footer -->
<%@ include file="./footer-admin.jsp" %>
<!-- /.footer -->

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
<script src="<c:url value="/static/js/templatemo-script.js"/>"></script>
</html>

