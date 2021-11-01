<%-- 
    Document   : profile
    Created on : 10-29-2021, 04:29:03 PM
    Author     : 16ado
--%>

<%@page import="Model.ClsUsuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.usuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%!
     usuarioDAO userDAO = new usuarioDAO();
     ArrayList<ClsUsuarios> listaUser = new ArrayList<ClsUsuarios>();
%>
<%
    int codeUser = (Integer)la_session.getAttribute("codigo");
    listaUser = userDAO.showUser(codeUser);
    
%>
<div class="container">
    <!--Main layout-->
    <main>
        <div class="container-fluid">

            <!--Section: Team v.1-->
            <section class="section team-section">

                <!--Grid row-->
                <div class="row text-center">

                    <!-- Pedidos column -->
                    <div class="col-md-8">
                       
                        <div class="row">
                            <div class="col-md-12 mb-1">
                                <!-- Tabs -->
                                <!-- Nav tabs -->
                                <div class="tabs-wrapper">
                                    <ul class="nav classic-tabs tabs-primary primary-color" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link waves-light active" data-toggle="tab" href="#panel83" role="tab">Personal Clients</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link waves-light" data-toggle="tab" href="#panel84" role="tab">Corporate Clients</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Tab panels -->
                                <div class="tab-content card">
                                    <!--Panel 1-->
                                    <div class="tab-pane fade show active" id="panel83" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>First Name</th>
                                                        <th>Last Name</th>
                                                        <th>Username</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Abby</td>
                                                        <td>Barrett</td>
                                                        <td>@abbeme</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Danny</td>
                                                        <td>Collins</td>
                                                        <td>@dennis</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Clara</td>
                                                        <td>Ericson</td>
                                                        <td>@claris</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">4</th>
                                                        <td>Jessie</td>
                                                        <td>Doe</td>
                                                        <td>@jessiedoeofficial</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">5</th>
                                                        <td>Saul</td>
                                                        <td>Hudson</td>
                                                        <td>@slash</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!--/.Panel 1-->
                                    <!--Panel 2-->
                                    <div class="tab-pane fade" id="panel84" role="tabpanel">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Company Name</th>
                                                        <th>Username</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>PiedPiper</td>
                                                        <td>@piedpiper</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Github, Inc</td>
                                                        <td>@github</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Twitter, Inc</td>
                                                        <td>@twitter</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">4</th>
                                                        <td>Alphabet, Inc</td>
                                                        <td>@alphabet</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">5</th>
                                                        <td>Adobe Corporation</td>
                                                        <td>@adobe</td>
                                                        <td>
                                                            <a class="blue-text" data-toggle="tooltip" data-placement="top" title="See results"><i class="fa fa-user"></i></a>
                                                            <a class="teal-text" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="red-text" data-toggle="tooltip" data-placement="top" title="Remove"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!--/.Panel 2-->
                                </div>
                                <!-- /.Tabs -->
                            </div>
                        </div>
                    </div>
                    <!-- Pedidos column -->


                    <!-- Profile column -->
                    <div class="col-md-4 mb-1">

                        <!--Card-->
                        <div class="card profile-card">
                            <div class="text-center">
                                <!--Avatar-->
                                <img height="250px" width="250px" src="<%=listaUser.get(0).getFoto()%>" class="rounded-circle img-fluid text-center" alt="First sample avatar image">
                            </div>
                            <hr>
                            <div class="card-body pt-0 mt-0">
                                <!--Name-->
                                <div class="text-center">
                                    <h3 class="mb-3 font-weight-bold"><strong><%=listaUser.get(0).getName()%></strong></h3>
                                    <h6 class="font-weight-bold blue-text mb-4"><%=listaUser.get(0).getTypeSubNombre()%></h6>
                                </div>

                                <ul class="striped list-unstyled">
                                    <li><strong>E-mail address:</strong><%=listaUser.get(0).getEmail() %></li>

                                    <li><strong>Phone number:</strong> +503 7140 5653</li>

                                    <li><strong>Nickname: </strong><%=listaUser.get(0).getName()%></li>

                                    <li><strong>Genero:</strong><%=listaUser.get(0).getGenero()%></li>

                                </ul>

                            </div>

                        </div>
                        <!--Card-->

                    </div>
                    <!-- Profile column -->

                    

                </div>
                <!--Grid row-->

            </section>
            <!--Section: Team v.1-->

        </div>
    </main>
    <!--Main layout-->
</div>

<br>
<br>
<br>
<br>

<%@include file="../layout/footer.jsp" %>