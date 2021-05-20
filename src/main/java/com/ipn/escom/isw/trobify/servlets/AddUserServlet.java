/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.escom.isw.trobify.servlets;

import com.ipn.escom.isw.trobify.controlador.AddUser;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julio
 */
public class AddUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String idUsuario = request.getParameter("idUsuario");
        String password = request.getParameter("password");
        String nombre = request.getParameter("nombre");
        String app = request.getParameter("app");
        String apm = request.getParameter("apm");
        int privilegio = Integer.parseInt(request.getParameter("privilegio"));
        int grado = Integer.parseInt(request.getParameter("grado"));
        AddUser add = new AddUser();
        if (add.addNewUser(idUsuario, password, nombre, app, apm, privilegio, grado)) {
            System.out.println("insertado con exito");
        } else {
            System.out.println("insertado sin exito");
        }
    }

}
