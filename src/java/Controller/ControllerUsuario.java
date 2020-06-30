package Controller;

import Modelo.TareasDAO;
import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.util.Date;

/**
 *
 * @author JUAN PABLO
 */
public class ControllerUsuario extends HttpServlet {

    private UsuarioDAO userDAO;

    // pool de conección
    @Resource(name = "jdbc/Tareas")

    private DataSource miPool;

    @Override
    // MÉTODO DESDE EL CUÁL ARRANCA NUESTRA APLICACIÓN
    public void init() throws ServletException {

        try {
            userDAO = new UsuarioDAO(miPool);

        } catch (Exception e) {

            throw new ServletException(e);
        }

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerLogin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerLogin at " + request.getParameter("txtContrasena") + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String accion = request.getParameter("accion");
     

        switch (accion) {
            case "ingresar":
                logearse(request,response);
               
                break;
                
            case "registar_cuidador":
                
        {
            try {
                registrarCuidador(request,response);
            } catch (SQLException ex) {
                Logger.getLogger(ControllerUsuario.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
                
              
                
                
                break;
        }

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerTareas</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerTareas at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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

    private void logearse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
           Usuario user = new Usuario();


        int r = 0;
         String nom_user = request.getParameter("txtUsuario");
                String contrasena = request.getParameter("txtContrasena");

                user.setUsuario(nom_user);
                user.setPassword(contrasena);

                r = userDAO.validarUsuario(user);
                
                if (r == 1) {

                    request.getSession().setAttribute("nombre", nom_user);
                    request.getRequestDispatcher("inicioCuidador.jsp").forward(request, response);

                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }

    }

    private void registrarCuidador(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ServletException {
       
      
        
        Usuario user = new Usuario();
        
        
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String nombre_usuario = request.getParameter("nombre_usuario");
        String tdocumento = request.getParameter("tdocumento");
        String ndocumento = request.getParameter("ndocumento");
        
        int no_doc = Integer.parseInt(ndocumento);
        
         SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
        Date fecha_nacimiento = null;
        
        try {
            fecha_nacimiento = formatoFecha.parse(request.getParameter("fecha_nacimiento"));
        } catch (ParseException ex) {
            Logger.getLogger(ControllerTareas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String candena_tel = request.getParameter("telefono");
        
        int telefono = Integer.parseInt(candena_tel);
        String direccion = request.getParameter("direccion");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password_confin = request.getParameter("password-confirm");
                
        
        if (password.equals(password_confin)){
            
            user.setNombre(nombres);
            user.setApellido(apellidos);
            user.setUsuario(nombre_usuario);
            user.setCorreo(email);
            user.setDireccion(direccion);
            user.setFecha_nacimiento(fecha_nacimiento);
            user.setPassword(password);
            user.setTipo_documento(tdocumento);
            user.setNumero_documento(no_doc);
            user.setTelefono(telefono);
            user.setTipo_usuario("CUIDADOR");
            
            userDAO.agregarUsuario(user);
          
           request.getRequestDispatcher("index.jsp").forward(request, response);
            
        }else{
          
        }
        
    }

}
