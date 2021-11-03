/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudDepartamento;
import Modelo.Departamentos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author avata
 */
public class DepartamentosDAO implements CrudDepartamento {
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();

    Departamentos dep= new Departamentos();
    
    @Override
    public List listarDpto() {
        List<Departamentos> datos=new ArrayList<>();
        String sql="Select * from DEPARTAMENTO";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Departamentos d= new Departamentos();
                d.setIdDepartamento(rs.getString("IDDEPARTAMENTO"));
                d.setIdTarifa(rs.getString("TARIFA_IDTARIFA"));
                d.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                d.setDireccion(rs.getString("DIRECCION"));
                d.setDescripcion(rs.getString("Descripcion"));
                datos.add(d);
            }
        }catch (Exception e){
            
        }
        return datos;
    }

    @Override
    public Departamentos listarIdDpto(String IdDepartamento) {
        String sql="Select * from DEPARTAMENTO where IDDEPARTAMENTO="+IdDepartamento;
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                dep.setIdDepartamento(rs.getString("IDDEPARTAMENTO"));
                dep.setIdTarifa(rs.getString("TARIFA_IDTARIFA"));
                dep.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                dep.setDireccion(rs.getString("DIRECCION"));
                dep.setDescripcion(rs.getString("Descripcion"));
                
            }
        }catch (Exception e){
            System.out.println("No se a podido listar"+ e.getMessage());
        }
        return dep;
    }

    
    @Override
    public boolean addDpto(Departamentos dpto) {
        String sql="insert into DEPARTAMENTO(IDDEPARTAMENTO, TARIFA_IDTARIFA, COMUNA_IDCOMUNA, DIRECCION, DESCRIPCION) "
                +  "values('"+dpto.getIdDepartamento()+"','"+dpto.getIdTarifa()+"','"+dpto.getIdComuna()+"','"+dpto.getDireccion()+"','"+dpto.getDescripcion()+"')";
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
    public boolean editDpto(Departamentos dpto) {
        
        try{
            String sql="update DEPARTAMENTO set IDDEPARTAMENTO='"+dpto.getIdDepartamento()+"', TARIFA_IDTARIFA='"+dpto.getIdTarifa()+"', "
                + "COMUNA_IDCOMUNA='"+dpto.getIdComuna()+"', DIRECCION='"+dpto.getDireccion()+"', DESCRIPCION='"+dpto.getDescripcion()+"'where IDDEPARTAMENTO="+dpto.getIdDepartamento();
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteDpto(String IdDepartamento) {
        String sql="delete from DEPARTAMENTO where IDDEPARTAMENTO="+IdDepartamento;
        
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el departamento"+ e.getMessage());
        }
        return false;
    }
}
