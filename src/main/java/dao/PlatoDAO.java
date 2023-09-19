/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import modelo.Plato;
import util.MySQLConexion;
import java.util.*;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Axel
 */
public class PlatoDAO {

    public Plato platoEscogido(int cod) {
        Connection con = null;
        Plato plato = null;
        try {
            con = MySQLConexion.getConexion();
            String sql = "Select * from Plato where CodPlato = ?;";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, cod);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                plato = new Plato();

                plato.setCodigoPlato(rs.getInt(1));
                plato.setFoto(rs.getString(2));
                plato.setNombre(rs.getString(3));
                plato.setStock(rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return plato;
    }

    public List<Plato> listarPlatos() {
        List<Plato> platos = new ArrayList<>();
        Connection con = null;
        Plato plato = null;
        try {
            con = MySQLConexion.getConexion();
            String sql = "Select * from Plato where CodPlato;";
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                plato = new Plato();

                plato.setCodigoPlato(rs.getInt(1));
                plato.setFoto(rs.getString(2));
                plato.setNombre(rs.getString(3));
                plato.setStock(rs.getInt(4));
                
                platos.add(plato);
            }
        } catch (Exception e) {
        }
        return platos;
    }
    
}
