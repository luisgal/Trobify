package com.ipn.escom.isw.trobify.controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion
{
  public static Connection getConexion()
  {
    Connection conexion = null;
    try
    {
      Class.forName("com.mysql.jdbc.Driver");
      //String servidor = "jdbc:mysql://54.184.97.62:3306/Isw?serverTimezone=CDT";
      String servidor = "jdbc:mysql://54.184.97.62:3306/Isw?useLegacyDatetimeCode=false&serverTimezone=America/New_York";
      String usuarioDB = "isoftware";
      String passwordDB = "1ng3n13r1a";
      
      conexion = DriverManager.getConnection(servidor, usuarioDB, passwordDB);
      
      return conexion;
    }
    catch (ClassNotFoundException ex)
    {
      
      JOptionPane.showMessageDialog(null, ex, "Error1 en la Conexión con la BD CLOUD " + ex.getMessage(), 0);conexion = null;return conexion;
    }
    catch (SQLException ex)
    {
      JOptionPane.showMessageDialog(null, ex, "Error2 en la Conexión con la BD CLOUD" + ex.getMessage(), 0);conexion = null;return conexion;
    }
    catch (Exception ex)
    {
     JOptionPane.showMessageDialog(null, ex, "Error3 en la Conexión con la BD " + ex.getMessage(), 0);conexion = null;return conexion;
    }

  }
}
