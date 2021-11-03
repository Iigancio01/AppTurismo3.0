/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Departamentos;
import Modelo.Usuario;
import ModeloDAO.DepartamentosDAO;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author avata
 */
public class Controlador extends HttpServlet {

    String listarDpto="VistasDpto/ListarDep.jsp";
    String addDpto="VistasDpto/AddDep.jsp";
    String editDpto="VistasDpto/EditDep.jsp";
    String VerInicioAdm="InicioAdmin.jsp";
    
    
    Departamentos dpto = new Departamentos();
    DepartamentosDAO dptoDAO = new DepartamentosDAO();
    
    UsuarioDAO dao=new UsuarioDAO();
    Usuario usu= new Usuario();
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion=request.getParameter("accionLogin");
        //Controlador login
        if(accion.equals("IngresarLogin")){
            String em=request.getParameter("txtemail");
            String pas=request.getParameter("txtpassword");
            usu.setCorreousuario(em);
            usu.setContraseña(pas);
            r=dao.validar(usu);
            if(r==1){
                request.getRequestDispatcher("InicioAdmin.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
               
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String acceso="";
        String action=request.getParameter("accion");
        
        if(action.equals("VerInicioAdm")){
            acceso=VerInicioAdm;
            
        }
        
        //Crud Departamento
        if(action.equalsIgnoreCase("listarDep")){
            acceso=listarDpto;
            
        }else if(action.equalsIgnoreCase("addDep")){
            acceso=addDpto;
            
        }
        else if(action.equalsIgnoreCase("AgregarDep")){
            String IdDepartamento=request.getParameter("txtIdDep");
            String IdTarifa=request.getParameter("txtTarifa");
            String IdComuna=request.getParameter("txtcomuna");
            String Direccion=request.getParameter("txtDireccion");
            String Descripcion=request.getParameter("txtDescripcion");
            dpto.setIdDepartamento(IdDepartamento);
            dpto.setIdTarifa(IdTarifa);
            dpto.setIdComuna(IdComuna);
            dpto.setDireccion(Direccion);
            dpto.setDescripcion(Descripcion);
            dptoDAO.addDpto(dpto);
            acceso=listarDpto;
            
        }
        else if(action.equalsIgnoreCase("editarDep")){
            request.setAttribute("IdDepartamento", request.getParameter("IdDepartamento"));
            acceso=editDpto;
            
        }
        else if(action.equalsIgnoreCase("ActualizarDep")){
            
            String IdDepartamento=request.getParameter("txtIdDep");
            String IdTarifa=request.getParameter("txtTarifa");
            String IdComuna=request.getParameter("txtcomuna");
            String Direccion=request.getParameter("txtDireccion");
            String Descripcion=request.getParameter("txtDescripcion");
            dpto.setIdDepartamento(IdDepartamento);
            dpto.setIdTarifa(IdTarifa);
            dpto.setIdComuna(IdComuna);
            dpto.setDireccion(Direccion);
            dpto.setDescripcion(Descripcion);
            dptoDAO.editDpto(dpto);
            acceso=listarDpto;
            
        }
        else if(action.equalsIgnoreCase("eliminarDep")){
            String IdDepartamento=request.getParameter("IdDepartamento");
            dpto.setIdDepartamento(IdDepartamento);
            dptoDAO.deleteDpto(IdDepartamento);
            acceso=listarDpto;
           
        }
        
       
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);

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
