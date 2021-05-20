/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.escom.isw.trobify.controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Julio
 */
public class AddUser {

    Connection cn = null;
    PreparedStatement pr = null;
    ResultSet rs = null;
    PreparedStatement pr2 = null;
    ResultSet rs2 = null;
    ResultSet rsDos = null;

    public boolean addNewUser(String idUsuario, String password, String nombre, String app, String apm, int privilegio, int grado) {
        boolean a = false;

        String sql = "INSERT INTO Usuario(idUsuario,password,nombre,app,apm,DPrivilegios_idDPrivilegios,Grado_idGrado) "
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            cn = Conexion.getConexion();
            pr = cn.prepareStatement(sql);

            pr.setString(1, idUsuario);
            pr.setString(2, password);
            pr.setString(3, nombre);
            pr.setString(4, app);
            pr.setString(5, apm);
            pr.setInt(6, privilegio);
            pr.setInt(7, grado);

            int l = pr.executeUpdate();
            a = true;
        } catch (SQLException ex) {
            Logger.getLogger(AddUser.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        }

        return a;
    }
}
