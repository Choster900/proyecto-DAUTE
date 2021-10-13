<%-- 
    Document   : update
    Created on : 10-12-2021, 02:24:22 PM
    Author     : Sergio-Lopez
--%>

<%@page import="Model.productoDAO"%>
<%@page import="Model.ClsProducto"%>
<%@page import="Model.ClsCategorias"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CategoriasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%!
    CategoriasDAO daoCategoria = new CategoriasDAO();
    productoDAO daoPro = new productoDAO();
    ArrayList<ClsCategorias> listaCate = new ArrayList();

%>
<%
    int codigo = Integer.parseInt(request.getParameter("code"));
    ArrayList<ClsProducto> filtrado = new ArrayList<ClsProducto>();
    filtrado = daoPro.traerInfo(codigo);
%>
<main>
    <div class="container">
        <form method="POST" action="../ProductoServlet" enctype='multipart/form-data'>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <input id="prodId" name="productoID" type="hidden" value="<%=codigo%>">
                    <div class="md-form">
                        <input type="text" id="form1" class="form-control" name="txtNombre" value="<%=filtrado.get(0).getNombre()%>">
                        <label for="form1" class="">Nombre del producto</label>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="md-form">
                        <input type="number" step="any" id="form1" class="form-control" name="txtPrecio" value="<%=filtrado.get(0).getPrecio()%>">
                        <label for="form1" class="">Precio del producto</label>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="md-form">
                        <input type="number" id="form1" class="form-control" name="txtStok" value="<%=filtrado.get(0).getStok()%>">
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
                            <option value="<%=elem.getId()%>"<%if (elem.getId()==filtrado.get(0).getCodigoCategoria()){%>
                                    selected
                                    <%
                                        }
                                    %>
                                    ><%=elem.getNombre()%></option>
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
                            <input type="file" name="foto" required="required">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 mb-6">
                    <!--Basic textarea-->
                    <div class="md-form">
                        <textarea type="text" id="form10" class="md-textarea form-control" rows="3" name="txtDescripcion"><%=filtrado.get(0).getDescripcion()%></textarea>
                        <label for="form10">Basic textarea</label>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <!--Basic textarea-->
                    <div class="col-md-6">
                        <img src="<%=filtrado.get(0).getRutaImagen()%>" class="img-fluid " alt="">
                    </div>
                </div>      

            </div>
            <div class="row ">

                <div class="col-md-6 mb-4">
                    <button class="btn btn-outline-warning display-1" name="btnEditarProducto">Editar el producto</button>

                </div>
            </div>
        </form>

    </div>


</main>
<%@include file="../layout/footer.jsp" %>