/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.escom.isw.trobify.servlets;

import com.ipn.escom.isw.trobify.controlador.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Julio
 */
public class valUs extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValUs</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValUs at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String pass = request.getParameter("password");

        Usuario u = new Usuario();
        System.out.println("qwertyuiop");
        System.out.println("user:" + email);
        u.verificarUsuario(email, pass);
        System.out.println("user:" + email);
        System.out.println(u.getPrivilegio());
        System.out.println(u.getUsuario_Nombre());
  

        switch (u.getPrivilegio()) {
            case 1: {
                //El usuario existe en la base de datos y clave correcta
                //Creamos la sesion
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuario", u);
                HttpSession sesionOk = request.getSession();
                String iddesesion = sesionOk.getId();
                System.out.println("usuario:    " + email + "        id de sesión: " + iddesesion);
                sesionOk.setAttribute("usuario", email);
                sesionOk.setAttribute("privilegio", u.getPrivilegio());
                sesionOk.setAttribute("user", u);
                response.sendRedirect("mainMaestro.jsp");
                break;
            }
            case 2: {
                //El usuario existe en la base de datos y clave correcta
                //Creamos la sesion
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuario", u);
                HttpSession sesionOk = request.getSession();
                String iddesesion = sesionOk.getId();
                System.out.println("usuario:    " + email + "        id de sesión: " + iddesesion);
                sesionOk.setAttribute("usuario", email);
                sesionOk.setAttribute("privilegio", u.getPrivilegio());
                sesionOk.setAttribute("user", u);
                response.sendRedirect("mainAlumno.jsp");
                break;
            }
            case 3: {
                //El usuario existe en la base de datos y clave correcta
                //Creamos la sesion
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("usuario", u);
                HttpSession sesionOk = request.getSession();
                String iddesesion = sesionOk.getId();
                System.out.println("usuario:    " + email + "        id de sesión: " + iddesesion);
                sesionOk.setAttribute("usuario", email);
                sesionOk.setAttribute("privilegio", u.getPrivilegio());
                sesionOk.setAttribute("user", u);
                response.sendRedirect("mainAdmin.jsp");
                break;
            }
            default:
                //El usuario no existe o clave incorrecta
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Datos incorrectos, intente de nuevo');");
                out.println("location='index.jsp';");
                out.println("</script>");
                break;
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
