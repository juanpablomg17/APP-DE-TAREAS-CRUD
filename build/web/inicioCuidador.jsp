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
        <title>Inicio Cuidador</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        <link rel="stylesheet" href="CSS/sepaFooter.css">
        <link rel="stylesheet" href="CSS/index/index.css">
        
    </head>
    
<body>
     <!--CABECERA-->
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
                    <a class="nav-link" href="Inicio.html"
                        style="color: white; padding-left: 25px; padding-right: 25px;">Home
                        <span class="sr-only">(current)</span> </a>


            </ul>
            <ul class="nav navbar-nav navbar-nav-first">
              <li class="nav-item active">
                  <a class="nav-link" href="ControllerTareas"
                      style="color: white; padding-left: 25px; padding-right: 25px;">Asistencia en casa
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


           

           

            <form class="nav navbar-nav navbar-nav-first" style="margin-right: 2%; margin-left: 15.5%;" id="search">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
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
    <!--DIÁLOGO REGISTRAR PACINETE-->

              <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLongTitle">Registre a su Paciente</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div>
                                <input class="form-control" type="number" name="id" placeholder="ID" required="required">
                            </div>
                            <div>
                              <input class="form-control" type="text" name="nombre-completo" placeholder="Nombre completo" required="required">
                          </div>
                          <div>
                              <input class="form-control" type="email" name="email-paciente" placeholder="Correo Electrónico" required="required">
                          </div>
                          <div>
                              <input class="form-control" type="number" name="telefono-paciente" placeholder="Teléfono" required="required">    
                          </div>
                          <div>
                             <input class="form-control" type="text" name="direccion-paciente" placeholder="Dirección" required="required">
                          </div>
                          <div class="btn-group">
                            <label >Género:   </label> 
                             <select name="genero" id="genero">
                             
                                <option value="Hombre" id="genero">Hombre</option>
                                <option value="Mujer">Mujer</option>
                                <option value="Otro">Otro</option>
                            </select>
                          </div>
                          <div>
                              <input class="form-control" type="text" name="diagnostico-paciente" placeholder="Diagnóstico" required="required">
                          </div>
                        
                          <div>
                              <input class="form-control" type="number" name="fecha-nacimiento-paciente" placeholder="fecha de nacimiento" required="required">
                          </div>
                          
                          <div>
                            <input type="submit" class="btn btn-primary" >
                          </div>
                        </form>
                    </div>
                  
                  </div>
                </div>
              </div>
    
              <!--DIÁLOGO CONSULTAR PACIENTE-->

              <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLongTitle">Consulte a su Paciente</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form >
                        <div>
                          <input class="form-control" type="number" name="id" placeholder="ID del Paciente" required="required">
                        </div>
                        <div>
                          <input type="text" class="form-control" name="nombre-paciente" placeholder="Nombre del Paciente" required="required">
                        </div>

                        <div>
                            <input type="submit" class="btn btn-primary">
                        </div>
                      </form>
                    </div>
                   
                  </div>
                </div>
              </div>
        
   

<!--TODA LA APP-->
    <section id="contenido">

        <div style="padding-top: 115px;" class="container">
            <div class="row">
                <div style="margin-top: 25px;" class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="about-info">
                                <div id="secciontitulo">
                                    <div class="imagenpaciente">

                                        <div class="container-equipo">
                                            <div id="titulo">
                                                <h1>Bienvenido  Cuidador de Roberto Guerrero</h1>
                                            </div>
                                            <div class="pic">
                                                <img src="../IMAGENES/roberto.PNG" alt="">
                                            </div>
                                            <div class="equipo-content">
                                                <h3 class="tituloequipo">#34958</h3>
                                                <span class="post"></span>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                    </diV>
                </div>
            </div>


        </div>
        <div id="asistenciaencasa" style="margin-bottom: 10px;" class="container-fluid">
            <div style=" background: white;border-radius: 24px;" class="tituloseccion">
                <h1 style="padding-top">ASISTENCIA EN CASA</h1>
                <section id="terapia">
                    <div class="row">
                        <div class="col-md-4">

                            <div class="card">
                                <div class="card-header">
                                    <h1>Lista de Asistencias</h1>
                                </div>

                                <form class="card-body">

                                    <div class="boton">
                                        <button type="button" class="btn btn-primary">Asistencia de Marzo</button>
                                    </div>
                                    <div class="boton">
                                        <button type="button" class="btn btn-primary">Asistencia de Abril</button>
                                    </div>
                                    <div class="boton">
                                        <button type="button" class="btn btn-primary">Asistencia de Mayo</button>
                                    </div>
                                    <div class="boton">
                                        <button type="button" class="btn btn-primary">Asistencia de Junio</button>
                                    </div>
                                    <div class="boton">
                                        <button type="button" class="btn btn-primary">Asistencia de Julio</button>
                                    </div>

                                    <div>
                                        <button style="width: 100%; margin-top: 2px;" type="button"
                                            class="btn btn-danger">Agregar Asistencia</button>
                                    </div>


                                </form>


                            </div>





                        </div>

                        <div class="col-md-8" style="margin-left: -19px;">
                            <div class="card">
                                <div class="card-header" style="color: black;
                                    font-weight: 600;"> Asistencia de Marzo</div>
                                <form class="body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <input style="width: 109%;" class="form-control" type="text"
                                                name="nombre-terapia" placeholder="Nombre de la Terapia">
                                        </div>
                                        <div class="col-md-4">
                                            <input style="width: 109%;" class="form-control" type="date">
                                        </div>
                                        <div class="col-md-4">
                                            <select style="width: 100%;" class="form-control" name="tipo_actividad"
                                                id="tipoA">
                                                <option value="tipoA">Actividad1</option>
                                                <option value="tipoA">Actividad2</option>
                                                <option value="tipoA">Actividad3</option>
                                                <option value="tipoA">Actividad4</option>
                                                <option value="tipoA">Actividad5</option>
                                            </select>
                                        </div>

                                        <div class="row">
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label style="color: black;
                                              font-weight: 600; padding-left: 13px;">Hora de inicio: </label>
                                               <input
                                                    class="form-control" type="time" name="hora-inicio" value="11:45:00"
                                                    max="22:30:00" min="10:00:00 " style="width: 418px;">

                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label style="color: black;
                                                font-weight: 600; padding-left: 13px;">Hora de finalización:<input
                                                        class="form-control" type="time" name="hora-fin"
                                                        value="11:45:00" max="22:30:00" min="10:00:00 " style="width: 404px; margin-top: 8px;"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <textarea class="form-control" name="descripcion-actividad" cols="30" rows="10"
                                            placeholder="Descripción breve de la actividad" style="    width: 100%;"></textarea>

                                    </div>
                                    



                                </form>



                                </form>

                            </div>
                        </div>




                    </div>



                </section>


            </div>
        </div>

        <div id="reporte-mostrar" class="container-fluid">   
            <div id="container">
                
            </div>
            <div id="dialogBox" style="display: none;">
                <div id="chartContainer" class="dialog" style="height: 250px; width: 100%;"></div>
            </div>  
        </div>




        </div>
        </div>



    </section>


 














</body>

<section id="footer">
    <div class="container-fluid">
      <div class="row">
  
  
  
        <footer>
  
          <div class="container-footer-all">
  
            <div class="container-body">
  
  
  
              <div class="colum2">
  
  
  
                <div class="row-footer">
                  <img style="width: 36px;" src="../IMAGENES/icon/facebook.png">
                  <a href="#" id="footerlabel"><B>Siguenos en Facebook</B></a>
                </div>
                <div class="row-footer">
                  <img style="width: 36px;" src="../IMAGENES/icon/twitter.png">
                  <a href="#" id="footerlabel"><b>Siguenos en Twitter</b></a>
                </div>
                <div class="row-footer">
                  <img style="width: 36px;" src="../IMAGENES/icon/instagram.png">
                  <a href="#" id="footerlabel"><b>Siguenos en Instagram</b></a>
                </div>
                <div class="row-footer">
                  <img style="width: 36px;" src="../IMAGENES/icon/google-plus.png">
                  <a href="#" id="footerlabel"><b>Siguenos en Google Plus</b></a>
                </div>
                <div class="row-footer">
                  <img style="width: 36px;" src="../IMAGENES/icon/pinterest.png">
                  <a href="#" id="footerlabel"><b>Siguenos en Pinteres</b></a>
                </div>
  
  
              </div>
  
            </div>
  
          </div>
  
          <div class="container-footer">
            <div class="footer">
              <div class="copyright">
                © 2019 Todos los Derechos Reservados | <a href="">SEPA</a>
              </div>
  
              <div class="information">
                <a href="">Privacion y Politica</a> | <a href="">Terminos y
                  Condiciones</a>
              </div>
            </div>
  
          </div>
  
        </footer>
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

</html>
