/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudArriendo;
import Modelo.Arriendo;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author avata
 */
public class ArriendoDAO implements CrudArriendo{
    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    Arriendo arri= new Arriendo();
    
    @Override
    public List listarArriendo() {
        List<Arriendo> datos=new ArrayList<>();
        String sql="Select * from DETAIL_ARRIENDO";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Arriendo arri= new Arriendo();
                arri.setIdArriendo(rs.getString("IDDETAIL_ARRIENDO"));
                arri.setIdDepartamento(rs.getString("DEPARTAMENTO_IDDEPARTAMENTO"));
                arri.setIdMasterArriendo(rs.getString("MASTER_ARRIENDO_IDMASTER_ARRIENDO"));
                arri.setFechaInicio(rs.getDate("FECHA_INICIO"));
                arri.setFechaFin(rs.getDate("FECHA_FIN"));
                arri.setMonto(parseInt(rs.getString("MONTO")));
                datos.add(arri);
            }
        }catch (Exception e){
            
        }
        return datos;
    }

    @Override
    public Arriendo listarIdArriendo(String IdArriendo) {
         String sql="Select * from DETAIL_ARRIENDO where IDDETAIL_ARRIENDO="+IdArriendo;
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                arri.setIdArriendo(rs.getString("IDDETAIL_ARRIENDO"));
                arri.setIdDepartamento(rs.getString("DEPARTAMENTO_IDDEPARTAMENTO"));
                arri.setIdMasterArriendo(rs.getString("MASTER_ARRIENDO_IDMASTER_ARRIENDO"));
                arri.setFechaInicio(rs.getDate("FECHA_INICIO"));
                arri.setFechaFin(rs.getDate("FECHA_FIN"));
                arri.setMonto(parseInt(rs.getString("MONTO")));
            }
        }catch(Exception e){
            
        }
        
        return arri;
    }

    @Override
    public boolean addArriendo(Arriendo arri) {
       String sql="insert into DETAIL_ARRIENDO(IDDETAIL_ARRIENDO, DEPARTAMENTO_IDDEPARTAMENTO, MASTER_ARRIENDO_IDMASTER_ARRIENDO, FECHA_INICIO, FECHA_FIN, MONTO) "
                +  "values('"+arri.getIdArriendo()+"','"+arri.getIdDepartamento()+"','"+arri.getIdMasterArriendo()+"','"+arri.getFechaInicio()+"',"
                +  "'"+arri.getFechaFin()+"','"+arri.getMonto()+"')";
        
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
    public boolean editArriendo(Arriendo arri) {
        try{
            String sql="update DETAIL_ARRIENDO set IDDETAIL_ARRIENDO='"+arri.getIdArriendo()+"',DEPARTAMENTO_IDDEPARTAMENTO='"+arri.getIdDepartamento()+"',"
                    + "MASTER_ARRIENDO_IDMASTER_ARRIENDO='"+arri.getIdMasterArriendo()+"',FECHA_INICIO='"+arri.getFechaInicio()+"', FECHA_FIN='"+arri.getFechaFin()+"',"
                    + "MONTO='"+arri.getMonto()+"'where IDDETAIL_ARRIENDO="+arri.getIdArriendo();
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteArriendo(String IdArriendo) {
        String sql="delete from DETAIL_ARRIENDO where IDDETAIL_ARRIENDO="+IdArriendo;
        
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el arriendo"+ e.getMessage());
        }
        return false;
    }
    
}
