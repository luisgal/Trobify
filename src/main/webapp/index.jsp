<%-- 
    Document   : login
    Created on : 27-nov-2019, 15:03:05
    Author     : lya5
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="com.ipn.escom.isw.trobify.controlador.*" %>
<%@page import="java.sql.*" %>
<%@ page session="true" %>
<%
    String nombre = "";
     HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") != null) {
        response.sendRedirect("mainAlumno.jsp"); 
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <link rel="stylesheet" type="text/css" href="https://use.typekit.net/olg5rgu.css">

        <script>
            function val()
            {
                var i = 0;
                var j = 0;
                var cadena = "abcdefghijklmñnopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚáéíóú ";
                var usr = "abcdefghijklmñnopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890";
                var num = "1234567890";
                var letras = "abcdefghijklmñnopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890";
                validate = true;

                for (i = 0; i < document.nom.boleta.value.length; i++)
                {
                    for (j = 0; j < cadena.length; j++)
                    {
                        if (document.nom.boleta.value.charAt(i) == cadena.charAt(j))
                            break;
                    }
                    if (j == cadena.length || document.nom.boleta.value.length < 5)
                    {
                        validate = false;
                    }
                }


                for (i = 0; i < document.nom.pass.value.length; i++)
                {
                    for (j = 0; j < letras.length; j++)
                    {
                        if (document.nom.pass.value.charAt(i) == letras.charAt(j))
                            break;
                    }
                    if (j == letras.length || document.nom.pass.value.length < 5)
                    {
                        validate = false;
                    }
                }


                if (document.nom.pass.value == '') {

                    document.nom.pass.focus();
                    validate = false;
                }
                if (document.nom.boleta.value == '') {

                    document.nom.boleta.focus();
                    validate = false;
                }

                if (validate)
                    document.nom.submit();
                

            }


        </script>

        <link rel="icon" href="assets/escom-min.svg">
        <title>ESCOM</title>
    </head>



    <div  style="background-image: url('assets/set-bg.jpg');"> 
    </div>

    <div class="Rectangle">
            <br>
            <div class="Rectangle-orange">
               
               INICIO DE SESIÓN
            </div>

            <br>

            <div class="imgcontainer">
                <img src="assets/escom_3x.svg"
                     class="avatar"
                     >
            </div>


            <form name="nom" class="login100-form validate-form"  method="POST" action="valUs">
                <div class="Usuario" style="padding: 10px 10px 10px 30px">Usuario</div>
                <br>
                <input class="Rectangle-usuario" type="mail" name="email" id="boleta" placeholder="Escribe el correo">
                <br><br>
                <div class="Usuario" style="padding: 10px 10px 10px 30px">Contraseña</div>
                <br>
                <input class="Rectangle-usuario" type="password" name="password" id="pass" placeholder="Escribe la contraseña">
                <br><br>
                <button  href="index.jsp" class="button" style="margin: 10px" onClick="val()">
                    Iniciar Sesión
                </button>
            </form>
        

        
    </div>



    <style>
        body {
            background-image: url('assets/set-bg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style> 



</html>
