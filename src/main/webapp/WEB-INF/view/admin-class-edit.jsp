<%--
  Created by IntelliJ IDEA.
  User: alina
  Date: 26.05.2021
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
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
                <h2>Edycja zajęć</h2>
            </div>
            <div class="schedule-header">
                <form:form method="post" action="/admin/schedule/edit/${schedule.id}" modelAttribute="schedule" class="register-form">
            </div>
            <div class="form-row">
                <div class="value">
                    <label>Dzień tygodnia</label>
                    <form:select path="day">
                        <form:option value = "${schedule.day}">${schedule.day}</form:option>
                        <form:option value = "monday">Poniedziałek</form:option>
                        <form:option value = "tuesday">Wtorek</form:option>
                        <form:option value = "wednesday">Środa</form:option>
                        <form:option value = "thursday">Czwartek</form:option>
                        <form:option value = "friday">Piątek</form:option>
                        <form:option value = "saturday">Sobota</form:option>
                        <form:option value = "sunday">Niedziela</form:option>
                    </form:select>
<%--                    <label> Dzien tygodnia</label>--%>
<%--                    <form:input path="day" type="text" placeholder="${schedule.day}" />--%>
<%--                    <form:errors path="day" cssClass="error"/>--%>
                </div>
                <div class="value col-lg-2">
                <div class="value">
                    <label> Godzina</label>
                    <form:input path="hour" type="text" placeholder="${schedule.hour}"/>
                    <form:errors path="hour" cssClass="error"/>
                </div>
                </div>
                <div class="value col-lg-4">
                <div class="value">
                    <label>Nazwa</label>
                    <form:input path="name" type="text" placeholder="${schedule.name}"/>
                    <form:errors path="name" cssClass="error"/>
                </div>
                </div>
            </div>
            <div class="form-row">
                <div class="value">
                    <p></p>
                    <label>Instruktor</label>
                    <form:select path="nameOfTrainer">
                        <form:option value = "${schedule.nameOfTrainer}">${schedule.nameOfTrainer}</form:option>
                        <c:forEach var="trainer" items="${trainers}">
                        <form:option value = "nameOfTrainer">${trainer.name}</form:option>
                        </c:forEach>
                    </form:select>
<%--                    <form:input path="nameOfTrainer" type="text" placeholder="${schedule.nameOfTrainer}"/>--%>
<%--                    <form:errors path="nameOfTrainer" cssClass="error"/>--%>
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
