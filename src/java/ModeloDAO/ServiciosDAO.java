/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudServicios;
import Modelo.Servicios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author avata
 */
public class ServiciosDAO implements CrudServicios {
    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    Servicios se= new Servicios();
    
    
    
    @Override
    public List listarServicios() {
        List<Servicios> datos=new ArrayList<>();
        String sql="Select * from SUB_FAMILIA_SERVICIO";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Servicios se= new Servicios();
                se.setIdSubFamiliaServicio(rs.getString("IDSUB_FAMILIA_SERVICIO"));
                se.setIdFamiliaServicio(rs.getString("FAMILIA_SERVICIO_IDFAMILIA_SERVICIO"));
                se.setNombreSubFamilia(rs.getString("NOM_SUBFAMILIA"));

                datos.add(se);
            }
        }catch (Exception e){
            
        }
        return datos;
    }

    @Override
    public Servicios listarIdServicios(String IdSubFamiliaServicio) {
         String sql="Select * from SUB_FAMILIA_SERVICIO where IDSUB_FAMILIA_SERVICIO="+IdSubFamiliaServicio;
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
              se.setIdSubFamiliaServicio(rs.getString("IDSUB_FAMILIA_SERVICIO"));
              se.setIdFamiliaServicio(rs.getString("FAMILIA_SERVICIO_IDFAMILIA_SERVICIO"));
              se.setNombreSubFamilia(rs.getString("NOM_SUBFAMILIA"));
            }
        }catch(Exception e){
            
        }
        
        return se;
    }

    @Override
    public boolean addServicios(Servicios se) {
        String sql="insert into SUB_FAMILIA_SERVICIO(IDSUB_FAMILIA_SERVICIO, FAMILIA_SERVICIO_IDFAMILIA_SERVICIO, NOM_SUBFAMILIA) "
                +  "values('"+se.getIdSubFamiliaServicio()+"','"+se.getIdFamiliaServicio()+"','"+se.getNombreSubFamilia()+"')";
        
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
    public boolean editServicio(Servicios se) {
        try{
            String sql="update SUB_FAMILIA_SERVICIO set IDSUB_FAMILIA_SERVICIO='"+se.getIdSubFamiliaServicio()+"', FAMILIA_SERVICIO_IDFAMILIA_SERVICIO='"+se.getIdFamiliaServicio()+"',"
                + "NOM_SUBFAMILIA='"+se.getNombreSubFamilia()+"'where IDSUB_FAMILIA_SERVICIO="+se.getIdSubFamiliaServicio();
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteServicio(String IdSubFamiliaServicio) {
        
        String sql="delete from SUB_FAMILIA_SERVICIO where IDSUB_FAMILIA_SERVICIO="+IdSubFamiliaServicio;
        
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar la mantencion"+ e.getMessage());
        }
        return false;
    }
    
}
