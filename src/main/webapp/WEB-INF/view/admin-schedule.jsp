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
    <link rel="stylesheet" type="text/css"
          href="<c:url value="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css"/>">
</head>

<body>
<!-- Header -->
<%@ include file="./header-admin.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<div class="templatemo-content-container bg-img">
    <div class="templatemo-content-widget">
        <div class="table-responsive">
            <a href="<c:url value="/admin/schedule/add"/>">
                <button type="button" class="btn col-lg-14 package-item">Dodaj nowe zajęcia</button>
            </a>

        </div>
        <table id="table" class="table table-striped table-bordered templatemo-user-table">
            <thead>
            <tr>
                <td class="white-text templatemo-sort-by">Id</td>
                <td class="white-text templatemo-sort-by">Dzień tygodnia</td>
                <td class="white-text templatemo-sort-by">Godzina</td>
                <td class="white-text templatemo-sort-by">Nazwa</td>
                <td class="white-text templatemo-sort-by">Instruktor</td>
                <td>Edytuj</td>
                <td>Action</td>
                <td>usuń</td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <c:forEach items="${schedule}" var="class">
                <td>${class.id}</td>
                <td>${class.day}</td>
                <td>${class.hour}</td>
                <td>${class.name}</td>
                <td>${class.nameOfTrainer}</td>
                <td><a href="<c:url value="/admin/schedule/edit/${class.id}"/>" class="templatemo-edit-btn" >Edytuj</a>
                </td>
                <td><a href="" class="templatemo-link">Action</a></td>
                <td><a href="<c:url value="/admin/schedule/delete/${class.id}"/>" class="templatemo-edit-btn"
                       onClick="return confirmSubmit()">Usuń</a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
<!-- Footer -->
<%@ include file="./footer-admin.jsp" %>
<!-- /.footer -->

<script>
    $(document).ready(function() {
        $('#table').DataTable({
            "language": {
                "url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Polish.json"
            }
        });
    });

    function confirmSubmit () {
        let agree = confirm("\nCzy na pewno chcesz usunąć?\n\nNie będzie możliwe cofnięcie tej akcji");
        if (agree) {
            return true;
        } else return false;
    }
</script>

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
<script type="text/javascript" charset="utf8"
        src="<c:url value="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"/>"></script>

</html>