<%-- 
    Document   : homeProducts
    Created on : 10-12-2021, 08:53:58 AM
    Author     : Sergio-Lopez
--%>

<%@page import="Model.ClsProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.productoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%!
    productoDAO daoProducto = new productoDAO();
    ArrayList<ClsProducto> listapro = new ArrayList();
%>
<main>
    <!-- Main Container -->
    <div class="container">
        <section class="section my-5 pb-5">
            <!-- Shopping Cart table -->
            <div class="table-responsive">
                <table class="table product-table">
                    <!-- Table head -->
                    <thead>
                        <tr>
                            <th><a href="http://localhost:8080/project/products/add.jsp" class="btn btn-outline-success">Agregar</a></th>
                            <th class="font-weight-bold">
                                <strong>Product</strong>
                            </th>
                            <th class="font-weight-bold">
                                <strong>Descripcion</strong>
                            </th>
                            <th></th>
                            <th class="font-weight-bold">
                                <strong>Precio</strong>
                            </th>
                            <th class="font-weight-bold">
                                <strong>Estado</strong>
                            </th>
                            <th class="font-weight-bold">
                                <strong>stok</strong>
                            </th>
                            <th class="font-weight-bold">
                                <strong>Categoria</strong>
                            </th>
                            <th></th>
                        </tr>
                    </thead>
                    <!-- /.Table head -->
                    <!-- Table body -->
                    <tbody>
                        <%
                            listapro = daoProducto.productosHome();
                            for (ClsProducto elem : listapro) {
                        %>
                        <!-- First row -->
                        <tr>
                            <th scope="row">
                                <img src="<%=elem.getRutaImagen() %>" alt="" class="img-fluid z-depth-0">
                            </th>
                            <td>
                                <h5 class="mt-3">
                                    <strong><%=elem.getNombre()%></strong>
                                </h5>
                                <p class="text-muted"><%=elem.getNombreCategoria()%></p>
                            </td>
                            <!--<td><%=elem.getDescripcion()%></td>-->
                             <td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy </td>
                            <td></td>
                            <td>$<%=elem.getPrecio()%></td>
                            <td class="text-center text-md-left">
                                <span class="qty"><%=elem.getEstadoVent()%> </span>

                            </td>
                            <td class="font-weight-bold">
                                <strong><%=elem.getStok()%></strong>
                            </td>
                            <td>
                                <%=elem.getNombreCategoria()%>
                            </td>
                            <td>
                                <a type="button" href="http://localhost:8080/project/products/update.jsp?code=<%=elem.getCodigoProducot() %>" class="btn btn-sm btn-outline-warning" data-toggle="tooltip" data-placement="top" title="Remove item">Editar
                                </a>
                            </td>
                        </tr>
                        <!-- /.First row -->
                        <%
                            }
                        %>
                        <!-- Fourth row -->
                        <tr>
                            <td colspan="3"></td>
                            <td>
                                <h4 class="mt-2">
                                    <strong>Total</strong>
                                </h4>
                            </td>
                            <td class="text-right">
                                <h4 class="mt-2">
                                    <strong>$2600</strong>
                                </h4>
                            </td>
                            <td colspan="3" class="text-right">
                                <button type="button" class="btn btn-primary btn-rounded">Complete purchase
                                    <i class="fa fa-angle-right right"></i>
                                </button>
                            </td>
                        </tr>
                        <!-- Fourth row -->
                    </tbody>
                    <!-- /.Table body -->
                </table>
            </div>
            <!-- Shopping Cart table -->
        </section>
    </div>
    <!-- /Main Container -->
</main>
<%@include file="../layout/footer.jsp" %>
