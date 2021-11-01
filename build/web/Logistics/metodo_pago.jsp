<%-- 
    Document   : metodo_pago
    Created on : 10-30-2021, 11:20:13 AM
    Author     : 16ado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%

    if ((Integer) la_session.getAttribute("nivel") == null) {
        response.sendRedirect("signup.jsp");
    }

%>
<div class="container">
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="row justify-content-center">
        <h4 class="h4-responsive">Escoge el metodo de pago</h4>
    </div>

    <div class="justify-content-center">
        <form action="${pageContext.request.contextPath}/compra_generada" method="POST">
            <input  name="codigoUsuario" type="hidden" value="<%= la_session.getAttribute("codigo")%>">

            <div class="row">
                <!--TARJETA DE BITCOIN-->
                <div class="col-md-4 mb-4">

                    <!--Section: Live preview-->
                    <section>
                        <!--Card-->
                        <div class="card">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://resizer.glanacion.com/resizer/L3rq-5J6E7L-5Lu0gTPu2cGZ8Qc=/768x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/HK44OVW45NE7HCNTPACNMRFHTA.JPG" class="card-img-top" alt="">
                                
                            </div>

                            <!--Card content-->
                            <div class="card-body">
                                <!--Title-->
                                <h4 class="card-title">Bitcoin</h4>
                                <!--Text-->
                                <p class="card-text">Bitcoin​ ​ es una criptomoneda y un sistema de pago​​ sin banco central o administrador único.​​ En principio, los usuarios de bitcoin pueden transferir dinero entre sí a través de una red entre iguales usando software libre y de código abierto..
                                </p>
                                <button class="btn btn-primary" name="Bitcoin">Bitcoin</button>
                            </div>

                        </div>
                        <!--/.Card-->

                    </section>
                    <!--Section: Live preview-->
                </div>
                <!--TARJETA DE BITCOIN--> 


                <!--TARJETA DE PAYPAL-->
                <div class="col-md-4 mb-4">

                    <!--Section: Live preview-->
                    <section>

                        <!--Card-->
                        <div class="card">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://www.paypalobjects.com/marketing/web/es/es/pay-online/illo.png" class="card-img-top" alt="">
                               
                            </div>

                            <!--Card content-->
                            <div class="card-body">
                                <!--Title-->
                                <h4 class="card-title">Paypal</h4>
                                <!--Text-->
                                <p class="card-text">PayPal es un método de pago en línea que te sigue vayas donde vayas. cuando quieras pagar, simplemente inicia sesi deseas usar para hacer el pago. PayPal es un método de pago rápido, fácil y seguro.
                                </p>
                                <button name="Paypal" class="btn btn-primary">Paypal</button>
                            </div>

                        </div>
                        <!--/.Card-->

                    </section>
                    <!--Section: Live preview-->
                </div>
                <!--TARJETA DE PAYPAL--> 


                <!--TARJETA DE CREDITO-->
                <div class="col-md-4 mb-4">

                    <!--Section: Live preview-->
                    <section>

                        <!--Card-->
                        <div class="card">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/c/c6/Three_credit_cards-_Visa%2C_Mastercard_and_American_Express_%28close-up_on_logos%29.jpg" class="card-img-top" alt="">
                               
                            </div>

                            <!--Card content-->
                            <div class="card-body">
                                <!--Title-->
                                <h4 class="card-title">Tarjeta de credito</h4>
                                <!--Text-->
                                <p class="card-text">La tarjeta de crédito es un instrumento material de identificación, que puede ser una tarjeta de plástico con una banda magnética, un microchip y un número en relieve. tarjeta de crédito Tarjeta emitida por una entidad bancaria que permita magnética en una de sus caras.
                                </p>
                                <button name="Tarjeta_credito" class="btn btn-primary">Tarjeta de credito</button>
                            </div>

                        </div>
                        <!--/.Card-->

                    </section>
                    <!--Section: Live preview-->
                </div>
                <!--TARJETA DE CREDITO-->

            </div>   
        </form>
        

    </div>
</div>
<%@include file="../layout/footer.jsp" %>

