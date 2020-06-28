<%-- 
    Document   : index
    Created on : jun 26, 2020, 11:54:10 a.m.
    Author     : JUAN PABLO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"></link>
  <link rel="stylesheet" href="CSS/index/index.css"/>
  <link rel="stylesheet" href="CSS/sepaFooter.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
  
  <title>SEPA</title>
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
                    <a class="nav-link" href="Inicio.html"
                        style="color: white; padding-left: 25px; padding-right: 25px;">Home
                        <span class="sr-only">(current)</span> </a>


            </ul>
            <ul class="nav navbar-nav navbar-nav-first">
              <li class="nav-item active">
                  <a class="nav-link" href="#"
                      style="color: white; padding-left: 25px; padding-right: 25px;">link
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
                  Registrarse
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="RegistroCuidador.html">Cuidador</a>
                  <a class="dropdown-item" href="RegistroEspecialista.html">Especialista</a>
    
    
                </div>
              </li>
            </ul>
    


        </div>
    </nav>


</header>
<!--INICIO-->
  <section id="contenido">

    <div style="padding-top: 115px;" class="container">
      <div class="row">
        <div style="margin-top: 25px;" class="col-md-6">
          <div class="about-info">
            <div class="section-title">
              <h2>DISEÑADO PARA PERSONAS CON TEA</H2>
              <h3>
                <p>PLATAFORMA PARA LA GESTIÓN DEL SEGUIMIENTO DE PACIENTES CON TEA</p>
                </h2>
            </div>

          </div>
        </div>

        <!--INICIO SEGUNDA COLUMNA-->
        <div style="margin-top: 25px;" id="formulario" class="col-md-5">
            <form action="ControllerLogin" method="get">
                 <div style=" border-radius: 10px;">
              <h1> INICIAR SESION</h1>
            </div>
            <div class="col-md-12">
              <div class="row">
                 
                  <input id="inputlogueo" type="text" class="form-control" placeholder="Usuario" name="txtUsuario" required="true"
                             style="margin-top: 18px;margin-left: 41px;">
                  <input type="password" id="inputlogueo" class="form-control" placeholder="Contraseña" name="txtContrasena" required="true"
                             style="margin-top: 18px;margin-left: 41px;">




                  <button id="botonlogueo" type="submit" id="boton" name="accion" value="ingresar"  class="btn btn-info">Entrar</button>
                      
                  
                    

              </div>
            </div>
             </form>
           
        </div>

      </div>
    </div>

    </div>

  </section>


  <!--NOSOTROS-->
 
  
  <!--NOSOTROS SEGUNDO BLOQUE-->
  <section>
    <section id=equipo>
      <div class="tituloequipo">
        <P>NUESTRO EQUIPO</P>
      </div>
    <div class="row">

      <div class="col-md-3 col-sm-6">
        <div class="container-equipo">
          <div class="pic">
              <img src="IMAGES/index/niño3.jpg" alt="">
          </div>
          <div class="equipo-content">
            <h3 class="tituloequipo">Eduardo</h3>
            <span class="post">Frontend Developer</span>
          </div>
          <ul class="social">
            <li><a href="" class="fa fa-facebook"></a></li>
            <li><a href="" class="fa fa-twitter"></a></li>
            <li><a href="" class="fa fa-google-plus"></a></li>
            <li><a href="" class="fa fa-linkedin"></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="container-equipo">
          <div class="pic">
              <img src="IMAGES/index/niño4.jpg" alt="">
          </div>
          <div class="equipo-content">
            <h3 class="tituloequipo">Juan Pablo</h3>
            <span class="post">Full Stack Developer</span>
          </div>
          <ul class="social">
            <li><a href="" class="fa fa-facebook"></a></li>
            <li><a href="" class="fa fa-twitter"></a></li>
            <li><a href="" class="fa fa-google-plus"></a></li>
            <li><a href="" class="fa fa-linkedin"></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="container-equipo">
          <div class="pic">
              <img src="IMAGES/index/niño5.jpg" alt="">
          </div>
          <div class="equipo-content">
            <h3 class="tituloequipo">Javier</h3>
            <span class="post">Analyst</span>
          </div>
          <ul class="social">
            <li><a href="" class="fa fa-facebook"></a></li>
            <li><a href="" class="fa fa-twitter"></a></li>
            <li><a href="" class="fa fa-google-plus"></a></li>
            <li><a href="" class="fa fa-linkedin"></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="container-equipo">
          <div class="pic">
              <img src="IMAGES/index/niño6.jpg" alt="">
          </div>
          <div class="equipo-content">
            <h3 class="tituloequipo">Robert</h3>
            <span class="post">Backend Developer</span>
          </div>
          <ul class="social">
            <li><a href="" class="fa fa-facebook"></a></li>
            <li><a href="" class="fa fa-twitter"></a></li>
            <li><a href="" class="fa fa-google-plus"></a></li>
            <li><a href="" class="fa fa-linkedin"></a></li>
          </ul>
        </div>
      </div>




    </div>
  </section>
  </section>




 <!--CONTACTO-->
 <section id="Contacto">
  <div class="container">
    
     <div class="row">

        <div class="col-md-12">
           <div class="col-md-12">
              <div class="section-title">
                 <h5>Contáctenos</h5>
              </div>
           </div>
           <form action="#">
             <div class="container">
             <div class="row">
              <div style="padding-top: 25px;" class="col-md-6">
                 <input type="text" class="form-control" name="busca_id" id="cf-name" placeholder="Nombre">
              </div>
              <div style="padding-top: 25px;" class="col-md-6">
                <input type="email" class="form-control" name="email" id="cf-email"
                   placeholder="Correo Electrónico">
             </div>
            </div>
          </div>
              <div class="col-md-12">
                 <input type="text" class="form-control" name="subject" id="cf-subject" placeholder="Asunto">
                 <textarea class="form-control" rows="6" id="cf-message" name="message"
                    placeholder="Deja algún mensaje"></textarea>

                 <button
                    style="width: 100%;margin-top: 0px; background: #18894B; border-color: #18894B; font-size: 17px;"
                    class="btn btn-info"> Enviar</button>
              </div>
           </form>
        </div>
     </div>
  </div>
</section>

<!--FOOTER/FIn-->
<section id="footer">
  <div class="container-fluid">
    <div class="row">



      <footer>

        <div class="container-footer-all">

          <div class="container-body">



            <div class="colum2">



              <div class="row-footer">
                  <img style="width: 36px;" src="IMAGES/icons/facebook.png">
                <a href="#" id="footerlabel"><B>Siguenos en Facebook</B></a>
              </div>
              <div class="row-footer">
                  <img style="width: 36px;" src="IMAGES/icons/twitter.png">
                <a href="#" id="footerlabel"><b>Siguenos en Twitter</b></a>
              </div>
              <div class="row-footer">
                  <img style="width: 36px;" src="IMAGES/icons/instagram.png">
                <a href="#" id="footerlabel"><b>Siguenos en Instagram</b></a>
              </div>
              <div class="row-footer">
                  <img style="width: 36px;" src="IMAGES/icons/google-plus.png">
                <a href="#" id="footerlabel"><b>Siguenos en Google Plus</b></a>
              </div>
              <div class="row-footer">
                  <img style="width: 36px;" src="IMAGES/icons/pinterest.png">
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
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
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
