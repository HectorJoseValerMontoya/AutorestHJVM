/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package verificadores;

/**
 *
 * @author HJVM
 */
public class Verificacion {
    public boolean noVacio(String cadena){
        if (cadena == null || cadena.isBlank() || cadena.isEmpty())
            return false;
        else
            return true;
    }
    
    public boolean esNumeroEntero(String num){
        try {
            Integer.parseInt(num);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
     public boolean esNumeroReal(String num){
        try {
            Double.parseDouble(num);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
}
