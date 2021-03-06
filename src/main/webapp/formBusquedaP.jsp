<%-- 
    Document   : formBusquedaP
    Created on : 16/05/2021, 02:26:33 PM
    Author     : Garex10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.ipn.escom.isw.trobify.controlador.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.DecimalFormat" %>
<%@page session="true" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <meta name="theme-color" content="#57a7ff">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/jquery.latest.js" type="text/javascript"></script>
        <script src="js/jquery.tablesorter.js" type="text/javascript"></script>
        
        <link rel="stylesheet" type="text/css" href="css/pager.css">
        <link rel="stylesheet" type="text/css" href="css/blue.css">
        <link rel="stylesheet" type="text/css" href="css/table-green.css">
        <link rel="stylesheet" type="text/css" href="css/table-yellow.css">
        <link rel="stylesheet" type="text/css" href="css/table-red.css">
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
        <link rel="stylesheet" type="text/css" href="css/listBusqueda.css">
        
        <link rel="icon" href="assets/escom-min.svg">
 
        <title>Busqueda por palabra Clave</title>
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
                 <b>
                    <div style="padding-top: 15px;">
                        <form id="formBuscar" method="post" action="BuscarInmuebles">
                            Buscar por palabra clave: <input type="text" name="palabra"> <input type="submit" name="enviar" value="buscar">
                        </form>
                    </div>    
                </b>
            </div>
            
            <div id="estacionamiento-section-full">
                <div align="center" class="content-tab" id="estacionamiento-tabs">
                    <section id="diario" class="tab-panel">
                        <div>
                            <div id="maestro-section-add">
                                
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            
        </div>
       
       
        <script type="text/javascript">
            $(document).on('ready',function(){
                
                $('#formBuscar').on('submit', function (ev) {
                    ev.preventDefault();
                    $.ajax({
                        type: $('#formBuscar').attr('method'), 
                        url: $('#formBuscar').attr('action'),
                        data: $('#formBuscar').serialize(),
                        
                        success: function (responce) { 
                            var objJSON = JSON.parse(responce);
                            
                            $("#maestro-section-add").html("<div id='inmueble' classs='inmueble'>");
                            
                            for( i in objJSON.inmuebles){
                                console.log("--------- newdata --------");
                                var idInm = objJSON.inmuebles[i].idInmueble;
                                var tipoInm = objJSON.inmuebles[i].tipoInmueble;
                                var tratoInm = objJSON.inmuebles[i].tipoTrato;
                                var precioInm = objJSON.inmuebles[i].precio;
                                var estInm = objJSON.inmuebles[i].estado;
                                var municipioInm = objJSON.inmuebles[i].municipio;
                                var tamInm = objJSON.inmuebles[i].tam;
                                var cuartosInm = objJSON.inmuebles[i].cuartos;
                                var baniosInm = objJSON.inmuebles[i].baniosCompletos;
                                var estaciInm = objJSON.inmuebles[i].estacionamiento;
                                
                                var tipo;
                                switch (tipoInm) {
                                    case 1:
                                        tipo = "Casa";
                                    break;
                                    case 2:
                                        tipo = "Departamento";
                                    break;
                                    case 3:
                                        tipo ="Terreno/Lote";
                                    break;
                                    case 4:
                                        tipo ="Oficina";
                                    break;
                                    case 5:
                                        tipo ="Local Comercial";
                                    break;
                                    case 6:
                                        tipo ="Edificio";
                                    break;
                                    case 7:
                                        tipo ="Bodega Comercial";
                                    break;
                                    
                                    default:
                                        tipo ="Casa";
                                    break;
                                }
                                
                                switch (tratoInm){
                                    case 1:
                                        tratoInm = "Venta";
                                    break;
                                    case 2:
                                        tratoInm = "Renta";
                                    break;
                                    default:
                                        tratoInm = "Venta";
                                    break;
                                }
                       
                                    $("#inmueble").append("<div id='info"+i+"' class='info'>");
                                        $("#info"+i).append("<div id='dTipo"+i+"' class='tipo'> <p id='idtInmueble"+i+"' class='tInmueble'>"+ tipo +" en " +tratoInm+"</p> </div>");
                                        $("#info"+i).append("<div id='dPrecio"+i+"' ><p id='idprecio"+i+"' class='precio'>Precio: $"+precioInm+"</p></div>");
                                        
                                        $("#info"+i).append("<div id='dEstado"+i+"'  class='datos'><p id='idestado"+i+"'>"+estInm+"</p></div>");
                                        $("#info"+i).append("<div id='dMunicipio'  class='datos'><p id='idmunicipio"+i+"'>"+municipioInm+"</p></div>");
                                        $("#info"+i).append("<div id='dTam'  class='datos'><p id='idtam"+i+"'>Metros cuadrados: "+tamInm+"</p></div>");
                                        
                                        $("#info"+i).append("  <div id='dCuatos"+i+"'  class='datos'><p id='idcuartos"+i+"'>Cuartos: "+cuartosInm+"</p></div>");
                                        $("#info"+i).append("  <div id='dBanios"+i+"'  class='datos'><p id='idbanios"+i+"'>Banios:"+baniosInm+"</p></div>");
                                        $("#info"+i).append("<div id='dEstac"+i+"'  class='datos'><p  id='idestac"+i+"'>Estacionamientos:"+estaciInm+"</p></div>");
                                $("#maestro-section-add").append("  </div>  </div>");

                                
                            }
                        },
                        
                        error: function(jqXHR,estado, error) {
                            console.log(estado)
                            console.log(error)
                        },
                        
                        complete: function(jqXHR,estado){
                            console.log(estado)
                           
                        },
                    })
                })
            })
        </script>
        
        
        <%-- --%>
       
              
    </body>
</html>
