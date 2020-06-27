

<%@page import="java.util.List"%>
<%@page import="Modelo.Tareas"%>
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
        <link rel="stylesheet" href="CSS/listaTareas/listaTareas.css">
         
    </head>
    

    
    
    <body>
   
        <header>
            
            <!--
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="ControllerTareas" >APP DE TAREAS</a>
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
            -->
            
            <nav class="navbar navbar-expand-lg  bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <a class="navbar-brand " href="inicioCuidador.jsp">Home</a>
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="ControllerTareas">Lista de Actividades<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AgregarTareas.jsp">Agregar Actividad</a>
                        </li>
                       
                    </ul>
                    <form class="form-inline my-2 my-lg-0" style="margin-right: 27px;">
                        <input class="form-control mr-sm-2" type="search" placeholder="Buscar Actividad" aria-label="Buscar">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                    </form>
                    
                    <ul class="nav navbar-nav navbar-nav-first" style="margin-right: 71px">
              <li  class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                  Cuenta
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="RegistroCuidador.html">Perfil</a>
                  <a class="dropdown-item" href="RegistroEspecialista.html">Cerrar Sesión</a>
                </div>
              </li>
            </ul>
    
                </div>
            </nav>
             
        
        </header>
        
            
        <section>
           
        
         <div>
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
        
       
            
            
            
            
            
            
            
            
            
            
            
            
            
        </section>
     
       
    
        <!--Scripts-->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        

    </body>
</html>
