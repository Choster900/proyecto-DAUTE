<%-- 
    Document   : add
    Created on : 10-12-2021, 09:27:09 AM
    Author     : Sergio-Lopez
--%>

<%@page import="Model.ClsCategorias"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CategoriasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%!
    CategoriasDAO daoCategoria = new CategoriasDAO();
    ArrayList<ClsCategorias> listaCate = new ArrayList<>();

%>
<main>
    <div class="container">
        <form method="POST" action="../ProductoServlet" enctype='multipart/form-data'>
            <div class="row">
                <div class="col-md-4 mb-4">

                    <div class="md-form">
                        <input type="text" id="form1" class="form-control" name="txtNombre">
                        <label for="form1" class="">Nombre del producto</label>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="md-form">
                        <input type="number" step="any" id="form1" class="form-control" name="txtPrecio">
                        <label for="form1" class="">Precio del producto</label>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="md-form">
                        <input type="number" id="form1" class="form-control" name="txtStok">
                        <label for="form1" class="">Stok del producto</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="md-form">
                        <select class="mdb-select" name="sEstado">
                            <option value="1">Disponible</option>
                            <option value="2">No Disponbible</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="md-form">
                        <select class="mdb-select" name="sCategoria">
                            <%
                                listaCate = daoCategoria.mostrarCategorias();
                                for (ClsCategorias elem : listaCate) {
                            %>
                            <option value="<%=elem.getId() %>"><%=elem.getNombre() %></option>
                            <%
                                }
                            %>

                        </select>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="file-field">
                        <div class="btn btn-outline-primary btn-sm float-left">
                            <span>Subir una foto del producto</span>
                            <input type="file" name="foto">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <!--Basic textarea-->
                    <div class="md-form">
                        <textarea type="text" id="form10" class="md-textarea form-control" rows="3" name="txtDescripcion"></textarea>
                        <label for="form10">Basic textarea</label>
                    </div>
                </div>

            </div>
            <div class="row ">

                <div class="col-md-6 mb-4">
                    <button class="btn btn-outline-success display-1" name="btnAgregarProducto">Agregar el producto</button>

                </div>
            </div>
        </form>

    </div>


</main>
<%@include file="../layout/footer.jsp" %>
<!-- MDB -->
