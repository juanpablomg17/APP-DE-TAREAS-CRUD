<%-- 
    Document   : AgregarTareas
    Created on : jun 10, 2020, 1:12:43 p.m.
    Author     : JUAN PABLO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
           <link rel="stylesheet" href="CSS/cuidador/agregarExperiencias.css">
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
                        <li class="nav-item active">
                            <a class="nav-link" href="ControllerTareas"
                               style="color: white; padding-left: 25px; padding-right: 25px;">Mis Experencias
                                <span class="sr-only">(current)</span> </a>
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
       
        
        
        
        <div class="app">
             
         <div class="row " id="fila1">
                <div class="col-md-6 " id="formulario">
                    <div class="card">
                        <div class="card-header">
                            <h1>Agregar Experiencia</h1>
                        </div>
                        <div class="card-body">
                            <form action="ControllerTareas" method="get">
                                <input type="hidden" name="instruccion" value="insertarBBDD"/>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Nombre de la Experiencia" required="true" max="100" min="2" name="input-name"/>
                                    
                                </div>
                                <div class="form-group">
                                    <textarea placeholder="Descripcion" cols=3 rows=5 class="form-control" required="true" max="100" name="textArea-descripcion"></textarea>
                                    
                                  
                                </div>
                                
                                <div class="form-group">
                                    <label>Fecha: </label> <input type="date" class="form-control" name="fecha" required="true" />
                                </div>
                                
                                
                                <div  btn-group>
                                    <button type="submit"  class="btn btn-danger color-white" id="botonAgregar" >AGREGAR</button>
                                </div>
                                
                                
                                
                                    
                                    
                            </form>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>
       
    </body>
    
    
     <!--Scripts-->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>
