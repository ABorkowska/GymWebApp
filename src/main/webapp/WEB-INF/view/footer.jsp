<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<footer class="footer-section">
    <div class="footer-top">
        <div class="container">
            <div class="row mb-45-none">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget widget-about"><h5 class="widget-title">O NAS</h5>
                        <p>IRON Gym</p>
                        <h6 class="sub-title">Newsletter - zapisz się!</h6>
                        <form class="footer-form">
                            <input type="text" placeholder="Twój e-mail" class="footer-input">
                            <label for="f1">
                                <i class="fas fa-arrow-right"></i>
                            </label>
                            <input type="submit" value="" id="f1">
                        </form>
                        <div class="social-icons">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#"><i class="fab fa-google-plus-g"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="footer-widget widget-link"><h5 class="widget-title">Linki</h5>
                        <ul>
                            <li><a href="#">Weight Loss</a></li>
                            <li><a href="#">Pakckages</a></li>
                            <li><a href="#">Class Time</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Offer</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget widget-post"><h5 class="widget-title">Nasz Blog</h5>
                        <ul>
                            <li><a class="post-title" href="#">Nieudany trening to ten, którego nie wykonałeś</a><span>05 maj 2021</span>
                            </li>
                            <li><a class="post-title" href="#">Masa czy Siła?</a><span>05 czerwiec 2021</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget widget-form">
                        <h5 class="widget-title">Formularz kontaktowy</h5>
                        <form class="footer-contact-form">
                            <input type="text" placeholder="Imię">
                            <input type="text" placeholder="E-mail">
                            <textarea name="footer-message" id="f2" class="footer-textarea">
                            </textarea>
                            <input type="submit" value="Wyślij">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom align-items-center d-flex">
        <div class="container"><p class="m-0">&copy; Copyright IRON Gym</a> 2021
        </p>
        </div>
    </div>
</footer>
<!-- Footer Section Ends Here -->

<!-- JavaScript File Links -->
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>">
</script>
<script src="<c:url value="/static/js/modernizr-3.6.0.min.js"/>">
</script>
<script src="<c:url value="/static/js/plugins.js"/>">
</script>
<script src="<c:url value="/http://cdn.bootstrapmb.com/bootstrap/4.3.1/js/bootstrap.min.js"/>">
</script>
<script src="<c:url value="/static/js/isotope.pkgd.min.js"/>">
</script>
<script src="<c:url value="/static/js/swiper.min.js"/>">
</script>
<script src="<c:url value="/static/js/waypoint.js"/>">
</script>
<script src="<c:url value="/static/js/counterup.min.js"/>">
</script>
<script src="<c:url value="/static/js/lightcase.js"/>">
</script>
<script src="<c:url value="/static/js/wow.min.js"/>">
</script>
<script src="<c:url value="/static/js/main.js"/>">
</script>
</body>
</html>