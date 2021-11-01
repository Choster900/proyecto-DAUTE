/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ClsOrden_Detalleorden;
import Model.Detalle_compraDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 16ado
 */
public class compra_generada extends HttpServlet {

    ClsOrden_Detalleorden orden = new ClsOrden_Detalleorden();
    Detalle_compraDAO dao = new Detalle_compraDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("Bitcoin") != null) {
                orden.setCodigoUsuario(Integer.parseInt(request.getParameter("codigoUsuario")));
                orden.setMetodoPago(3);
                dao.insertarOrden(orden);
                dao.generarFactura(orden);
            } else if (request.getParameter("Paypal") != null) {
                orden.setCodigoUsuario(Integer.parseInt(request.getParameter("codigoUsuario")));
                orden.setMetodoPago(2);
                dao.insertarOrden(orden);
                dao.generarFactura(orden);
            } else if (request.getParameter("Tarjeta_credito") != null) {
                orden.setCodigoUsuario(Integer.parseInt(request.getParameter("codigoUsuario")));
                orden.setMetodoPago(1);
                dao.insertarOrden(orden);
                dao.generarFactura(orden);
            }
            request.getRequestDispatcher("Logistics/cart.jsp").forward(request, response);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
