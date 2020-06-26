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
           <link rel="stylesheet" href="CSS/styles.css">
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
             <a class="navbar-brand" href="ControllerTareas">APP DE TAREAS</a>
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
             
         <div class="row " id="fila1">
                <div class="col-md-6 " id="formulario">
                    <div class="card">
                        <div class="card-header">
                            <h1>Agregar Tareas</h1>
                        </div>
                        <div class="card-body">
                            <form action="ControllerTareas" method="get">
                                <input type="hidden" name="instruccion" value="insertarBBDD"/>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Nombre de la Tarea" required="true" max="100" min="2" name="input-name"/>
                                    
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
</html>
