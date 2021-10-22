/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CarritoDAO;
import Model.ClsCart;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author 16ado
 */
public class CartSevlet extends HttpServlet {

    CarritoDAO carrito = new CarritoDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    ClsCart cart = new ClsCart();
    CarritoDAO daocart = new CarritoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("user") != null) {
                insertCarrito(request, response);
                int code = (Integer.parseInt(request.getParameter("prod")));
                request.getRequestDispatcher("products/viewproduct.jsp?product="+code).forward(request, response);
            } 
            else if (request.getParameter("btnElimiarCart") != null) {
                int code = (Integer.parseInt(request.getParameter("btnElimiarCart")));
                cart.setCodigoCarrito(code);
                daocart.delete_carrito(cart);
                request.getRequestDispatcher("Logistics/cart.jsp").forward(request, response);
            }
        }
    }

    private void insertCarrito(HttpServletRequest req, HttpServletResponse res) {
        try {
            cart.setCodigoUsuario(Integer.parseInt(req.getParameter("user")));
            cart.setCodigoProducto(Integer.parseInt(req.getParameter("prod")));
            cart.setTipo_suscripcion(Integer.parseInt(req.getParameter("typeSub")));
            daocart.insertCarrito_de_compras(cart);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
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
