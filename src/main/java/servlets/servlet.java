/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import dao.EmpleadoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import verificadores.Verificacion;
import modelo.Empleado;

/**
 *
 * @author HJVM
 */
public class servlet extends HttpServlet {

    EmpleadoDAO empdao = new EmpleadoDAO();
    Verificacion verificar = new Verificacion();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int opc = Integer.parseInt(request.getParameter("opc"));

        switch (opc) {
            case 1:
                agregarEmpleado(request, response);
                break;
            case 2:
                logueo(request, response);
                break;
        }
    }

    protected void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = (String) request.getParameter("nombre");
        String apellido = (String) request.getParameter("apellido");
        String cargo = (String) request.getParameter("cargo");
        String password = (String) request.getParameter("password");
        if (verificar.noVacio(nombre) && verificar.noVacio(apellido) && verificar.noVacio(cargo) && verificar.noVacio(password)) {
            Empleado emp = new Empleado(empdao.getNuevoCodigo(), cargo, nombre, apellido, password, 1);
            empdao.agregarEmpleado(emp);
        } else {
            JOptionPane.showMessageDialog(null, "Faltan llenar campos");
        }

        request.getRequestDispatcher("/Login.jsp").forward(request, response);

    }

    protected void logueo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = (String) request.getParameter("user");
        String pass = (String) request.getParameter("contrasenia");
        
        if (verificar.noVacio(usuario) && verificar.noVacio(pass) && verificar.esNumeroEntero(usuario)){
            Empleado emp = new Empleado();
            emp.setCodEmpleado(Integer.parseInt(usuario));
            emp.setPass(pass);
            if (empdao.existeEmpleado(emp)){
                request.setAttribute("empleadoActual", empdao.datosEmpleado(usuario));
                request.getRequestDispatcher("/FormularioMesero.jsp").forward(request, response);
            }
        }
    }

    //protected void otro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { }
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
        processRequest(request, response);
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
