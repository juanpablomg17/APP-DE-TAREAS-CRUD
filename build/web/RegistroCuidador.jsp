<%-- 
    Document   : RegistroCuidador
    Created on : jun 29, 2020, 12:47:17 p.m.
    Author     : JUAN PABLO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/cuidador/registroCuidador.css">
    <link rel="stylesheet" href="CSS/sepaFooter.css">
   <link href="../CSS/fonts.css" rel="stylesheet">
   
   <title>REGISTRO CUIDADOR</title> 
   
</head>
<body>
   
    <header>
        <nav class="navbar navbar-expand-lg" style="padding-left: 40px;" >
            <a class="navbar-brand" href="#">
                <img src="IMAGES/index/logo.png" width="30" height="30" alt="">
                <b>SEPA</b> 
              </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav navbar-nav-first">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp" style="color: white; padding-left: 25px; padding-right: 25px;">Home <span class="sr-only">(current)</span> </a>
                </li>
            
              </ul>
              <ul style="padding-right: 25px;" class="nav navbar-nav navbar-nav-first">
                <li>
                  <a href="#" class="smoothScroll">Nosotros</a>
                </li>
                <li>
                  <a href="#" class="smoothScroll">Contacto</a>
                </li>
             </ul>
                      
             


            </div>
          </nav>

        
    </header>
    

     <!--Informacion-->
     <section id="about">

      <div style="padding-top: 115px;" class="container">
         <div class="row">
            <div class="col-md-6">
               <div class="about-info">
                  <div class="section-title">
                     
                     <h2><i style="font-size: 45px;">"Las personas con autismo ven el mundo bajo una luz diferente, en
                           formas que muchos nunca podrian imaginar"</i> </h2>
                  </div>
                  <div class="">
                     <p>- Tina J. Richardson.
                     </p>


                     </p>
                  </div>
               </div>
            </div>

            <!--Efectos del registro-->
            <div
               style="bottom: 38px; box-shadow: 0 15px 25px rgba(0,0,0,.5); box-sizing: border-box; border-radius: 15px; background: rgba(0,70,100,.5); padding-top: 15px "
               class="col-md-6">


            
                <form action="ControllerLogin" method="get">
                     <input type="hidden" name="accion" value="registar_cuidador"/>
                  <div style="background-color: royalblue; border-radius: 10px;">
                     <h1> CREE SU CUENTA</h1>
                  </div>
                  <div class="col-md-12">
                  <div class="row">
                  <div style="padding-top: 18px;" class="col-md-6">
                      <input type="text" class="form-control" required="true" name="nombres" id="cf-name" placeholder="Nombres">
                  </div>
                  <div style="padding-top: 18px;" class="col-md-6">
                      <input type="text" class="form-control" name="apellidos" required="true"   id="cf-apellido" placeholder="Apellidos">
                  </div>
                  </div>
                   <div class="row">
                  <div style="padding-top: 18px;" class="col-md-12">
                      <input type="text" class="form-control" name="nombre_usuario" required="true" id="cf-name" placeholder="Nombre de Usuario">
                  </div>

                  </div>
                  <div class="row">
                  <div style="padding-top: 18px;" class="col-md-6">
                      <select class="form-control" name="tdocumento" id="tdocumento" required="true" placeholder="Tipo de documento">
                        <option value="ti"> Tipo de documento</option>
                        <option value="ti"> Tarjeta de Identidad</option>
                        <option value="cc"> Cedula Ciudadana</option>
                        <option value="ce"> Cedula Extranjera</option>
                     </select>
                  </div>
                  <div style="padding-top: 18px;" class="col-md-6">
                      <input type="number" class="form-control" name="ndocumento" id="ndocumento" required="true"
                        placeholder="Numero de documento">
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                  <div style="background-color: royalblue; border-radius: 10px;;margin-top: 15px;" >
                    <label style="padding-bottom: 2px;font-size: ;color: white;padding-left: 22px; padding-top: 8px;">Fecha de Nacimiento</label>
                  </div>
               </div>
                  <div style="padding-top: 18px;" class="col-md-6">
                      <input type="date" class="form-control" required="true"  name="fecha_nacimiento">

                  </div>
                </div>
                <div class="row">
                  <div style="padding-top: 18px;" class="col-md-6">
                      <input type="number" class="form-control" placeholder="Telefono" required="true" name="telefono">
                  </div>
                  <div style="padding-top: 18px;" class="col-md-6">
                      <input type="text" class="form-control" placeholder="Dirección" required="true" name="direccion">

                 </div>
                </div>
              </div>
                  <div style="padding-top: 5px;" class="col-md-12">
                     <hr style="background-color: white;">
                  </div>
                <div>
                  <div style="  padding-top: 5px;" class="col-md-12">
                      <input type="email" class="form-control" name="email" id="cf-email" required="true" name="email"
                        placeholder="Correo Electrónico">
                  </div>
                  <div style=" padding-top: 18px;" class="col-md-12" >
                      <input type="password" class="form-control" name="password" placeholder="Contraseña" required="true"
                  <div style="text-align: center; padding-bottom: 20px; padding-top: 18px; " class="col-md-12" >
                      <input type="password" class="form-control" name="password-confirm"required="true"
                        placeholder="Confirmar Contraseña">
                     <button type="submit"  id="boton"class="btn btn-info"> Registrar</button>

                  </div>
                </div>
                   
                   </form>
            </div>

         </div>

         
      </div>
      
      
      
   </section>







</body>





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
<!--Scripts-->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</section>

</html>