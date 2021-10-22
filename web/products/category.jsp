<%-- 
    Document   : category
    Created on : 10-19-2021, 01:03:39 PM
    Author     : 16ado
--%>

<%@page import="Model.ClsProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.productoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<!--Section: Last items-->
<%!
    productoDAO daoprod = new productoDAO();
    ArrayList<ClsProducto> filtradoProducto = new ArrayList<>();
    
%>
<%
    int categoria = Integer.parseInt(request.getParameter("class"));
%>
<hr>
<hr>
<div class="container">
    <div class="divider-new">
        <h3 class="h3-responsive font-weight-bold blue-text mx-3">Related Products <%=categoria %></h3>
    </div>

    <!--Section: Products v.5-->
    <section id="products" class="pb-5">

        <p class="text-center w-responsive mx-auto mb-5 dark-grey-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
            esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam.</p>

        <!--Carousel Wrapper-->
        <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">


            <div class="carousel-inner" role="listbox">

                <!--First slide-->

                <%
                    filtradoProducto = daoprod.typeCategory(categoria);
                    for (ClsProducto elem : filtradoProducto) {
                %>
                <div class="col-md-4 mb-4">

                    <!--Card-->
                    <div class="card card-ecommerce">

                        <!--Card image-->
                        <div class="view overlay">
                            <img src="<%=elem.getRutaImagen() %>" class="img-fluid" alt="">
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
                                    <a href="" class="dark-grey-text"><%=elem.getNombre() %></a>
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
                <%
                        }
                %>
                
                
                


                <!--First slide-->

            </div>
            <!--Slides-->

        </div>
        <!--Carousel Wrapper-->

    </section>
    <!-- /.Section: Last items -->
</div>
<%@include file="../layout/footer.jsp" %>