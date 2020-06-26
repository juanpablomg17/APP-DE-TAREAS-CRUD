<%-- 
    Document   : MostrarTareas
    Created on : jun 10, 2020, 1:14:41 p.m.
    Author     : JUAN PABLO
--%>

<%@page import="java.util.List"%>
<%@page import="Controller.Tareas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
          <% //Obtener la lista de tareas del controlador
        
        List<Tareas> listaTareas = (List<Tareas>) request.getAttribute("LISTATAREAS");
        

    
    %>
        
        
          <div class="app">
             <div class="container ">
         
           
            <div class="row"> 
                
                <%
                    for(Tareas t: listaTareas){           
                     
               %>
                <div class="col-md-6">
                    <div class="card" id="tarjeta">
                        <div class="card-header">
                            <h3><%= t.getNombre()%></h3>
                            <span id="span" class="badge badge-pill badge-primary ">ID - <%= t.getId()%></span>
                        </div>
                        <div class="card-body">
                            
                            
                            <p>
                                <%= t.getDescripcion()%>
                            </p>
                        </div>
                            
                            <div class="card-footer">
                                <div class="btn-group">
                                    <button class="btn btn-success">Editar</button>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-danger">Eliminar</button>
                                </div>
                            </div>
                        
                    </div>
                    
                </div>
                <%}%>
            </div>
        </div>
    
            
        </div>
        
        
    </body>
</html>
