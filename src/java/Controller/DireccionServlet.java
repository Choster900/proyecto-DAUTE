/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ClsDireccionUsuario;
import Model.DireccionDAO;
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
public class DireccionServlet extends HttpServlet {

    DireccionDAO dao = new DireccionDAO();
    ClsDireccionUsuario user = new ClsDireccionUsuario();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("btnEnviar") != null) {
                
                user.setUsuario_ID(Integer.parseInt(request.getParameter("usuarioID")));
                user.setCodigoDepartamento(Integer.parseInt(request.getParameter("sDepartamentos")));
                user.setMunicipio(request.getParameter("Municipio"));
                user.setCalle(request.getParameter("Calle"));
                user.setLugarRef(request.getParameter("lugarRef"));
                user.setTelefono1(request.getParameter("Tel1"));
                user.setTelefono2(request.getParameter("Tel2"));
                
                dao.insertDireccionUsuario(user);
                request.getRequestDispatcher("signup.jsp").forward(request, response);

            }
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
