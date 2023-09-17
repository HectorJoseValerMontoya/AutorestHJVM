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
    
    public void agregarEmpleado(Empleado empleado){
        Connection con = null;
        try {
            con = MySQLConexion.getConexion();
            
            //Agrega a la tabla PerfilEmpleado el codigo y el cargo
            String sqlAgregar = "insert into PerfilEmpleado values (null, ?);";
            PreparedStatement st = con.prepareStatement(sqlAgregar);
            st.setString(1, empleado.getCargo());
            st.executeUpdate();
            
            //Agregar datos del empleado
            //insert into Empleado values(null, "HJVM", "HJVM","12345",1,1);
            sqlAgregar = "insert into Empleado values(null, ?,?,?,?,?);";
            st = con.prepareStatement(sqlAgregar);
            st.setString(1, empleado.getNombre());
            st.setString(2, empleado.getApellido());
            st.setString(3, empleado.getPass());
            st.setInt(4, empleado.getCodPerfil());
            st.setInt(5, 1);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public boolean existeEmpleado(Empleado emp){
        Connection con  = null;
        
        try {
            con = MySQLConexion.getConexion();
            String sql = "select * from empleado where CodEmpleado = ? and Contrasena = ?;";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, emp.getCodEmpleado());
            st.setString(2, emp.getPass());
            if ((st.executeQuery()).next()){
                return true;
            }else{
                return false;
            }
        } catch (Exception e) {
        }
        
        return false;
    }
    
    public Empleado datosEmpleado(String codigo){
        int _cod = Integer.parseInt(codigo);
        Empleado emp = new Empleado();
        Connection con  = null;
        
        try {
            con = MySQLConexion.getConexion();
            String sql = "select * from empleado where CodEmpleado = ?;";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, _cod);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                emp.setCodEmpleado(rs.getInt(1));
                emp.setNombre(rs.getString(2));
                emp.setApellido(rs.getString(3));
                emp.setPass(rs.getString(4));
                emp.setCodEmpleado(rs.getInt(5));
                emp.setEstado(rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return emp;
    }
}
