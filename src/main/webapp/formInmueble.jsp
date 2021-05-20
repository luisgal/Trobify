<%-- 
    Document   : formInmueble
    Created on : 5/05/2021, 01:42:00 PM
    Author     : Garex10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.DecimalFormat" %>
<%@ page session="true" %>
<%String nombre = "";%>

<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <meta name="theme-color" content="#57a7ff">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/jquery-core.js" type="text/javascript"></script>
        <script src="js/jquery.latest.js" type="text/javascript"></script>
        <script src="js/jquery.tablesorter.js" type="text/javascript"></script>
      
        <script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
        <script src="js/pager.min.js" type="text/javascript"></script>
       
        <script src="js/Chart.bundle.js" type="text/javascript"></script>
        <script src="js/Chart.bundle.min.js" type="text/javascript"></script>
        <script src="js/Chart.js" type="text/javascript"></script>
        <script src="js/Chart.min.js" type="text/javascript"></script>
        <script src="js/mychart.js" type="text/javascript"></script>
        <script src="js/pickers.js" type="text/javascript"></script>   
        <script src="js/addUser.js" type="text/javascript"></script>   

        <link rel="stylesheet" type="text/css" href="css/pager.css">
        <link rel="stylesheet" type="text/css" href="css/blue.css">
        <link rel="stylesheet" type="text/css" href="css/table-green.css">
        <link rel="stylesheet" type="text/css" href="css/table-yellow.css">
        <link rel="stylesheet" type="text/css" href="css/table-red.css">
        <link rel="stylesheet" type="text/css" href="css/material.css">
        <link rel="stylesheet" type="text/css" href="css/pager.css">
        <link rel="stylesheet" type="text/css" href="css/drop.css">
        <link rel="stylesheet" type="text/css" href="css/drop2.css">
        <link rel="stylesheet" type="text/css" href="css/tabs2.css">
        <link rel="stylesheet" type="text/css" href="css/template.css">
        <link rel="stylesheet" type="text/css" href="css/log.css">
        <link rel="stylesheet" type="text/css" href="css/check.css">
        <link rel="stylesheet" type="text/css" href="css/collapse.css">
        <link rel="stylesheet" type="text/css" href="css/load.css">
        <link rel="stylesheet" type="text/css" href="css/dir.css">
        <link rel="stylesheet" type="text/css" href="css/Chart.css">
        <link rel="stylesheet" type="text/css" href="css/Chart.min.css">
        <link rel="stylesheet" type="text/css" href="css/tooltip.css">
        <link rel="stylesheet" type="text/css" href="css/modal.css">

        <link rel="icon" href="assets/escom-min.svg">
        <title>Trobify</title>
        
        
         <%--       ****  Importacion de JQuery UI   ****   --%>
        <link rel="stylesheet" type="text/css" href="js/jquery-ui-1.12.1/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.12.1/jquery-ui.js"></script>
        <%--            **** Fin de importacion  ****           --%>
 
        <%--            **** funcion de check box  ****           --%>
        <script>
        $( function() {
          $( "#radioset" ).buttonset();
          
          $(".spinner").spinner({
                min: 0,
                max: 2500,
                step: 1,
                numberFormat: "C"
              });
        } );
        </script>
        <%--            **** Fin de importacion  ****           --%>
   
    </head>
    <style>
        body {
            margin: 0;
            font-family: century-gothic, sans-serif;

        }
    </style>
    <body>
        <div class="-Ingresos-Boletaje-Mensuales" >
            <div class="topnav">
                <b>
                    <img src="assets/trobify.png" class=" icon-logo">
                </b>
            </div>
            
            <div id="estacionamiento-section-full">
                <div align="center" class="content-tab" id="estacionamiento-tabs">
                    <section id="diario" class="tab-panel">
                        
                        <form enctype="multipart/form-data" action="" method="POST">
                            
                        <div>
                            <div id="maestro-section-add">
                                
                                <div class="cabecera">
                                    <div class="medial">
                                        <div class="cardleft">
                                           <h3 style="text-align: left; color: #000000;">
                                               <div id="titulo-tema2" style="display: inline;">Publicación de bien Inmueble</div>
                                           </h3>  
                                        </div>
                                    </div>
                                </div>
                                
                                <div id="quizz-access"  class="quizz-link">
                                    <br>
                                        <fieldset style=" width: 50%">
                                            <legend>Tipo de operación: </legend>
                                            <div id="radioset">                                                	
                                                <input  type="radio" id="radio1" name="radio" checked="checked"><label for="radio1">Venta</label>
                                                <input  type="radio" id="radio2" name="radio"><label for="radio2">Renta</label>
                                            </div>
                                        </fieldset>
                                    <br>
                                    
                                        <label for="tInmueble">Tipo de inmueble</label>
                                        <br>
                                        <select  id="type" class="Rectangle-negocio" name="tipoInmueble" style=" width: 50%">
                                          <option  id="1" value="0" >Selecciona el tipo de inmueble</option>
                                          <option  id="2" value="Casa" >Casa</option>
                                          <option  id="3" value="Departamento" >Departamento</option>
                                          <option  id="4" value="Terreno/Lote" >Terreno / Lote</option>
                                          <option  id="5" value="Oficina" >Oficina</option>
                                          <option  id="6" value="LocalComercial" >Local Comercial</option>
                                          <option  id="7" value="Edificio" >Edificio</option>
                                          <option  id="8" value="Bodega comercial" >Bodega comercial</option>
                                        </select>
                                        
                                    <br>
                                    <br>
                                    <%-- ****  Parte de fotos ******** --%>
                                    
                                    <fieldset> 
                                        <legend>Direccion del Inmueble</legend>                  
                                            <label class="label-maestro">Calle:
                                                <input class="input-text" type="text" name="calle" id="idCalle" placeholder="Escribe el nombre de la calle" maxlength="45">
                                                Numero:
                                                <input class="input-text" type="text" name="numero" id="idNuemro" placeholder=" Numero # " maxlength="45" style=" width: 15%">
                                            </label>
                                        
                                            <label class="label-maestro">Entre calles:</label>                                            
                                            <input class="input-text" type="text" name="calles" id="idCalles" placeholder="Escribe el nombre de las calles" maxlength="90">
                                            
                                            <label class="label-maestro">Colonia:
                                                <input class="input-text" type="text" name="colonia" id="isColonia" placeholder="Escribe el nombre de la colonia" maxlength="45">
                                                C.P.:
                                                <input class="input-text"  type="text" name="CPostal" id="idCPostal"  maxlength="5" style=" width: 15%">
                                            </label>
                                            
                                            <label class="label-maestro">Municipio / Alcaldia:</label>                                            
                                            <input class="input-text" type="text" name="municipio" id="idMunicipio" placeholder="Escribe el nombre del Municipio" maxlength="45">
                                            
                                            <label class="label-maestro">Estado de la Republica: 
                                                <select id="idEstado" class="Rectangle-negocio" name="estado">
                                                    <option id="1" value="0">Seleccione un estado</option>
                                                    <option id="2" value="Aguascalientes">Aguascalientes</option>
                                                    <option id="3" value="Baja California">Baja California</option>
                                                    <option id="4" value="Baja California Sur">Baja California Sur</option>
                                                    <option id="5" value="Campeche">Campeche</option>
                                                    <option id="6" value="Chiapas">Chiapas</option>
                                                    <option id="7" value="Chihuahua">Chihuahua</option>
                                                    <option id="8" value="CDMX">Ciudad de México</option>
                                                    <option id="9" value="Coahuila">Coahuila</option>
                                                    <option id="10" value="Colima">Colima</option>
                                                    <option id="11" value="Durango">Durango</option>
                                                    <option id="12" value="Estado de México">Estado de México</option>
                                                    <option id="13" value="Guanajuato">Guanajuato</option>
                                                    <option id="14" value="Guerrero">Guerrero</option>
                                                    <option id="16" value="Hidalgo">Hidalgo</option>
                                                    <option id="17" value="Jalisco">Jalisco</option>
                                                    <option id="18" value="Michoacán">Michoacán</option>
                                                    <option id="19" value="Morelos">Morelos</option>
                                                    <option id="20" value="Nayarit">Nayarit</option>
                                                    <option id="21" value="Nuevo León">Nuevo León</option>
                                                    <option id="22" value="Oaxaca">Oaxaca</option>
                                                    <option id="23" value="Puebla">Puebla</option>
                                                    <option id="24" value="Querétaro">Querétaro</option>
                                                    <option id="25" value="Quintana Roo">Quintana Roo</option>
                                                    <option id="26" value="San Luis Potosí">San Luis Potosí</option>
                                                    <option id="27" value="Sinaloa">Sinaloa</option>
                                                    <option id="28" value="Sonora">Sonora</option>
                                                    <option id="29" value="Tabasco">Tabasco</option>
                                                    <option id="30" value="Tamaulipas">Tamaulipas</option>
                                                    <option id="31" value="Tlaxcala">Tlaxcala</option>
                                                    <option id="32" value="Veracruz">Veracruz</option>
                                                    <option id="33" value="Yucatán">Yucatán</option>
                                                    <option id="34" value="Zacatecas">Zacatecas</option>
                                                </select>
                                            </label>
                                        <br>
                                    </fieldset>
                                    
                                    <br>
                                    <fieldset>
                                        <legend>Caracteristicas del Inmueble</legend> 
                                        
                                        <label class="label-maestro">Recámaras:
                                            <input class="spinner" id="idRecamaras" name="recamaras" value="0" style=" width: 45%">
                                            Baños(Completos):
                                            <input class="spinner" id="idBanios" name="banios" value="0" style=" width: 45%">
                                        </label>
                                        
                                        <label class="label-maestro">Medios Baños:
                                            <input class="spinner" id="idMBanios" name="mBanios" value="0">
                                        </label>
                                        
                                        <label class="label-maestro">Cajones de Estacionamiento:
                                            <input class="spinner" id="idEstacionamiento" name="estacionamiento" value="0">
                                            Numero de Plantas:
                                            <input class="spinner" id="idPlantas" name="plantas" value="0" >
                                        </label> 
                                        
                                        <label class="label-maestro">Superficie: m2 
                                            <input class="input-text" type="text" name="superficie" id="idSuperficie" placeholder="Metros cuadrados" maxlength="24">
                                        </label>
                                       <label class="label-maestro">Servicios: </label>
                                       <textarea class="input-textarea"  name="servicios" id="idServicios" ></textarea>
                                       
                                       <label class="label-maestro">Fotografia del Inmueble: </label>
                                       <input id="myInput" name="uploadedImage" type="file" />
                                       
                                    </fieldset>
                                    
                                    
                                     <br>
                                    <fieldset>
                                        <legend>Detalles y precio</legend> 
                                         <label class="label-maestro">Precio: $ 
                                             <input class="input-text" type="text" name="precio" id="idPrecio" placeholder="0" maxlength="20" style=" width: 25%">
                                        </label>
                                        <label class="label-maestro">Detalles: </label>
                                        <textarea class="input-textarea"  name="detalles" id="nDetalles" ></textarea>
                                    </fieldset>
                                    
                                </div>
                                
                                
                            </div>
                        </div>
                            <div>
                                <button id="add-user" style="width: 170px;" class=" button">
                                    Aceptar
                                </button>
                                <button id="cancel" style="" class="button-orange">
                                    Cancelar
                                </button>   
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>
