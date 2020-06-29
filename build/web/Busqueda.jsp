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
            <nav class="navbar navbar-expand-lg" style="padding-left: 40px;">
                <a class="navbar-brand" href="#">
                    <img src="IMAGES/index/logo.png" width="30" height="30" alt="">
                    <b>SEPA</b>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li class="nav-item active">
                            <a class="nav-link" href="inicioCuidador.jsp"
                               style="color: white; padding-left: 25px; padding-right: 25px;">Inicio
                                <span class="sr-only">(current)</span> </a>
                    </ul>
                      
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li style="padding-right: 11px; padding-left: 0px;" class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Mis Experiencias
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="ControllerTareas">Lista de Experiencias</a>
                                <a class="dropdown-item" href="AgregarTareas.jsp">Agregar Una Nueva Experiencia</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li class="nav-item active">
                            <a class="nav-link" href="#equipo"
                               style="color: white; padding-left: 25px; padding-right: 25px;">Nosotros
                                <span class="sr-only">(current)</span> </a>
                    </ul>
                    <ul class="nav navbar-nav navbar-nav-first">
                        <li class="nav-item active">
                            <a class="nav-link" href="#Contacto"
                               style="color: white; padding-left: 25px; padding-right: 25px;">Contacto
                                <span class="sr-only">(current)</span> </a>
                    </ul>
                    <form class="nav navbar-nav navbar-nav-first" style="margin-right: 2%; margin-left: 15.5%;" id="search" action="ControllerTareas" method="get">
                        <input id="formulario-buscar" class="form-control mr-sm-2" type="number" placeholder="Id de Experencia" aria-label="Search" name="busca_id">
                        <button id="botonSucces1"  class="btn btn-success my-2 my-sm-0" style="height: 25%;" type="submit" name="instruccion" value="buscar">Buscar</button>
                    </form>

                    <ul class="nav navbar-nav navbar-nav-first">
                        <li style="padding-right: 11px; padding-left: 0px;" class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                CUENTA
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
                <h2 style="color: red; text-align: center; font-size: 4rem; margin-top: 80px;">EXPERIENCIA NO ENCONTRADA</h2>
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
        
        
        
        
        
        
        
        
        


         <!--Scripts-->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>





    </body>
</html>
