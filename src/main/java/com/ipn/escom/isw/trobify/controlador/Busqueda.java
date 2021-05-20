
package com.ipn.escom.isw.trobify.controlador;

import java.sql.*;
import java.util.ArrayList;


public class Busqueda {

    private ArrayList<Inmueble> inmuebles; 
    
    public Busqueda() {
    }
    
    public ArrayList<Inmueble> buscaPalabraClave(String palabra){

        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        inmuebles = new ArrayList<>();
        
        try {
            cn = Conexion.getConexion();
            if (cn == null) {
                System.out.println("NO CONECTA");
            }
            
            String sql = "SELECT * FROM Inmueble WHERE calle=? OR entrecalles=? OR colonia=? OR municipio=? OR estado=? OR servicios=? OR detalles=?";
            pr = cn.prepareStatement(sql);
            pr.setString(1, palabra);
            pr.setString(2, palabra);
            pr.setString(3, palabra);
            pr.setString(4, palabra);
            pr.setString(5, palabra);
            pr.setString(6, palabra);
            pr.setString(7, palabra);
            rs = pr.executeQuery();
            
            while (rs.next()) {
                
                inmuebles.add(new Inmueble(rs.getInt("idInmueble"), rs.getFloat("geoLon"), rs.getFloat("geoLat"), rs.getString("calle"), rs.getString("numero"),rs.getString("entrecalles"),rs.getInt("cp"),rs.getString("colonia"),rs.getString("municipio"),rs.getString("estado"),rs.getFloat("tam"),rs.getInt("cuartos"),rs.getInt("mediosBanios"),rs.getInt("banios"),rs.getInt("estacionamiento"),rs.getInt("plantas"),rs.getString("servicios"),rs.getFloat("precio"),rs.getString("detalles"),rs.getString("Usuario_email"),rs.getInt("TipoInmueble_idTipoInmueble"),rs.getInt("TipoTrato_idTipoTrato")));
                System.out.println("Numero de inmuebles encontrados: "+inmuebles.size());
               
            }
            
        }catch (SQLException ex) {
            ex.printStackTrace();

        }
        return inmuebles;
    }
}
