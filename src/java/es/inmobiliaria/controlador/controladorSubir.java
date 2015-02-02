package es.inmobiliaria.controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author MarcosFrancisco
 */

@MultipartConfig
@WebServlet(urlPatterns = {"/controlsubir"})


public class controladorSubir extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean error = false;
        String descripcion = request.getParameter("descripcion"); // Retrieves <input type="text" name="description">
        Part archivoPost = request.getPart("archivo"); // Retrieves <input type="file" name="archivo">
        String nombreArchivoPost = archivoPost.getSubmittedFileName();
        InputStream input = archivoPost.getInputStream();

        String destino = getServletContext().getRealPath("/") +  "subir/img/";

        response.setContentType("application/json;charset=UTF-8");

        try {
            byte[] buffer = new byte[2048];
            OutputStream output = new FileOutputStream( destino + nombreArchivoPost);
            try {
                int bytesRead;
                while ((bytesRead = input.read(buffer)) != -1) {
                    output.write(buffer, 0, bytesRead);

                }
            }catch(Exception e){
                error = true;
            } finally {
                output.close();
            }
        }catch(Exception e){
                error = true;
            } finally {
            input.close();
        }
        try (PrintWriter out = response.getWriter()){
            if(error){
            out.print("{\"r\":0}");
            }else{
            out.print("{\"r\":1}");
            }
            
            /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Controlador Subir</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> descripcion: " + descripcion + "  Achivo: "+ nombreArchivoPost +"</h1>");
            out.println("<img src='/subir/"+nombreArchivoPost+"'/>");
            out.println("</body>");
            out.println("</html>");*/
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
