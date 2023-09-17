/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import modelo.*;
import util.MySQLConexion;
import java.util.*;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Axel
 */
public class EmpleadoDAO {
    public int getNuevoCodigo(){
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "select count(*) from empleado;";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()){
                return rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return -1;
    }
}
