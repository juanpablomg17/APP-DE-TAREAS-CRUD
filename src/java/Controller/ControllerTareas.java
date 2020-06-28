
package Controller;

import Modelo.Tareas;
import Modelo.TareasDAO;
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


public class ControllerTareas extends HttpServlet {

    private TareasDAO modeloTareas;
    
    // pool de conección
        
     @Resource(name="jdbc/Tareas")
     
     private DataSource miPool;
     
     @Override
     // MÉTODO DESDE EL CUÁL ARRANCA NUESTRA APLICACIÓN
     public void init() throws ServletException{

         try {
             modeloTareas = new TareasDAO(miPool);
             
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
            out.println("<title>Servlet ControllerTareas</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerTareas at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        try {
            //OBTENER LA LISTA DE PRODUCTOS DESDE EL MODELO
            
            
            // LEER EL PARÁMETRO DEL FORMULARIO
            String elComando = request.getParameter("instruccion");
            
            // SI NO SE ENVÍA EL PARÁMETRO, LISTAR LAS TAREAS
            
            if (elComando==null) elComando="listar";
            
            switch (elComando){
                case "listar":
                    
                   obtenerTareas(request,response);
                    
                    
                    break;
                    
                case "insertarBBDD":
            
                            agregarTareas(request,response);
            
                    
                    
                 
                    break;
                  
                case "cargar":
            {
                try {
                    cargaTareas(request, response);
                } catch (Exception ex) {
                    Logger.getLogger(ControllerTareas.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
                    break;
                    
                case "actualizarBBDD":
                    
                
                    actualizarTareas(request,response);
                    
                  break;
                  
                case "eliminar":
                    
                    eliminarTareas(request,response);
                    break;
                    
                case "buscar":
                   
                    buscarTarea(request,response);
                    
                    
                    break;
                    
                    
            }} catch (SQLException ex) {
            Logger.getLogger(ControllerTareas.class.getName()).log(Level.SEVERE, null, ex);
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

    private void obtenerTareas(HttpServletRequest request, HttpServletResponse response) {
         try {
             List<Tareas> listaTareas;
             listaTareas = modeloTareas.getTareas();
             
             
              // AGREGAR LISTA DE PRODUCTOS AL REQUEST
              // NOTA, EL MÉTODO setAttribute recibe dos parámetros, el primero es el nombre que 
              // INDEBTIFICARÁ EL JSP Y EL SEGUNDO LA LISTA DE TAREAS
              request.setAttribute("LISTATAREAS", listaTareas);
        
        
        // ENVIAR ESE REQUEST A LA PÁGINA JSP
        
              RequestDispatcher miDispatcher = request.getRequestDispatcher("/ListaTareas.jsp");
              
              miDispatcher.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void agregarTareas(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
       
        // leer la info que viene del formulario
        String nombre = request.getParameter("input-name");
        String descripcion = request.getParameter("textArea-descripcion");
        
        SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
        Date fecha = null;
        
        try {
            fecha = formatoFecha.parse(request.getParameter("fecha"));
        } catch (ParseException ex) {
            Logger.getLogger(ControllerTareas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        //Crear Objeto de tipo Tareas
        
        Tareas nuevaTarea = new Tareas(nombre, descripcion,fecha);
        
        
        // Enviar el objeto al modelo y después insertar el objeto en la BBDD
        
        modeloTareas.agregarTareas(nuevaTarea);
        // Volver al lista de Tareas
        
        obtenerTareas(request, response);
     
     
        
    }

    private void cargaTareas(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        //   LEER EL CÓDIGO DEL ARTÍCULO 
        
        String ID = request.getParameter("id");
        
        int id = Integer.parseInt(ID);
        
        // ENVIAR EL CÓDIGO AL MODELO
        
         Tareas tarea = modeloTareas.getTarea(id);
        
        // COLORCAR LOS ATRIBUTOS CORRESPONDIENTS 
        
        request.setAttribute("TAREA_ACTUALIZAR", tarea);
        
        // ENVIAR LA INFORMACIÓN AL FORMULARIO DE ACTUALIZAR
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ActualizarTareas.jsp");
        
        dispatcher.forward(request, response);
       
    }

    private void actualizarTareas(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        
        // LEER LA INFORMACIÓN QUE VIENE DEL FORMULARIO
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String IDCAMBIAR= request.getParameter("id");
        
        
       
        
        int id = Integer.parseInt(IDCAMBIAR);
        
        // CREAR OBJETO DE TIPO TAREAS CON LA INFO DEL FORMULARIO
        
        Tareas tareaActualizada = new Tareas(id,nombre, descripcion);
        
        // ACTUALIZAR LA BBDD CON LA INFO DEL OBJETO TAREAS
        
         modeloTareas.actualizarTareas(tareaActualizada);
        
        
        // VOLVER AL LISTADO CON LA INFO ACTUALIZADA
        
        obtenerTareas(request, response);
    }

    private void eliminarTareas(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
       String idSolicitud = request.getParameter("idEliminar");
       
       PrintWriter out = response.getWriter();
       
     
       
       
       modeloTareas.eliminarTareas(idSolicitud);
       
       
       obtenerTareas(request, response);
       
    }

    private void buscarTarea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String numeroCadena = request.getParameter("busca_id");
        
        int id = 0;
        id = Integer.parseInt(numeroCadena);
        
        List<Tareas> tarea = modeloTareas.BuscarTarea(id);
        
        
             
             
             
             
             
             
        request.setAttribute("TAREA",tarea);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("Busqueda.jsp");
        
        dispatcher.forward(request, response);
        
        
        
    }

  

}
