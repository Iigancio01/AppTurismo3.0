/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Interfaces.CrudCliente;
import Modelo.Cliente;
import java.util.ArrayList;
import java.util.List;
import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ClienteDAO implements CrudCliente{

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();

    Cliente cli= new Cliente();
    
    @Override
    public List listarCliente() {
       List<Cliente> datos=new ArrayList<>();
        String sql="Select * from CLIENTE";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Cliente cli= new Cliente();
                cli.setRutCliente(rs.getString("RUTCLIENTE"));
                cli.setIdUsuario(rs.getString("USUARIO_IDUSUARIO"));
                cli.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                cli.setNombreCli(rs.getString("NOMBRE"));
                cli.setAppellidoPC(rs.getString("APELLIDOP"));
                cli.setApellidoMC(rs.getString("APELLIDOM"));
                datos.add(cli);
            }
        }catch (Exception e){
            System.out.println("Los datos no se han podido listar "+e.getMessage());
        }
        return datos;
    }

    @Override
    public Cliente listarIdCliente(String RutCliente) {
        String sql="Select * from Cliente where RUTCLIENTE="+RutCliente;
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                cli.setRutCliente(rs.getString("RUTCLIENTE"));
                cli.setIdUsuario(rs.getString("USUARIO_IDUSUARIO"));
                cli.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                cli.setNombreCli(rs.getString("NOMBRE"));
                cli.setAppellidoPC(rs.getString("APELLIDOP"));
                cli.setApellidoMC(rs.getString("APELLIDOM"));
               
                
            }
        }catch (Exception e){
            System.out.println("No se a podido listar"+ e.getMessage());
        }
        return cli;
    }

    @Override
    public boolean addCliente(Cliente cli) {
        String sql="insert into CLIENTE(RUTCLIENTE, USUARIO_IDUSUARIO, COMUNA_IDCOMUNA, NOMBRE, APELLIDOP, APELLIDOM) "
                +  "values('"+cli.getRutCliente()+"','"+cli.getIdUsuario()+"','"+cli.getIdComuna()+"','"+cli.getNombreCli()+"','"+cli.getAppellidoPC()+"','"+cli.getApellidoMC()+"')";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido insertar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean editCliente(Cliente cli) {
        try{
            String sql="update CLIENTE set RUTCLIENTE='"+cli.getRutCliente()+"', USUARIO_IDUSUARIO='"+cli.getIdUsuario()+"', "
                + "COMUNA_IDCOMUNA='"+cli.getIdComuna()+"', NOMBRE='"+cli.getNombreCli()+"', APELLIDOP='"+cli.getAppellidoPC()+"', APELLIDOM='"+cli.getApellidoMC()+"'where RUTCLIENTE="+cli.getRutCliente();
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteCliente(String RutCliente) {
        String sql="delete from CLIENTE where RUTCLIENTE="+RutCliente;
        
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el cliente"+ e.getMessage());
        }
        return false;
    }
    
}
