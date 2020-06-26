

<%@page import="java.util.List"%>
<%@page import="Controller.Tareas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>
<%@page import="Modelo.*"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>APP DE TAREAS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/styles.css">
    </head>
    

    
    
    <body >
            
        <div id="todo">
             <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="ControllerTareas" onclick="obtenerTareas">APP DE TAREAS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                   <li class="nav-item">
                       <a class="nav-link" href="AgregarTareas.jsp">Agregar Tareas</a>
                    </li>
                  
                </ul>
            </div>
        </nav>
        
         <div class="app">
             <div class="container ">
         
           
            <div class="row"> 
                
            
               
               
               <c:forEach var="varTempTarea" items="${LISTATAREAS}">
                   
                   <c:url var="linkTemp" value="ControllerTareas">
                       
                       <c:param name="instruccion" value="cargar"></c:param>
                       <c:param name="id" value="${varTempTarea.id}"></c:param>
                       
                   </c:url>
                   
                    <c:url var="linkTempEliminar" value="ControllerTareas">
                       
                       <c:param name="instruccion" value="eliminar"></c:param>
                       <c:param name="idEliminar" value="${varTempTarea.id}"></c:param>
                       
                   </c:url>
                   
                   
                   
                    <div class="col-md-6">
                    <div class="card" id="tarjeta">
                        <div class="card-header">
                            <h3>${varTempTarea.nombre}</h3>
                            <span id="span" class="badge badge-pill badge-primary ">ID - ${varTempTarea.id}</span>
                        </div>
                        <div class="card-body">
                            
                            <div>
                                <p>
                                    ${varTempTarea.descripcion}
                                </p>
                                
                            </div>
                                
                                <div>
                                    <h4>
                                      <span id="span" class="badge badge-pill badge-primary ">FECHA - ${varTempTarea.fecha}</span>
                                        
                                    </h4>
                                </div>
                                      
                                 <div>
                                     
                                     
                                     <img src="<%=request.getContextPath()%>/ControllerIMG?id=${varTempTarea.id}">
                                     
                                 </div>         
                            
                                
                            
                        </div>
                                
                               
                            
                            <div class="card-footer">
                                <div class="btn-group">
                                    <a class="btn btn-success" href="${linkTemp}">Editar</a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-danger color-white" href="${linkTempEliminar}">Eliminar</a>
                                </div>
                            </div>
                        
                    </div>
                    
                </div>
                   
               </c:forEach>
                  
                  
               
                  
                   
                   
               
                
            </div>
        </div>
    
            
        </div>
        
       
            
            
            
            
            
            
            
            
            
            
            
            
            
        </div>
     
       
    
        
        

    </body>
</html>
