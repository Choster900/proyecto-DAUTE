<%-- 
    Document   : prueba
    Created on : 10-19-2021, 12:04:13 PM
    Author     : 16ado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession();
    if (request.getAttribute("nivel") != null) {
        out.print("respuesta " + request.getAttribute("nivel"));
        int nivel = (Integer) request.getAttribute("nivel");
        if (nivel != 0) {
            ses.setAttribute("usuario", request.getAttribute("usuario"));
            ses.setAttribute("nivel", nivel);
            ses.setAttribute("codigo", request.getAttribute("codigo"));

            response.sendRedirect("homepage.jsp");

        } else {
            response.sendRedirect("signup.jsp");

        }
    }
%>