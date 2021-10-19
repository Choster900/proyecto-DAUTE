<%-- 
    Document   : homepage
    Created on : 10-10-2021, 07:14:45 PM
    Author     : Sergio-Lopez
--%>

<%@page import="Model.productoDAO"%>
<%@page import="Model.ClsProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession se = request.getSession();
    if ((Integer) se.getAttribute("nivel") == null) {
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
                    <img class="d-block h-100 w-lg-100" src="https://mdbootstrap.com/img/Photos/Others/ecommerce1.jpg" alt="First slide">
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
                    <img class="d-block h-100 w-lg-100" src="https://mdbootstrap.com/img/Photos/Others/ecommerce2.jpg" alt="Second slide">
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
                    <img class="d-block h-100 w-lg-100" src="https://mdbootstrap.com/img/Photos/Others/ecommerce3.jpg" alt="Third slide">
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
                    <ul class="navbar-nav mr-auto">

                        <li class="nav-item dropdown mega-dropdown active">
                            <a class="nav-link dropdown-toggle  no-caret" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Laptop</a>
                            <div class="dropdown-menu mega-menu v-2 row z-depth-1 white" aria-labelledby="navbarDropdownMenuLink1">
                                <div class="row mx-md-4 mx-1">
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-5 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Brand</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item mb-0" href="">Sony</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Lenovo</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Apple</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Dell</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Asus</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-md-5 mt-4 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Sales</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item" href="">Laptops Up to 50% Off </a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Laptops under $399</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Laptops Up to 50% Off</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Laptops for designers</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Laptops for developers</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Processor Type</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item" href="">Intel Core i5 4th Gen.</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Intel Core i5 5th Gen.</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Intel Core i5 3th Gen.</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Intel Core i5 6th Gen.</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Intel Core i5 7th Gen.</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-5">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Customers opinions</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item" href="">Totam rem aperiam eaque</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Beatae vitae dicta sun</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Quae ab illo inventore</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Nemo enim ipsam</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Neque porro quisquam est</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown mega-dropdown">
                            <a class="nav-link dropdown-toggle no-caret" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cameras</a>
                            <div class="dropdown-menu mega-menu v-2 row z-depth-1 white" aria-labelledby="navbarDropdownMenuLink1">
                                <div class="row mx-md-4 mx-1">
                                    <div class="col-md-12 col-lg-4 sub-menu my-lg-5 mt-5 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Featured</h6>
                                        <!--Featured image-->
                                        <div class="view overlay mb-3 z-depth-1">
                                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg" class="img-fluid" alt="First sample image">
                                            <div class="mask flex-center rgba-white-slight">
                                                <p></p>
                                            </div>
                                        </div>
                                        <h4 class="mb-2">
                                            <a class="news-title-2 pl-0" href="">Lorem ipsum dolor sit</a>
                                        </h4>
                                    </div>
                                    <div class="col-md-6 col-lg-4 sub-menu my-lg-5 my-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Brands</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item" href="">Canon</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Nikon</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Sony</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">GoPro</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Samsung</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-4 sub-menu my-lg-5 my-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Accesories</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item" href="">Excepteur sint</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Sunt in culpa</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Sed ut perspiciatis</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Mollit anim id est</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Accusantium doloremque</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown mega-dropdown">
                            <a class="nav-link dropdown-toggle no-caret" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Accesories</a>
                            <div class="dropdown-menu mega-menu v-2 row z-depth-1 white" aria-labelledby="navbarDropdownMenuLink1">
                                <div class="row mx-md-4 mx-1">
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-5 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Featured</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item mb-0" href="">Mouse</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Printer</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Laptop bags</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Software</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Headphones</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-md-5 mt-4 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Related</h6>
                                        <!--Featured image-->
                                        <div class="view overlay mb-3 z-depth-1">
                                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/Work/6-col/img%20(43).jpg" class="img-fluid" alt="First sample image">
                                            <div class="mask flex-center rgba-white-slight">
                                                <p></p>
                                            </div>
                                        </div>
                                        <h4 class="mb-2">
                                            <a class="news-title-2 pl-0" href="">Lorem ipsum dolor sit</a>
                                        </h4>
                                        <p class="font-small text-uppercase dark-grey-text">
                                            <i class="fa fa-clock-o pr-2" aria-hidden="true"></i>July 17, 2017 /
                                            <i class="fa fa-comments-o px-1" aria-hidden="true"></i> 20</p>
                                    </div>
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-4">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">Bestseller</h6>
                                        <!--Featured image-->
                                        <div class="view overlay mb-3 z-depth-1">
                                            <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/6.jpg" class="img-fluid" alt="First sample image">
                                            <div class="mask flex-center rgba-white-slight">
                                                <p></p>
                                            </div>
                                        </div>
                                        <h4 class="mb-2">
                                            <a class="news-title-2 pl-0" href="">Ut labore et dolore magna</a>
                                        </h4>
                                        <p class="font-small text-uppercase dark-grey-text">
                                            <i class="fa fa-clock-o pr-2" aria-hidden="true"></i>July 16, 2017 /
                                            <i class="fa fa-comments-o px-1" aria-hidden="true"></i> 25</p>
                                    </div>
                                    <div class="col-md-6 col-xl-3 sub-menu my-xl-5 mt-4 mb-5">
                                        <h6 class="sub-title text-uppercase font-weight-bold blue-text">
                                            Customers opinion</h6>
                                        <ul class="caret-style pl-0">
                                            <li class="">
                                                <a class="menu-item" href="">Totam rem aperiam eaque</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Beatae vitae dicta sun</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Quae ab illo inventore</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Nemo enim ipsam</a>
                                            </li>
                                            <li class="">
                                                <a class="menu-item" href="">Neque porro quisquam est</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
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
                    <!-- Links -->

                    <form class="search-form" role="search">
                        <div class="form-group md-form my-0 waves-light">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                    </form>
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
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-laptop dark-grey-text mr-2" aria-hidden="true"></i> Laptops esto se gestionara por categorias</a>
                                    <a href=""></a>
                                    <span class="badge badge-danger badge-pill">43</span>
                                    </a>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-mobile-phone dark-grey-text mr-3" aria-hidden="true"></i> Smartphone</a>
                                    <span class="badge badge-danger badge-pill">32</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-tablet dark-grey-text mr-3" aria-hidden="true"></i> Tablet</a>
                                    <span class="badge badge-danger badge-pill">18</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-headphones dark-grey-text mr-3" aria-hidden="true"></i>Heahphones</a>
                                    <span class="badge badge-danger badge-pill">37</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-camera-retro dark-grey-text mr-3" aria-hidden="true"></i>Camera</a>
                                    <span class="badge badge-danger badge-pill">15</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-suitcase dark-grey-text mr-3" aria-hidden="true"></i>Accesories</a>
                                    <span class="badge badge-danger badge-pill">64</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <a class="dark-grey-text font-small">
                                        <i class="fa fa-television dark-grey-text mr-3" aria-hidden="true"></i>TV</a>
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

                            <img src="https://mdbootstrap.com/img/Photos/Others/product1.jpg" class="img-fluid" alt="sample image">
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-12 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">Asus CT-567</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-danger mb-2">bestseller</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/2.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">iPad PRO</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-danger mb-2">bestseller</span>
                                                <span class="badge badge-success mb-2 ml-2">SALE</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <h5 class="mb-0 pb-0 mt-1 font-weight-bold">
                                                            <span class="red-text">
                                                                <strong>$699</strong>
                                                            </span>
                                                            <span class="grey-text">
                                                                <small>
                                                                    <s>$920</s>
                                                                </small>
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/4.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">Dell V-964i</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-danger mb-2">bestseller</span>
                                                <span class="badge badge-info mb-2 ml-2">new</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

                                </div>
                                <!--Grid row-->
                            </div>
                            <!--/.Panel 1-->

                            <!--Panel 2-->
                            <div class="tab-pane fade" id="panel6" role="tabpanel">
                                <br>

                                <!-- Grid row -->
                                <div class="row mb-3">

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-12 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/8.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">Samsung V54</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge grey mb-2">best rated</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/7.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">Dell 786i</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-info mb-2">new</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">Canon 675-D</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-info mb-2">new</span>
                                                <span class="badge badge-success mb-2 ml-2">SALE</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <h5 class="mb-0 pb-0 mt-1 font-weight-bold">
                                                            <span class="red-text">
                                                                <strong>$1199</strong>
                                                            </span>
                                                            <span class="grey-text">
                                                                <small>
                                                                    <s>$1520</s>
                                                                </small>
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

                                </div>
                                <!--Grid row-->
                            </div>
                            <!--/.Panel 2-->

                            <!--Panel 3-->
                            <div class="tab-pane fade" id="panel7" role="tabpanel">
                                <br>
                                <!-- Grid row -->
                                <div class="row">

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-12 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/10.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">Headphones</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-danger mb-2">bestseller</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">iPhone</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-info mb-2">new</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

                                    <!--Grid column-->
                                    <div class="col-lg-4 col-md-6 mb-4">

                                        <!--Card-->
                                        <div class="card card-ecommerce">

                                            <!--Card image-->
                                            <div class="view overlay">
                                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/3.jpg" class="img-fluid" alt="sample image">
                                                <a>
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!--Card image-->

                                            <!--Card content-->
                                            <div class="card-body">
                                                <!--Category & Title-->

                                                <h5 class="card-title mb-1">
                                                    <strong>
                                                        <a href="" class="dark-grey-text">iMac</a>
                                                    </strong>
                                                </h5>
                                                <span class="badge badge-danger mb-2">bestseller</span>
                                                <!-- Rating -->
                                                <ul class="rating">
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
                                                        <i class="fa fa-star grey-text"></i>
                                                    </li>
                                                </ul>

                                                <!--Card footer-->
                                                <div class="card-footer pb-0">
                                                    <div class="row mb-0">
                                                        <span class="float-left">
                                                            <strong>1439$</strong>
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

            <!--Section: Advertising-->
            <section>

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-12">
                        <!--Image -->
                        <div class="view  z-depth-1">

                            <img src="https://mdbootstrap.com/img/Photos/Others/ecommerce5.jpg" class="img-fluid" alt="sample image">
                            <div class="mask rgba-stylish-slight">
                                <div class="dark-grey-text text-right pt-lg-5 pt-md-1 mr-5 pr-md-4 pr-0">
                                    <div>
                                        <a>
                                            <span class="badge badge-primary">SALE</span>
                                        </a>
                                        <h2 class="card-title font-weight-bold pt-md-3 pt-1">
                                            <strong>Sale from 20% to 50% on every tablet!
                                            </strong>
                                        </h2>
                                        <p class="pb-lg-3 pb-md-1 clearfix d-none d-md-block">Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                        <a class="btn mr-0 btn-primary btn-rounded clearfix d-none d-md-inline-block">Read more</a>
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
            <!--/Section: Advertising-->

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
                            productoDAO daoProductoNuevo = new productoDAO();
                            ArrayList<ClsProducto> newProducto = new ArrayList<ClsProducto>();
                        %>
                        <%                            newProducto = daoProductoNuevo.newProducto();
                            for (ClsProducto elem : newProducto) {


                        %>
                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">
                                <a href="http://localhost:8080/project/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                    <img src="http://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/4.jpg" class="img-fluid">
                                </a>
                            </div>
                            <div class="col-6">

                                <!-- Title -->
                                <a class="pt-5">
                                    <strong><%=elem.getNombre()%></strong>
                                </a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">
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
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text">
                                    <strong><%=elem.getPrecio()%></strong>
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
                            productoDAO daoProductoTopSeller = new productoDAO();
                            ArrayList<ClsProducto> topSeller = new ArrayList<ClsProducto>();
                        %>
                        <%
                            topSeller = daoProductoTopSeller.topSeller();
                            for (ClsProducto elem : topSeller) {


                        %>
                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">
                                <a href="http://localhost:8080/project/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                    <img src="http://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/6.jpg" class="img-fluid">
                                </a>
                            </div>
                            <div class="col-6">

                                <!-- Title -->
                                <a>
                                    <strong><%=elem.getNombre()%></strong>
                                </a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">
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
                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text">
                                    <strong><%=elem.getPrecio()%></strong>
                                    <span class="grey-text">
                                        <small>
                                            <s>$889</s>
                                        </small>
                                    </span>
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
                            productoDAO daoproductoRamdonProduct = new productoDAO();
                            ArrayList<ClsProducto> RamdonProducts = new ArrayList<ClsProducto>();
                        %>
                        <%
                            RamdonProducts = daoproductoRamdonProduct.ramdonProducts();
                            for (ClsProducto elem : RamdonProducts) {


                        %>
                        <!-- First row -->
                        <div class="row mt-5 py-2 mb-4 hoverable align-items-center">

                            <div class="col-6">
                                <a href="http://localhost:8080/project/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
                                    <img src="http://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/7.jpg" class="img-fluid">
                                </a>
                            </div>
                            <div class="col-6">

                                <!-- Title -->
                                <a>
                                    <strong><%=elem.getNombre()%></strong>
                                </a>

                                <!-- Rating -->
                                <ul class="rating inline-ul">
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
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                </ul>

                                <!-- Price -->
                                <h6 class="h6-responsive font-weight-bold dark-grey-text">
                                    <strong><%=elem.getPrecio()%></strong>
                                    <span class="grey-text">
                                        <small>
                                            <s>$889</s>
                                        </small>
                                    </span>
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
            <div class="divider-new">
                <h3 class="h3-responsive font-weight-bold blue-text mx-3">Related Products</h3>
            </div>

            <!--Section: Products v.5-->
            <section id="products" class="pb-5">

                <p class="text-center w-responsive mx-auto mb-5 dark-grey-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                    esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam.</p>

                <!--Carousel Wrapper-->
                <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

                    <!--Controls-->
                    <div class="controls-top">
                        <a class="btn-floating primary-color" href="#multi-item-example" data-slide="prev">
                            <i class="fa fa-chevron-left"></i>
                        </a>
                        <a class="btn-floating primary-color" href="#multi-item-example" data-slide="next">
                            <i class="fa fa-chevron-right"></i>
                        </a>
                    </div>
                    <!--Controls-->

                    <!--Indicators-->

                    <!--Indicators-->

                    <!--Slides-->
                    <div class="carousel-inner" role="listbox">

                        <!--First slide-->


                        <div class="col-md-4 mb-4">

                            <!--Card-->
                            <div class="card card-ecommerce">

                                <!--Card image-->
                                <div class="view overlay">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/14.jpg" class="img-fluid" alt="">
                                    <a>
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>
                                <!--Card image-->

                                <!--Card content-->
                                <div class="card-body">
                                    <!--Category & Title-->

                                    <h5 class="card-title mb-1">
                                        <strong>
                                            <a href="" class="dark-grey-text">Sony TV-675i</a>
                                        </strong>
                                    </h5>
                                    <span class="badge badge-danger mb-2">bestseller</span>
                                    <!-- Rating -->
                                    <ul class="rating">
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
                                            <i class="fa fa-star grey-text"></i>
                                        </li>
                                    </ul>

                                    <!--Card footer-->
                                    <div class="card-footer pb-0">
                                        <div class="row mb-0">
                                            <span class="float-left">
                                                <strong>1439$</strong>
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

                        <div class="col-md-4 clearfix d-none d-md-block mb-4">

                            <!--Card-->
                            <div class="card card-ecommerce">

                                <!--Card image-->
                                <div class="view overlay">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg" class="img-fluid" alt="">
                                    <a>
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>
                                <!--Card image-->

                                <!--Card content-->
                                <div class="card-body">
                                    <!--Category & Title-->

                                    <h5 class="card-title mb-1">
                                        <strong>
                                            <a href="" class="dark-grey-text">Samsung 786i</a>
                                        </strong>
                                    </h5>
                                    <span class="badge badge-info mb-2">new</span>
                                    <!-- Rating -->
                                    <ul class="rating">
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
                                            <i class="fa fa-star grey-text"></i>
                                        </li>
                                    </ul>

                                    <!--Card footer-->
                                    <div class="card-footer pb-0">
                                        <div class="row mb-0">
                                            <span class="float-left">
                                                <strong>1439$</strong>
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

                        <div class="col-md-4 clearfix d-none d-md-block mb-4">

                            <!--Card-->
                            <div class="card card-ecommerce">

                                <!--Card image-->
                                <div class="view overlay">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg" class="img-fluid" alt="">
                                    <a>
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>
                                <!--Card image-->

                                <!--Card content-->
                                <div class="card-body">
                                    <!--Category & Title-->

                                    <h5 class="card-title mb-1">
                                        <strong>
                                            <a href="" class="dark-grey-text">Canon 675-D</a>
                                        </strong>
                                    </h5>
                                    <span class="badge badge-danger mb-2">bestseller</span>
                                    <!-- Rating -->
                                    <ul class="rating">
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
                                    </ul>

                                    <!--Card footer-->
                                    <div class="card-footer pb-0">
                                        <div class="row mb-0">
                                            <span class="float-left">
                                                <strong>1439$</strong>
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
                        <div class="col-md-4 clearfix d-none d-md-block mb-4">

                            <!--Card-->
                            <div class="card card-ecommerce">

                                <!--Card image-->
                                <div class="view overlay">
                                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg" class="img-fluid" alt="">
                                    <a>
                                        <div class="mask rgba-white-slight"></div>
                                    </a>
                                </div>
                                <!--Card image-->

                                <!--Card content-->
                                <div class="card-body">
                                    <!--Category & Title-->

                                    <h5 class="card-title mb-1">
                                        <strong>
                                            <a href="" class="dark-grey-text">Canon 675-D</a>
                                        </strong>
                                    </h5>
                                    <span class="badge badge-danger mb-2">bestseller</span>
                                    <!-- Rating -->
                                    <ul class="rating">
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
                                    </ul>

                                    <!--Card footer-->
                                    <div class="card-footer pb-0">
                                        <div class="row mb-0">
                                            <span class="float-left">
                                                <strong>1439$</strong>
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


                        <!--First slide-->

                    </div>
                    <!--Slides-->

                </div>
                <!--Carousel Wrapper-->

            </section>
            <!-- /.Section: Last items -->

        </div>
        <!-- /.Content -->

    </div>
    <!-- /Grid row -->
</div>
<!-- /.Main Container -->
<%@include file="layout/footer.jsp" %>

