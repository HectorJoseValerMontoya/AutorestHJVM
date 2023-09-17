/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import dao.PerfilEmpleado;
import sun.security.util.Password;

/**
 *
 * @author Axel
 */
public class Empleado extends PerfilEmpleado{
    
    
    public Empleado(){
        
    }
    
    public Empleado(int codigo, String cargo, String nombre, String apellido, String pass, int estado){
        this.codPerfil = codigo;
        this.cargo = cargo;
        this.codEmpleado = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.pass = pass;
        this.estado = estado;
    }
    
    private int codEmpleado;
    private String nombre;
    private String apellido;
    private String pass;
    private int estado;

    public int getCodPerfil() {
        return codPerfil;
    }

    public void setCodPerfil(int codPerfil) {
        this.codPerfil = codPerfil;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public int getCodEmpleado() {
        return codEmpleado;
    }

    public void setCodEmpleado(int codEmpleado) {
        this.codEmpleado = codEmpleado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
    
}
