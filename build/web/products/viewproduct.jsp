<%-- 
    Document   : viewproduct
    Created on : 10-18-2021, 01:18:20 PM
    Author     : 16ado
--%>

<%@page import="Model.ClsProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.productoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%!
    productoDAO daoproducto = new productoDAO();
%>
<%    int codigo = Integer.parseInt(request.getParameter("product"));
    ArrayList<ClsProducto> prod = new ArrayList<ClsProducto>();
    prod = daoproducto.traerInfo(codigo);

%>

<div class="container mt-5 pt-3">

    <!--Section: Product detail -->
    <section id="productDetails" class="pb-5">

        <!--News card-->
        <div class="card mt-5 hoverable">
            <div class="row mt-5">
                <div class="col-lg-6">

                    <!--Carousel Wrapper-->
                    <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">

                        <!--Slides-->
                        <div class="carousel-inner text-center text-md-left" role="listbox">
                            <div class="carousel-item active">
                                <img src="<%=prod.get(0).getRutaImagen()%>" alt="First slide" class="img-fluid">
                            </div>
                            <!--<div class="carousel-item ">
                                <img src="" alt="First slide" class="img-fluid">
                            </div>-->
                        </div>
                        <!--/.Slides-->

                        <!--Thumbnails-->
                        <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                        <!--/.Thumbnails-->

                    </div>
                    <!--/.Carousel Wrapper-->
                </div>
                <div class="col-lg-5 mr-3 text-center text-md-left">
                    <h2 class="h2-responsive text-center text-md-left product-name font-weight-bold dark-grey-text mb-1 ml-xl-0 ml-4">
                        <strong><%=prod.get(0).getNombre()%></strong>
                    </h2>
                    <span class="badge badge-danger product mb-4 ml-xl-0 ml-4">bestseller</span>
                    <h3 class="h3-responsive text-center text-md-left mb-5 ml-xl-0 ml-4">
                        <%
                        int sub = (Integer) la_session.getAttribute("typeSub");
                            if (sub == 2) {
                                double tot = prod.get(0).getPrecio() * 0.1;
                        %>
                        <span class="red-text font-weight-bold">
                            <strong>$<%=prod.get(0).getPrecio()-tot%></strong>
                        </span>
                        <span class="grey-text">
                            <small>
                                <p>descuento $<%=String.format("%.2f", prod.get(0).getPrecio())  %></p>
                            </small>
                        </span>
                        <%
                            }else{
                        %>
                       <span class="red-text font-weight-bold">
                            <strong>$<%=prod.get(0).getPrecio()%></strong>
                        </span>
                        <%
                            }
                        %>
                        
                        <%
                            
                        %>
                    </h3>

                    <!--Accordion wrapper-->
                    <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="card card-ecommerce">
                            <div class="card-header pl-0" role="tab" id="headingOne">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <h5 class="mb-0">
                                        Description
                                        <i class="fa fa-angle-down rotate-icon"></i>
                                    </h5>
                                </a>
                            </div>
                            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="dark-grey-text pl-0">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente nesciunt atque
                                        nemo neque ut officiis nostrum incidunt maiores, magni optio et sunt suscipit
                                        iusto nisi totam quis, nobis mollitia necessitatibus.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card card-ecommerce">
                            <div class="card-header pl-0" role="tab" id="headingTwo">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <h5 class="mb-0">
                                        Details
                                        <i class="fa fa-angle-down rotate-icon"></i>
                                    </h5>
                                </a>
                            </div>
                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                <div class="dark-grey-text pl-0">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente nesciunt atque
                                        nemo neque ut officiis nostrum incidunt maiores, magni optio et sunt suscipit
                                        iusto nisi totam quis, nobis mollitia necessitatibus.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card card-ecommerce">
                            <div class="card-header pl-0" role="tab" id="headingThree">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <h5 class="mb-0">
                                        Shipping
                                        <i class="fa fa-angle-down rotate-icon"></i>
                                    </h5>
                                </a>
                            </div>
                            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                <div class="dark-grey-text pl-0">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente nesciunt atque
                                        nemo neque ut officiis nostrum incidunt maiores, magni optio et sunt suscipit
                                        iusto nisi totam quis, nobis mollitia necessitatibus.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.Accordion wrapper-->

                    <!-- Add to Cart -->
                    <section class="color">
                        <div class="mt-5">
                            

                            <div class="row mt-3 mb-4">
                                <div class="col-md-12 text-center text-md-left text-md-right">

                                    <a class="btn btn-primary btn-rounded"
                                       name="btnAddCart"
                                       href="${pageContext.request.contextPath}/CartSevlet?user=<%=la_session.getAttribute("codigo")%>&prod=<%=prod.get(0).getCodigoProducot()%>&typeSub=<%=la_session.getAttribute("typeSub")%>"
                                       >
                                        <i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Add to cart
                                    </a>

                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- /.Add to Cart -->
                </div>
            </div>
        </div>
    </section>
    <!-- /.Section: Product detail -->

    <div class="divider-new">
        <h3 class="h3-responsive font-weight-bold blue-text mx-3">Product Reviews</h3>
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
            <ol class="carousel-indicators">
                <li class="primary-color" data-target="#multi-item-example" data-slide-to="0" class="active"></li>
                <li class="primary-color" data-target="#multi-item-example" data-slide-to="1"></li>
                <li class="primary-color" data-target="#multi-item-example" data-slide-to="2"></li>
            </ol>
            <!--Slides-->
            <div class="carousel-inner" role="listbox">

                <!--Indicators-->
                <%
                    int n = 1, i = 1;
                    boolean f = true;
                    if (f) {
                %>
                <div class="carousel-item active">

                    <%
                        }
                        ArrayList<ClsProducto> topProduct = new ArrayList<ClsProducto>();
                        topProduct = daoproducto.footerRamdonProducts();
                        for (ClsProducto elem : topProduct) {

                            if (n == 1 || n == 2 || n == 3) {
                                f = false;
                    %>  
                    <div class="col-md-4 mb-4">

                        <!--Card-->
                        <div class="card card-ecommerce">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="<%=elem.getRutaImagen()%>" class="img-fluid" alt="">
                                <a href="${pageContext.request.contextPath}/products/viewproduct.jsp?product=<%=elem.getCodigoProducot()%>">
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
                                <span class="badge badge-danger mb-2">bestseller</span>
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
                                                        }else{
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
                                        <span class="float-left">
                                            <strong><%=elem.getPrecio()%></strong>
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


                    <%n++;
                    } else {
                        n = 1;
                    %>
                </div>
                <div class="carousel-item">

                    <%
                        }

                    %>

                    <%                    }
                    %>
                </div>
                <!--Slides-->

            </div>
            <!--Carousel Wrapper-->

    </section>
    <!--Section: Products v.5-->

</div>
<%@include file="../layout/footer.jsp" %>