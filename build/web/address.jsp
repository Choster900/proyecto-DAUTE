
<%@page import="Model.ClsCategorias"%>
<%@page import="Model.departamentosDAO"%>
<%@page import="Model.ClsDepartamentos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp" %>
<%!
    departamentosDAO depa = new departamentosDAO();
    ArrayList<ClsDepartamentos> listarDepa = new ArrayList<>();
%>
<style>
    html,
    body,
    header,
    .view {
        height: 108%;
    }

    @media (max-width: 740px) {
        html,
        body,
        header,
        .view {
            height: 1400px;
        }
    }

    @media (min-width: 560px) and (max-width: 740px) {
        html,
        body,
        header,
        .view {
            height: 1200px;
        }
    }

    @media (min-width: 800px) and (max-width: 850px) {
        html,
        body,
        header,
        .view {
            height: 950px;
        }
    }

    .intro-2 {
        background: url("http://mdbootstrap.com/img/Photos/Others/forest1.jpg")no-repeat center center;
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
    @media (min-width: 800px) and (max-width: 850px) {
        .navbar:not(.top-nav-collapse) {
            background: #3f51b5!important;
        }
    }

    .rgba-gradient {
        background: -webkit-linear-gradient(98deg, rgba(22, 91, 231, 0.5), rgba(255, 32, 32, 0.5) 100%);
        background: -webkit-gradient(linear, 98deg, from(rgba(22, 91, 231, 0.5)), to(rgba(255, 32, 32, 0.5)));
        background: linear-gradient(to 98deg, rgba(22, 91, 231, 0.5), rgba(255, 32, 32, 0.5) 100%);
    }

    .card {
        background-color: rgba(255, 255, 255, 0.85);
    }

    h6 {
        line-height: 1.7;
    }
</style>
<header>
    <!--Intro Section-->
    <section class="view intro-2">
        <div class="mask rgba-gradient">
            <div class="container h-100 d-flex justify-content-center align-items-center">

                <!--Grid row-->
                <div class="row  pt-5 mt-3">

                    <!--Grid column-->
                    <div class="col-md-12">
                        <form action="DireccionServlet" method="POST">
                            <div class="card">
                                <div class="card-body">

                                    <h2 class="font-weight-bold my-4 text-center mb-5 mt-4 font-weight-bold">
                                        <strong>REGISTER</strong>
                                    </h2>
                                    <hr>

                                    <!--Grid row-->
                                    <div class="row mt-5">

                                        <!--Grid column-->
                                        <div class="col-md-6 ml-lg-5 ml-md-3">

                                            <!--Grid row-->
                                            <div class="row pb-4">
                                                <div class="col-2 col-lg-1">
                                                    <i class="fa fa-bank indigo-text fa-lg"></i>
                                                </div>
                                                <div class="col-10">
                                                    <h4 class="font-weight-bold mb-4">
                                                        <strong>Safety</strong>
                                                    </h4>
                                                    <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam
                                                        minima assumenda deleniti hic.</p>
                                                </div>
                                            </div>
                                            <!--Grid row-->

                                            <!--Grid row-->
                                            <div class="row pb-4">
                                                <div class="col-2 col-lg-1">
                                                    <i class="fa fa-desktop deep-purple-text fa-lg"></i>
                                                </div>
                                                <div class="col-10">
                                                    <h4 class="font-weight-bold mb-4">
                                                        <strong>Technology</strong>
                                                    </h4>
                                                    <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam
                                                        minima assumenda deleniti hic.</p>
                                                </div>
                                            </div>
                                            <!--Grid row-->

                                            <!--Grid row-->
                                            <div class="row pb-4">
                                                <div class="col-2 col-lg-1">
                                                    <i class="fa fa-money purple-text fa-lg"></i>
                                                </div>
                                                <div class="col-10">
                                                    <h4 class="font-weight-bold mb-4">
                                                        <strong>Finance</strong>
                                                    </h4>
                                                    <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam
                                                        minima assumenda deleniti hic.</p>
                                                </div>
                                            </div>
                                            <!--Grid row-->

                                        </div>
                                        <!--Grid column-->

                                        <!--Grid column-->
                                        <div class="col-md-5">

                                            <!--Grid row-->
                                            <div class="row pb-4 d-flex justify-content-center mb-4">

                                                <h4 class="mt-3 mr-4">
                                                    <strong>Login with</strong>
                                                </h4>

                                                <div class="inline-ul text-center d-flex justify-content-center">
                                                    <a class="p-2 m-2 fa-lg tw-ic">
                                                        <i class="fa fa-twitter fa-lg indigo-text"></i>
                                                    </a>
                                                    <a class="p-2 m-2 fa-lg li-ic">
                                                        <i class="fa fa-linkedin fa-lg indigo-text"> </i>
                                                    </a>
                                                    <a class="p-2 m-2 fa-lg ins-ic">
                                                        <i class="fa fa-instagram fa-lg indigo-text"> </i>
                                                    </a>
                                                </div>

                                                <h4 class="mt-3 ml-4">
                                                    <strong>or:</strong>
                                                </h4>

                                            </div>
                                            <!--/Grid row-->

                                            <!--Body-->
                                            <div class="md-form">
                                                <div class="md-form">

                                                    <select class="mdb-select" name="sDepartamentos">
                                                        <%
                                                            listarDepa = depa.showDepastamentos();
                                                            for (ClsDepartamentos elem : listarDepa) {


                                                        %>
                                                        <option value="<%=elem.getId()%>"><%=elem.getNombre()%></option>
                                                        <%
                                                            }
                                                        %>


                                                    </select>
                                                </div>
                                            </div>
                                            <div class="md-form">
                                                <i class="fa fa-building prefix"></i>
                                                <input type="text" id="orangeForm-email" class="form-control" name="Municipio">
                                                <label for="orangeForm-email">Municipio</label>
                                            </div>

                                            <div class="md-form">
                                                <i class="fa fa-road prefix"></i>
                                                <input type="text" id="orangeForm-pass" class="form-control" name="Calle">
                                                <label for="orangeForm-pass">Calle</label>
                                            </div>
                                            <div class="md-form">
                                                <i class="fa fa-map-signs prefix"></i>
                                                <input type="text" id="orangeForm-pass" class="form-control" name="lugarRef">
                                                <label for="orangeForm-pass">Lugar Ref.</label>
                                            </div>
                                            <div class="md-form">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <i class="fa fa-phone prefix"></i>
                                                        <input type="text" id="orangeForm-pass" class="form-control" name="Tel1">
                                                        <label for="orangeForm-pass">Telefono</label>
                                                    </div>
                                                    <div class="col-6">
                                                        <i class="fa fa-phone prefix"></i>
                                                        <input type="text" id="orangeForm-pass" class="form-control"name="Tel2">
                                                        <label for="orangeForm-pass">Telefono</label>
                                                    </div>
                                                </div>
                                                
                                                
                                                <input name="usuarioID" type="hidden" value="<%=request.getAttribute("codigo")%>">

                                            </div>
                                            <div class="text-center">
                                                <button 
                                                    class="btn btn-indigo btn-rounded mt-5"
                                                    name="btnEnviar"
                                                    >Listo</button>
                                            </div>
                                        </div>
                                        <!--Grid column-->
                                    </div>
                                    <!--Grid row-->
                                </div>
                            </div>
                        </form>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </div>
        </div>
    </section>
    <!--Intro Section-->

</header>

<%@include file="layout/footer.jsp" %>
