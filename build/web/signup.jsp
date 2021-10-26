<%-- 
    Document   : signup
    Created on : 10-15-2021, 08:03:14 PM
    Author     : 16ado
--%>

<%@page import="org.apache.catalina.ha.ClusterSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp" %>
<style>

    .intro-2 {
        background: url("http://mdbootstrap.com/img/Photos/Horizontal/Nature/full page/img%20(11).jpg")no-repeat center center;
        background-size: cover;
    }
    .top-nav-collapse {
        background-color: #3f51b5 !important;
    }
    .navbar:not(.top-nav-collapse) {
        background: transparent !important;
    }
    @media (max-width: 768px) {
        .navbar:not(.top-nav-collapse) {
            background: #3f51b5 !important;
        }
    }

    .card {
        background-color: rgba(229, 228, 255, 0.2);
    }
    .md-form label {
        color: #ffffff;
    }
    h6 {
        line-height: 1.7;
    }

    html,
    body,
    header,
    .view {
        height: 100%;
    }

    @media (min-width: 560px) and (max-width: 740px) {
        html,
        body,
        header,
        .view {
            height: 650px;
        }
    }

    @media (min-width: 800px) and (max-width: 850px) {
        html,
        body,
        header,
        .view  {
            height: 650px;
        }
    }

    .card {
        margin-top: 30px;
        /*margin-bottom: -45px;*/

    }

    .md-form input[type=text]:focus:not([readonly]),
    .md-form input[type=password]:focus:not([readonly]) {
        border-bottom: 1px solid #8EDEF8;
        box-shadow: 0 1px 0 0 #8EDEF8;
    }
    .md-form input[type=text]:focus:not([readonly])+label,
    .md-form input[type=password]:focus:not([readonly])+label {
        color: #8EDEF8;
    }

    .md-form .form-control {
        color: #fff;
    }

    .navbar.navbar-dark form .md-form input:focus:not([readonly]) {
        border-color: #8EDEF8;
    }

    @media (min-width: 800px) and (max-width: 850px) {
        .navbar:not(.top-nav-collapse) {
            background: #3f51b5!important;
        }
    }

</style>
<header>
    <!--Intro Section-->
    <section class="view intro-2">
        <div class="mask rgba-stylish-strong h-100 d-flex justify-content-center align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-5">

                        <!--Form with header-->
                        <div class="card wow fadeIn" data-wow-delay="0.3s">
                            <div class="card-body">
                                <form action="signupServlet" method="Post">
                                    <!--Header-->
                                    <div class="form-header purple-gradient">
                                        <h3><i class="fa fa-user mt-2 mb-2"></i> Log in:</h3>
                                    </div>
                                    <!--Body-->
                                    <div class="md-form">
                                        <i class="fa fa-envelope prefix white-text"></i>
                                        <input type="text" id="orangeForm-email" class="form-control" name="UserEmail">
                                        <label for="orangeForm-email">Your email</label>
                                    </div>

                                    <div class="md-form">
                                        <i class="fa fa-lock prefix white-text"></i>
                                        <input type="password" id="orangeForm-pass" class="form-control" name="Pasword">
                                        <label for="orangeForm-pass">Your password</label>
                                    </div>

                                    <div class="text-center">
                                        <button class="btn purple-gradient btn-lg" name="btnSignup">Sign up</button>
                                        <hr>
                                        <a class="p-2 m-2 fa-lg tw-ic" href="${pageContext.request.contextPath}/createaccount.jsp">!Crear Usuario!</a>
                                        <div class="inline-ul text-center d-flex justify-content-center">
                                            <a class="p-2 m-2 fa-lg tw-ic"><i class="fa fa-twitter white-text"></i></a>
                                            <a class="p-2 m-2 fa-lg li-ic"><i class="fa fa-linkedin white-text"> </i></a>
                                            <a class="p-2 m-2 fa-lg ins-ic"><i class="fa fa-instagram white-text"> </i></a>
                                        </div>
                                    </div>
                                </form>


                            </div>
                        </div>
                        <!--/Form with header-->

                    </div>
                </div>
            </div>
        </div>
    </section>

</header>
<%@include file="layout/footer.jsp" %>
<%
    HttpSession la_sesion_xd = request.getSession();

    if (request.getParameter("signout") != null) {
        la_sesion_xd.invalidate();

    }
%>