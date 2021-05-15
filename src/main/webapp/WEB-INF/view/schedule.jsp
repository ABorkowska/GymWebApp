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
                <span class="shape"></span>grafik zajęć<span class="shape"></span></span>
        </h3>
    </div>
</section>
<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">zajęcia grupowe</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Home</a></li>
                <li><a href="">Zajęcia</a></li>
                <li> Grafik zajęć</li>
            </ul>
        </div>
    </div>
</div>

<!-- Timetable -->

<div class="container">
    <div class="row">
        <div class="col">
            <div class="timetable_container d-flex flex-sm-row flex-column align-items-start justify-content-sm-between justify-content-start">

                <!-- Monday -->
                <div class="tt_day">
                    <div class="tt_title">poniedziałek</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Body Shape</div>
                            <div class="tt_class_instructor">Ruslana Sayek</div>
                            <div class="tt_class_time">16:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Kettlebells</div>
                            <div class="tt_class_instructor">Mariusz Kabacki</div>
                            <div class="tt_class_time">17:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Body Workout</div>
                            <div class="tt_class_instructor">Mariusz Kabacki</div>
                            <div class="tt_class_time">18:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Circuit Training</div>
                            <div class="tt_class_instructor">Karol Bardo</div>
                            <div class="tt_class_time">19:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Weight Lifting</div>
                            <div class="tt_class_instructor">Kamil Woliński</div>
                            <div class="tt_class_time">20:00</div>
                        </div>

                    </div>
                </div>

                <!-- Tuesday -->
                <div class="tt_day">
                    <div class="tt_title">wtorek</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Upper-Body</div>
                            <div class="tt_class_instructor">Mariusz Kabacki</div>
                            <div class="tt_class_time">16:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Resistance Bands</div>
                            <div class="tt_class_instructor">Mariusz Kabacki</div>
                            <div class="tt_class_time">17:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Iron Power</div>
                            <div class="tt_class_instructor">Kamil Woliński</div>
                            <div class="tt_class_time">18:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Fighter Training</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">13:00</div>
                        </div>
                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Weight Loss</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">8:00</div>
                        </div>
                    </div>
                </div>

                <!-- Wednesday -->
                <div class="tt_day">
                    <div class="tt_title">środa</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Crossfit</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">9:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">13:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">17:00</div>
                        </div>
                    </div>
                </div>

                <!-- Thursday -->
                <div class="tt_day">
                    <div class="tt_title">czwartek</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Fitness</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">9:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Yoga</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">12:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Pilates</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">13:00</div>
                        </div>
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>
                    </div>
                </div>

                <!-- Friday -->
                <div class="tt_day">
                    <div class="tt_title">piątek</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Yoga</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">9:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">13:00</div>
                        </div>
                        <!-- Class -->
                        <div class="tt_class empty grid-item">

                        </div>
                    </div>
                </div>

                <!-- Saturday -->
                <div class="tt_day">
                    <div class="tt_title">sobota</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Weight Loss</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">9:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item pilates">
                            <div class="tt_class_title">Pilates</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">13:00</div>
                        </div>
                        <!-- Class -->
                        <div class="tt_class empty grid-item">
                        </div>

                        <!-- Class -->
                        <div class="tt_class empty grid-item">
                        </div>

                    </div>
                </div>

                <!-- Sunday -->
                <div class="tt_day">
                    <div class="tt_title">niedziela</div>
                    <div class="tt_day_content grid">

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Stretching</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">9:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class grid-item">
                            <div class="tt_class_title">Aerobics</div>
                            <div class="tt_class_instructor">Jessica Smith</div>
                            <div class="tt_class_time">10:00</div>
                        </div>

                        <!-- Class -->
                        <div class="tt_class empty grid-item">
                        </div>

                        <!-- Class -->
                        <div class="tt_class empty grid-item">
                        </div>

                        <!-- Class -->
                        <div class="tt_class empty grid-item">
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <p></p>
</div>


</div>


</body>
<!-- Footer Section Starts Here -->
<%@ include file="./footer.jsp" %>

</html>