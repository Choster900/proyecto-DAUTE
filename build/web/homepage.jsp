<%-- 
    Document   : homepage
    Created on : 10-10-2021, 07:14:45 PM
    Author     : Sergio-Lopez
--%>

<%@page import="Model.productoDAO"%>
<%@page import="Model.ClsProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    productoDAO daorProducto = new productoDAO();
%>
<%
    HttpSession s = request.getSession();

    if ((Integer) s.getAttribute("nivel") == null) {
        response.sendRedirect("signup.jsp");
    }

%>
<%@include file="layout/header.jsp" %>
<%@include file="layout/navbar.jsp" %>

<!--Intro-->

<section>

    <!--Carousel Wrapper-->
    <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
        <!--Indicators-->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-1z" data-slide-to="1"></li>
            <li data-target="#carousel-example-1z" data-slide-to="2"></li>
        </ol>
        <!--/.Indicators-->
        <!--Slides-->
        <div class="carousel-inner" role="listbox">
            <!--First slide-->
            <div class="carousel-item active">
                <div class="view h-100">
                    <img class="d-block h-100 w-lg-100" src="http://localhost/serverProject/banner1.jpg" alt="First slide">
                    <div class="mask">
                        <!-- Caption -->
                        <div class="full-bg-img flex-center white-text">
                            <ul class="animated fadeIn col-10 list-unstyled">
                                <li>
                                    <p class="h1 red-text mb-4 mt-5">
                                        <strong>Sale off 30% on every saturday!</strong>
                                    </p>
                                </li>
                                <li>
                                    <h5 class="h5-responsive dark-grey-text font-weight-bold mb-5">Tempora incidunt ut labore et dolore veritatis et quasi architecto beatae</h5>
                                </li>
                                <li>
                                    <a target="_blank" href="https://mdbootstrap.com/getting-started/" class="btn btn-danger btn-rounded" rel="nofollow">See more!</a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.Caption -->
                    </div>
                </div>
            </div>
            <!--/First slide-->
            <!--Second slide-->
            <div class="carousel-item h-100">
                <div class="view h-100">
                    <img class="d-block h-100 w-lg-100" src="http://localhost/serverProject/banner2.jpg" alt="Second slide">
                    <div class="mask">
                        <!-- Caption -->
                        <div class="full-bg-img flex-center white-text">
                            <ul class="animated fadeIn col-10 list-unstyled">
                                <li>
                                    <p class="h1 dark-grey-text mb-4">
                                        <strong>Nemo enim ipsam voluptatem quia voluptas</strong>
                                    </p>
                                </li>
                                <li>
                                    <h5 class="h5-responsive dark-grey-text font-weight-bold mb-5">Tempora incidunt ut labore et dolore veritatis et quasi architecto beatae</h5>
                                </li>
                                <li>
                                    <a target="_blank" href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-primary btn-rounded" rel="nofollow">Read more</a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.Caption -->
                    </div>
                </div>
            </div>
            <!--/Second slide-->
            <!--Third slide-->
            <div class="carousel-item">
                <div class="view h-100">
                    <img class="d-block h-100 w-lg-100" src="http://localhost/serverProject/banner3.png" alt="Third slide">
                    <div class="mask">
                        <!-- Caption -->
                        <div class="full-bg-img flex-center white-text">
                            <ul class="animated fadeIn col-md-10 text-center text-md-right list-unstyled">
                                <li>
                                    <p class="h1 blue-text mb-4 mt-5 pr-lg-5">
                                        <strong>Sale off 20% on every headphones!</strong>
                                    </p>
                                </li>
                                <li>
                                    <h5 class="h5-responsive dark-grey-text font-weight-bold mb-5 pr-lg-5">Tempora incidunt ut labore et dolore veritatis et quasi</h5>
                                </li>
                            </ul>
                        </div>
                        <!-- /.Caption -->
                    </div>
                </div>
            </div>
            <!--/Third slide-->
        </div>
        <!--/.Slides-->
        <!--Controls-->
        <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        <!--/.Controls-->
    </div>
    <!--/.Carousel Wrapper-->

    <div class="container-fluid mx-0 px-0">

        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark primary-color mb-5">
            <div class="container">

                <!-- Navbar brand -->
                <a class="font-weight-bold white-text mr-4" href="#">Categories</a>

                <!-- Collapse button -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Collapsible content -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">

                    <!-- Links -->
                    <%                        try {
                            if ((Integer) la_session.getAttribute("nivel") == 3) {

                    %>
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown ml-3">
                            <a class="nav-link dropdown-toggle waves-effect waves-light dark-grey-text font-weight-bold" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user red-text"></i> Administrador </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="navbarDropdownMenuLink-4">
                                <a class="dropdown-item waves-effect waves-light" href="products/home.jsp">Productos</a>
                                <a class="dropdown-item waves-effect waves-light" href="#">Reportes</a>
                            </div>
                        </li>
                    </ul>
                    <%                            } else {

                            }
                        } catch (Exception e) {

                        }


                    %>

                    <!-- Links -->


                </div>
                <!-- Collapsible content -->
            </div>
        </nav>
        <!--/.Navbar-->

    </div>

</section>
<!--/Intro-->

<!-- Main Container -->
<div class="container">
    <!-- Grid row -->
    <div class="row pt-4">

        <!-- Content -->
        <div class="col-lg-12">

            <!-- Categories & Adv -->
            <section class="section pt-2">

                <!-- Grid row -->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-lg-4 col-md-12 mb-4">

                        <!-- Section: Categories -->
                        <section class="section">

                            <ul class="list-group z-depth-1">

                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small"  href="${pageContext.request.contextPath}/products/category.jsp?class=1">
                                        <i class="fa fa-slideshare dark-grey-text mr-2" aria-hidden="true"></i>Mubles</a>
                                    <a>
                                        <span class="badge badge-danger badge-pill">43</span>
                                    </a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small" href="${pageContext.request.contextPath}/products/category.jsp?class=2">
                                        <i class="fa fa-cut dark-grey-text mr-3" aria-hidden="true"></i> Decoracion</a>
                                    <span class="badge badge-danger badge-pill">32</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small" href="${pageContext.request.contextPath}/products/category.jsp?class=3">
                                        <i class="fa fa-beer dark-grey-text mr-3" aria-hidden="true"></i> Vinos de todo tipo</a>
                                    <span class="badge badge-danger badge-pill">18</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small" href="${pageContext.request.contextPath}/products/category.jsp?class=4">
                                        <i class="fa fa-bandcamp dark-grey-text mr-3" aria-hidden="true"></i>Utensilios</a>
                                    <span class="badge badge-danger badge-pill">37</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small" href="${pageContext.request.contextPath}/products/category.jsp?class=6">
                                        <i class="fa fa-camera-retro dark-grey-text mr-3" aria-hidden="true"></i>Sistema de seguridad</a>
                                    <span class="badge badge-danger badge-pill">15</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small" href="${pageContext.request.contextPath}/products/category.jsp?class=5">
                                        <i class="fa fa-suitcase dark-grey-text mr-3" aria-hidden="true"></i>Para la cocina</a>
                                    <span class="badge badge-danger badge-pill">64</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small" href="${pageContext.request.contextPath}/products/category.jsp?class=7">
                                        <i class="fa fa-television dark-grey-text mr-3" aria-hidden="true"></i>Electrodomesticos entre otros</a>
                                    <span class="badge badge-danger badge-pill">2</span>
                                </li>
                            </ul>
                        </section>
                        <!-- Section: Categories -->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-8 col-md-12 pb-lg-5 mb-4">
                        <!--Image -->
                        <div class="view zoom z-depth-1">

                            <img src="http://localhost/serverProject/wallpaper.jpg" class="img-fluid" alt="sample image">
                            <div class="mask rgba-white-light">
                                <div class="dark-grey-text  pt-4 ml-3 pl-3">
                                    <div>
                                        <a>
                                            <span class="badge badge-danger">bestseller</span>
                                        </a>
                                        <h2 class="card-title font-weight-bold pt-2">
                                            <strong>This is news title</strong>
                                        </h2>
                                        <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                        <a class="btn btn-danger btn-sm btn-rounded clearfix d-none d-md-inline-block">Read more</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--Image -->
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </section>
            <!-- Categories & Adv -->

            <!--Section: Bestsellers & offers-->
            <section>

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-12">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs nav-justified grey lighten-3 mx-0" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active dark-grey-text font-weight-bold" data-toggle="tab" href="#panel5" role="tab"> Bestsellers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link dark-grey-text font-weight-bold" data-toggle="tab" href="#panel6" role="tab">Top offers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link dark-grey-text font-weight-bold" data-toggle="tab" href="#panel7" role="tab">
                                    </i>Best rated</a>
                            </li>
                        </ul>
                        <!-- Tab panels -->
                        <div class="tab-content px-0">
                            <!--Panel 1-->
                            <div class="tab-pane fade in show active " id="panel5" role="tabpanel">
                                <br>
                                <!-- Grid row -->
                                <div class="row">
                                    <%!
                                        ArrayList<ClsProducto> ramdon1 = new ArrayList<ClsProducto>();
                                    %>
                                    <%                                        ramdon1 = daorProducto.ramdonProducts();
                                        for (ClsProducto elem : ramdon1) {
                                    %>
                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-12 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="<%=elem.getRutaImagen()%>" class="img-fluid" alt="sample image">
                                                <a href="http://localhost:8080/project/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text"><%=elem.getNombre()%></a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-danger mb-2">SALE</span>
                                                <!-- Rating -->
                                                <ul class="rating">
                                                    <%
                                                        int veces = elem.getVecesVendido();
                                                        if (veces >= 0 && veces <= 5) {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <%
                                                    } else if (veces >= 6 && veces <= 10) {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <%
                                                    } else {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <%
                                                        }
                                                    %>

                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <%
                                                            int sub = (Integer) la_session.getAttribute("typeSub");
                                                            if (sub == 2) {
                                                                double tot = elem.getPrecio() * 0.10;
                                                        %>
                                                        <span class="float-left red-text">
                                                            <strong><%=String.format("%.2f", elem.getPrecio() - tot)%></strong>
                                                        </span>
                                                        <%
                                                        } else {
                                                        %>
                                                        <span class="float-left red-text">
                                                            <strong><%=String.format("%.2f", elem.getPrecio())%></strong>
                                                        </span>
                                                        <%
                                                            }
                                                        %>
                                                        <span class="grey-text">

                                                            <%
                                                                if (sub == 2) {
                                                            %>

                                                            <small>
                                                                <s>&nbsp,<%=String.format("%.2f", elem.getPrecio())%></s>
                                                            </small>
                                                            <%
                                                                }
                                                            %>
                                                        </span>
                                                        <span class="float-right">
                                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart ml-3"></i>
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>

                                            </div>
                                            <!--Card content-->

                                        </div>
                                        <!--Card-->

                                    </div>
                                    <!--Grid column-->

                                    <%
                                        }
                                    %>

                                </div>
                                <!--Grid row-->
                            </div>
                            <!--/.Panel 1-->

                            <!--Panel 2-->
                            <div class="tab-pane fade" id="panel6" role="tabpanel">
                                <br>

                                <!-- Grid row -->
                                <div class="row mb-3">

                                    <%!
                                        ArrayList<ClsProducto> topProducto = new ArrayList<ClsProducto>();
                                    %>
                                    <%
                                        topProducto = daorProducto.topSeller();
                                        for (ClsProducto elem : topProducto) {
                                    %>
                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <a href="${pageContext.request.contextPath}/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                                    <img src="<%=elem.getRutaImagen()%>" class="img-fluid" alt="sample image">

                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text"><%=elem.getNombre()%></a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-info mb-2">new</span>
                                                <span class="badge badge-success mb-2 ml-2">SALE</span>
                                                <!-- Rating -->
                                                <ul class="rating">
                                                    <%
                                                        int veces = elem.getVecesVendido();
                                                        if (veces >= 0 && veces <= 5) {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <%
                                                    } else if (veces >= 6 && veces <= 10) {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <%
                                                    } else {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <%
                                                        }
                                                    %>

                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <h5 class="mb-0 pb-0 mt-1 font-weight-bold">
                                                            <%
                                                                int sub = (Integer) la_session.getAttribute("typeSub");
                                                                if (sub == 2) {
                                                                    double tot = elem.getPrecio() * 0.10;
                                                            %>
                                                            <span class="red-text">
                                                                <strong><%=String.format("%.2f", elem.getPrecio() - tot)%></strong>
                                                            </span>
                                                            <%
                                                            } else {
                                                            %>
                                                            <span class="red-text">
                                                                <strong><%=elem.getPrecio()%></strong>
                                                            </span>
                                                            <%
                                                                }
                                                            %>
                                                            <span class="grey-text">

                                                                <%
                                                                    if (sub == 2) {


                                                                %>

                                                                <small>
                                                                    <s><%=String.format("%.2f", elem.getPrecio())%></s>
                                                                </small>
                                                                <%
                                                                    }
                                                                %>
                                                            </span>
                                                        </h5>

                                                        <span class="float-right">
                                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart ml-3"></i>
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>

                                            </div>
                                            <!--Card content-->

                                        </div>
                                        <!--Card-->

                                    </div>
                                    <!--Grid column-->
                                    <%
                                        }
                                    %>
                                </div>
                                <!--Grid row-->
                            </div>
                            <!--/.Panel 2-->

                            <!--Panel 3-->
                            <div class="tab-pane fade" id="panel7" role="tabpanel">
                                <br>
                                <!-- Grid row -->
                                <div class="row">

                                    <%!
                                        ArrayList<ClsProducto> aleatorio = new ArrayList<ClsProducto>();
                                    %>
                                    <%
                                        aleatorio = daorProducto.ramdonProducts();
                                        for (ClsProducto elem : aleatorio) {
                                    %>

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <a href="${pageContext.request.contextPath}/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                                    <img src="<%=elem.getRutaImagen()%>" class="img-fluid" alt="sample image">

                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text"><%=elem.getNombre()%></a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-info mb-2">new</span>
                                                <!-- Rating -->
                                                <ul class="rating">
                                                    <%
                                                        int veces = elem.getVecesVendido();
                                                        if (veces >= 0 && veces <= 5) {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <%
                                                    } else if (veces >= 6 && veces <= 10) {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                    <%
                                                    } else {
                                                    %>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <li>
                                                        <i class="fa fa-star blue-text"></i>
                                                    </li>
                                                    <%
                                                        }
                                                    %>

                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left red-text">
                                                            <strong><%=elem.getPrecio()%></strong>
                                                        </span>
                                                        <%
                                                            int sub = (Integer) la_session.getAttribute("typeSub");
                                                            if (sub == 2) {
                                                                double total = elem.getPrecio() * 0.10;
                                                        %>
                                                        <small>
                                                            <s>&nbsp,<%=String.format("%.2f", elem.getPrecio() - total)%></s>
                                                        </small>
                                                        <%
                                                        } else {
                                                        %>
                                                        <span class="grey-text">
                                                            <small>
                                                                <s><%=elem.getPrecio()%></s>
                                                            </small>
                                                            <%
                                                                }
                                                            %>
                                                        </span>
                                                        <span class="float-right">
                                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                                <i class="fa fa-shopping-cart ml-3"></i>
                                                            </a>
                                                        </span>

                                                    </div>
                                                </div>

                                            </div>
                                            <!--Card content-->

                                        </div>
                                        <!--Card-->

                                    </div>
                                    <!--Grid column-->

                                    <%
                                        }
                                    %>

                                </div>
                                <!--Grid row-->

                            </div>
                            <!--/.Panel 3-->
                        </div>

                    </div>

                </div>
                <!--Grid row-->

            </section>
            <!--Section: Bestsellers & offers-->

            <!--Section: product list-->
            <section class="mb-5">
                <div class="row">
                    <!-- New Products-->
                    <div class="col-lg-4 col-md-12 col-12 pt-5">
                        <hr>
                        <h5 class="text-center font-weight-bold dark-grey-text">
                            <strong>New Products</strong>
                        </h5>
                        <hr>
                        <%!
                            ArrayList<ClsProducto> newProducto = new ArrayList<ClsProducto>();
                        %>
                        <%                            newProducto = daorProducto.newProducto();
                            for (ClsProducto elem : newProducto) {


                        %>
                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">
                                <a href="${pageContext.request.contextPath}/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                    <img src="<%=elem.getRutaImagen()%>" class="img-fluid">
                                </a>
                            </div>
                            <div class="col-6">

                                <!-- Title -->
                                <a class="pt-5">
                                    <strong><%=elem.getNombre()%></strong>
                                </a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">
                                    <%
                                        int veces = elem.getVecesVendido();
                                        if (veces >= 0 && veces <= 5) {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <%
                                    } else if (veces >= 6 && veces <= 10) {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <%
                                        }
                                    %>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text">
                                    <%
                                        int sub = (Integer) la_session.getAttribute("typeSub");
                                        if (sub == 2) {
                                            double tot = elem.getPrecio() * 0.10;
                                    %>
                                    <strong><%=elem.getPrecio() - tot%></strong>
                                    <span class="grey-text">
                                        <small>
                                            <s><%=elem.getPrecio()%></s>
                                        </small>
                                    </span>
                                    <%
                                    } else {
                                    %>
                                    <strong><%=elem.getPrecio()%></strong>
                                    <%
                                        }
                                    %>
                                    
                                </h6>

                            </div>

                        </div>
                        <!-- /.First row -->
                        <%
                            }
                        %>
                    </div>
                    <!-- /.New Products-->

                    <!-- Top Sellers-->
                    <div class="col-lg-4  col-md-12 pt-5">

                        <hr>
                        <h5 class="text-center font-weight-bold dark-grey-text">
                            <strong>Top Sellers</strong>
                        </h5>
                        <hr>
                        <%!
                            ArrayList<ClsProducto> topSeller = new ArrayList<ClsProducto>();
                        %>
                        <%
                            topSeller = daorProducto.topSeller();
                            for (ClsProducto elem : topSeller) {


                        %>
                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">
                                <a href="${pageContext.request.contextPath}/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                    <img src="<%=elem.getRutaImagen()%>" class="img-fluid">
                                </a>
                            </div>
                            <div class="col-6">

                                <!-- Title -->
                                <a>
                                    <strong><%=elem.getNombre()%></strong>
                                </a>

                                <!-- Rating -->
                                <ul class="rating">
                                    <%
                                        int veces = elem.getVecesVendido();
                                        if (veces >= 0 && veces <= 5) {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <%
                                    } else if (veces >= 6 && veces <= 10) {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <%
                                        }
                                    %>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text">
                                    <%
                                        int sub = (Integer) la_session.getAttribute("typeSub");
                                        if (sub == 2) {
                                            double tot = elem.getPrecio() * 0.10;
                                    %>
                                    <strong><%=elem.getPrecio() - tot%></strong>
                                    <span class="grey-text">
                                        <small>
                                            <s><%=elem.getPrecio()%></s>
                                        </small>
                                    </span>
                                    <%
                                    } else {
                                    %>
                                    <strong><%=elem.getPrecio()%></strong>
                                    <%
                                        }
                                    %>
                                    
                                </h6>

                            </div>

                        </div>
                        <!-- /.First row -->
                        <%                            }
                        %>

                    </div>
                    <!-- /.Top Sellers -->

                    <!-- Random Products-->
                    <div class="col-lg-4 col-md-12 pt-5">

                        <hr>
                        <h5 class="text-center font-weight-bold dark-grey-text">
                            <strong>Random products</strong>
                        </h5>
                        <hr>
                        <%!
                            ArrayList<ClsProducto> RamdonProducts = new ArrayList<ClsProducto>();
                        %>
                        <%
                            RamdonProducts = daorProducto.ramdonProducts();
                            for (ClsProducto elem : RamdonProducts) {


                        %>
                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">
                                <a href="${pageContext.request.contextPath}/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                    <img src="<%=elem.getRutaImagen()%>" class="img-fluid">
                                </a>
                            </div>
                            <div class="col-6">

                                <!-- Title -->
                                <a>
                                    <strong><%=elem.getNombre()%></strong>
                                </a>

                                <!-- Rating -->
                                <ul class="rating">
                                    <%
                                        int veces = elem.getVecesVendido();
                                        if (veces >= 0 && veces <= 5) {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <%
                                    } else if (veces >= 6 && veces <= 10) {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <%
                                        }
                                    %>

                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text">
                                    <%
                                        int sub = (Integer) la_session.getAttribute("typeSub");
                                        if (sub == 2) {
                                            double tot = elem.getPrecio() * 0.10;
                                    %>
                                    <strong><%=elem.getPrecio() - tot%></strong>
                                    <span class="grey-text">
                                        <small>
                                            <s><%=elem.getPrecio()%></s>
                                        </small>
                                    </span>
                                    <%
                                    } else {
                                    %>
                                    <strong><%=elem.getPrecio()%></strong>
                                    <%
                                        }
                                    %>
                                    
                                </h6>

                            </div>

                        </div>
                        <!-- /.First row -->
                        <%                            }
                        %>




                    </div>
                    <!-- /.Random Products -->
                </div>

            </section>
            <!--/Section: product list-->

            <!--Section: Last items-->


        </div>
        <!-- /.Content -->

    </div>
    <!-- /Grid row -->
</div>
<!-- /.Main Container -->
<%@include file="layout/footer.jsp" %>

