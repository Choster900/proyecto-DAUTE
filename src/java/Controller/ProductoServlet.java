/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ClsProducto;
import Model.productoDAO;
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

/**
 *
 * @author Sergio-Lopez
 */
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    private String pathFile = "C:\\xampp\\htdocs\\serverProject";
    private File uploads = new File(pathFile);
    private String[] extens = {"ico", "png", "jpg", "jpeg"};

    ClsProducto producto = new ClsProducto();
    productoDAO DAOp = new productoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("btnAgregarProducto") != null) {
                saveProducto(request, response);
                request.getRequestDispatcher("products/home.jsp").forward(request, response);
            }else if(request.getParameter("btnEditarProducto")!=null){
                updateProducto(request, response);
                request.getRequestDispatcher("products/home.jsp").forward(request, response);
            }
        }
    }
    private void updateProducto(HttpServletRequest req, HttpServletResponse res) {
        try {
            int codigo = Integer.parseInt(req.getParameter("productoID"));
            String nombre = req.getParameter("txtNombre");
            String descrip = req.getParameter("txtDescripcion");
            Double precio = Double.parseDouble(req.getParameter("txtPrecio"));
            int estado = Integer.parseInt(req.getParameter("sEstado"));
            int stok = Integer.parseInt(req.getParameter("txtStok"));
            int categoria = Integer.parseInt(req.getParameter("sCategoria"));

            Part part = req.getPart("foto");
            if (part == null) {
                System.out.println("controllers.empServlet.saveEmpleado() no se ha seleccionado archivo");
                return;
            }
            if (isExtension(part.getSubmittedFileName(), extens)) {
                String photo = saveFile(part, uploads);

                //empleado emp = new empleado(name, age, "http://localhost/img/" + part.getSubmittedFileName(),usuario_id, depa);
                producto.setCodigoProducot(codigo);
                producto.setNombre(nombre);
                producto.setDescripcion(descrip);
                producto.setPrecio(precio);
                producto.setEstadoVenta(estado);
                producto.setStok(stok);
                producto.setCodigoCategoria(categoria);
                producto.setRutaImagen("http://localhost/serverProject/" + part.getSubmittedFileName());

                //daoEmp.insertEmpleado(emp);
                DAOp.updateProduct(producto);

            }

        } catch (Exception e) {
        }

    }
    private void saveProducto(HttpServletRequest req, HttpServletResponse res) {
        try {
            String nombre = req.getParameter("txtNombre");
            String descrip = req.getParameter("txtDescripcion");
            Double precio = Double.parseDouble(req.getParameter("txtPrecio"));
            int estado = Integer.parseInt(req.getParameter("sEstado"));
            int stok = Integer.parseInt(req.getParameter("txtStok"));
            int categoria = Integer.parseInt(req.getParameter("sCategoria"));

            Part part = req.getPart("foto");
            if (part == null) {
                System.out.println("controllers.empServlet.saveEmpleado() no se ha seleccionado archivo");
                return;
            }
            if (isExtension(part.getSubmittedFileName(), extens)) {
                String photo = saveFile(part, uploads);

                //empleado emp = new empleado(name, age, "http://localhost/img/" + part.getSubmittedFileName(),usuario_id, depa);
                producto.setNombre(nombre);
                producto.setDescripcion(descrip);
                producto.setPrecio(precio);
                producto.setEstadoVenta(estado);
                producto.setStok(stok);
                producto.setCodigoCategoria(categoria);
                producto.setRutaImagen("http://localhost/serverProject/" + part.getSubmittedFileName());

                //daoEmp.insertEmpleado(emp);
                DAOp.insertProductos(producto);

            }

        } catch (Exception e) {
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
