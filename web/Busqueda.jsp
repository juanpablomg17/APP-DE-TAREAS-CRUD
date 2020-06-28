<%-- 
    Document   : Busqueda
    Created on : jun 27, 2020, 5:32:43 p.m.
    Author     : JUAN PABLO
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Tareas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTIVIDAD BUSCADA</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/listaTareas/listaTareas.css">
    </head>
    <body>
        
        
         <header>
            
            
            
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
                        <input class="form-control mr-sm-2" type="number" placeholder="Id de actividad" aria-label="Buscar" required="true" name="busca_id"> 
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="instruccion" value="buscar">Buscar</button>
                    </form>
                    
                    <ul class="nav navbar-nav navbar-nav-first" style="margin-right: 71px">
              <li  class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                  Cuenta
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Perfil</a>
                  <a class="dropdown-item" href="index.jsp">Cerrar Sesión</a>
                </div>
              </li>
            </ul>
    
                </div>
            </nav>
             
        
        </header>
        
        
        <div id="todo">
             <div class="container">
         
           
            <div class="row"> 
                
                
        <c:set var="val" value="${TAREA}"/>
        <c:choose> 
            <c:when test="${val == null}">
                <h2 style="color: whitesmoke; text-align: center; font-size: 4rem; margin-top: 80px;">EXPERIENCIA NO ENCONTRADA</h2>
            </c:when>
            <c:otherwise>
                <c:forEach var="tarea" items="${TAREA}" >
                    
                    <c:url var="linkTemp" value="ControllerTareas">
                       
                       <c:param name="instruccion" value="cargar"></c:param>
                       <c:param name="id" value="${tarea.id}"></c:param>
                       
                   </c:url>
                   
                    <c:url var="linkTempEliminar" value="ControllerTareas">
                       
                       <c:param name="instruccion" value="eliminar"></c:param>
                       <c:param name="idEliminar" value="${tarea.id}"></c:param>
                       
                   </c:url>


                     <div class="col-md-6">
                        <div class="card" id="tarjeta">
                            <div class="card-header">
                                <h3>${tarea.nombre}</h3>
                                <span id="span" class="badge badge-pill badge-primary ">ID - ${tarea.id}</span>
                            </div>
                            <div class="card-body">

                                <div>
                                    <p>
                                        ${tarea.descripcion}
                                    </p>

                                </div>

                                <div>
                                    <h4>
                                        <span id="span" class="badge badge-pill badge-primary ">FECHA - ${tarea.fecha}</span>

                                    </h4>
                                </div>




                            </div>



                            <div class="card-footer">
                                <div class="btn-group">
                                    <a class="btn btn-danger color-white" href="${linkTempEliminar}">Eliminar</a>
                                </div>
                                <div class="btn-group">

                                    <a class="btn btn-success" href="${linkTemp}">Editar</a>
                                </div>
                            </div>

                        </div>

                    </div>


                </c:forEach>

            </c:otherwise>
        </c:choose>
                
                
                   
                   
                   
                   
             
               
                
                
               
               
                  
                  
               
                  
                   
                   
               
                
            </div>
        </div>
    
            
        </div>
        
        
        
        
        
        
        
        
        







    </body>
</html>
