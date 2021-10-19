<%-- 
    Document   : navbar
    Created on : 10-10-2021, 07:21:48 PM
    Author     : Sergio-Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession la_session = request.getSession();

%>
<header>
    <!-- Sidebar navigation -->
    <ul id="slide-out" class="side-nav custom-scrollbar">
        <!-- Logo -->
        <li>
            <div class="logo-wrapper waves-light">
                <a href="${pageContext.request.contextPath}/homepage.jsp">
                    <img src="https://mdbootstrap.com/img/logo/mdb-transparent.png" class="img-fluid flex-center">
                </a>
            </div>
        </li>
        <!--/. Logo -->
        <!--Social-->
        <li>
            <ul class="social">
                <li>
                    <a class="fb-ic">
                        <i class="fa fa-facebook"> </i>
                    </a>
                </li>
                <li>
                    <a class="pin-ic">
                        <i class="fa fa-pinterest"> </i>
                    </a>
                </li>
                <li>
                    <a class="gplus-ic">
                        <i class="fa fa-google-plus"> </i>
                    </a>
                </li>
                <li>
                    <a class="tw-ic">
                        <i class="fa fa-twitter"> </i>
                    </a>
                </li>
            </ul>
        </li>
        <!--/Social-->
        <!--Search Form-->
        <li>
            <form class="search-form" role="search">
                <div class="form-group md-form mt-0 pt-1 waves-light">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
        </li>
        <!--/.Search Form-->
        <!-- Side navigation links -->
        <li>
            <ul class="collapsible collapsible-accordion">
                <li>
                    <a class="collapsible-header waves-effect arrow-r">
                        <i class="fa fa-shopping-cart"></i> Cart page
                        <i class="fa fa-angle-down rotate-icon"></i>
                    </a>
                    <div class="collapsible-body">
                        <ul>
                            <li>
                                <a href="../cart/cart-v1.html" class="waves-effect">Cart V.1</a>
                            </li>
                            <li>
                                <a href="../cart/cart-v2.html" class="waves-effect">Cart V.2</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="collapsible-header waves-effect arrow-r">
                        <i class="fa fa-hand-pointer-o"></i> Category page
                        <i class="fa fa-angle-down rotate-icon"></i>
                    </a>
                    <div class="collapsible-body">
                        <ul>
                            <li>
                                <a href="../category/category-v1.html" class="waves-effect">Category V.1</a>
                            </li>
                            <li>
                                <a href="../category/category-v2.html" class="waves-effect">Category V.2</a>
                            </li>
                            <li>
                                <a href="../category/category-v3.html" class="waves-effect">Category V.3</a>
                            </li>
                            <li>
                                <a href="../category/category-v4.html" class="waves-effect">Category V.4</a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li>
                    <a class="collapsible-header waves-effect arrow-r">
                        <i class="fa fa-bookmark-o"></i> Homepage
                        <i class="fa fa-angle-down rotate-icon"></i>
                    </a>
                    <div class="collapsible-body">
                        <ul>
                            <li>
                                <a href="../homepage/homepage-v1.html" class="waves-effect">Homepage V.1</a>
                            </li>
                            <li>
                                <a href="../homepage/homepage-v2.html" class="waves-effect">Homepage V.2</a>
                            </li>
                            <li>
                                <a href="../homepage/homepage-v3.html" class="waves-effect">Homepage V.3</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="collapsible-header waves-effect arrow-r">
                        <i class="fa fa-camera-retro"></i> Product page
                        <i class="fa fa-angle-down rotate-icon"></i>
                    </a>
                    <div class="collapsible-body">
                        <ul>
                            <li>
                                <a href="../product/product-v1.html" class="waves-effect">Product V.1</a>
                            </li>
                            <li>
                                <a href="../product/product-v2.html" class="waves-effect">Product V.2</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="../contact/contact.html" class="collapsible-header waves-effect">
                        <i class="fa fa-envelope"></i> Contact</a>
                </li>

            </ul>
        </li>
        <!--/. Side navigation links -->
        <div class="sidenav-bg mask-strong"></div>
    </ul>
    <!--/. Sidebar navigation -->
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg  navbar-light scrolling-navbar white">
        <div class="container">
            <!-- SideNav slide-out button -->
            <div class="float-left mr-2">
                <a href="#" data-activates="slide-out" class="button-collapse">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
            <a class="navbar-brand font-weight-bold" href="http://localhost:8080/project/homepage.jsp">
                <strong>SHOP</strong>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link waves-effect waves-light dark-grey-text font-weight-bold" href="#">
                            <i class="fa fa-envelope blue-text"></i> Contact
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item ml-3">
                        <a class="nav-link waves-effect waves-light dark-grey-text font-weight-bold" href="#">
                            <i class="fa fa-gear blue-text"></i> Settings</a>
                    </li>
                    <li class="nav-item dropdown ml-3">
                        <a class="nav-link dropdown-toggle waves-effect waves-light dark-grey-text font-weight-bold" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user blue-text"></i> <%=la_session.getAttribute("usuario")%>  <%=la_session.getAttribute("codigo")%></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="navbarDropdownMenuLink-4">
                            <a class="dropdown-item waves-effect waves-light" href="#">My account</a>
                            <a class="dropdown-item waves-effect waves-light" href="${pageContext.request.contextPath}/signup.jsp?signout=true">Log out</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /.Navbar -->

</header>
<!-- /.Navigation -->
