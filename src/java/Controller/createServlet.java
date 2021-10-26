/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ClsUsuarios;
import Model.Signup;
import Model.usuarioDAO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author 16ado
 */
@MultipartConfig
public class createServlet extends HttpServlet {

    private String pathFile = "C:\\xampp\\htdocs\\serverProject";
    private File uploads = new File(pathFile);
    private String[] extens = {"ico", "png", "jpg", "jpeg"};

    ClsUsuarios user = new ClsUsuarios();
    usuarioDAO daoUser = new usuarioDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("btnCreate") != null) {
                createUser(request, response);

                Signup sign = new Signup();
                String usuario = request.getParameter("Name");
                String clave = request.getParameter("password");
                int code = sign.getCodigoUsuario(usuario, clave);

                request.setAttribute("codigo", code);

                request.getRequestDispatcher("address.jsp").forward(request, response);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());

        }
    }

    private void createUser(HttpServletRequest req, HttpServletResponse res) {
        try {
            String nombre = req.getParameter("Name");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            int rol = 3;
            int typeSub = Integer.parseInt(req.getParameter("tipoSuscripcion"));
            String genero = req.getParameter("genero");

            Part part = req.getPart("foto");
            if (part == null) {
                System.out.println("controllers.empServlet.saveEmpleado() no se ha seleccionado archivo");
                return;
            }
            if (isExtension(part.getSubmittedFileName(), extens)) {
                String photo = saveFile(part, uploads);

                user.setName(nombre);
                user.setEmail(email);
                user.setPass(password);
                user.setRol(rol);
                user.setTypeSub(typeSub);
                user.setGenero(genero);
                user.setFoto("http://localhost/serverProject/" + part.getSubmittedFileName());

                daoUser.insertUser(user);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());

        }

    }

    private String saveFile(Part part, File pathUploads) {
        String pathABsolute = "";
        try {
            Path path = Paths.get(part.getSubmittedFileName());
            String filename = path.getFileName().toString();
            InputStream input = part.getInputStream();

            if (input != null) {
                File file = new File(pathUploads, filename);
                pathABsolute = file.getAbsolutePath();
                Files.copy(input, file.toPath());

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return pathABsolute;
    }

    private boolean isExtension(String filename, String[] extensions) {
        for (String et : extensions) {
            if (filename.toLowerCase().endsWith(et)) {
                return true;
            }
        }
        return false;
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
