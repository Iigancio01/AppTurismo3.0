/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Modelo.Mantencion;
import Interfaces.CrudMantencion;


public class MantencionDAO implements CrudMantencion{
    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    Mantencion man= new Mantencion();

    @Override
    public List listarDptoMantencion() {
        List<Mantencion> datos=new ArrayList<>();
        String sql="Select * from MANTENIMIENTO";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Mantencion m= new Mantencion();
                m.setIdMantencion(rs.getString("IDMANTENIMIENTO"));
                m.setIdDepartmentoM(rs.getString("DEPARTAMENTO_IDDEPARTAMENTO"));
                m.setFechaM(rs.getString("FECHA"));

                datos.add(m);
            }
        }catch (Exception e){
            
        }
        return datos;
    }




    @Override
    public boolean deleteMantenimientoDpto(String IdMantencion) {
        String sql="delete from MANTENIMIENTO where IDMANTENIMIENTO="+IdMantencion;
        
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar la mantencion"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean addDpto(Mantencion man) {
        String sql="insert into MANTENIMIENTO(IDMANTENIMIENTO, DEPARTAMENTO_IDDEPARTAMENTO, FECHA)"
                +  "values('"+man.getIdMantencion()+"','"+man.getIdDepartmentoM()+"',TO_DATE('"+man.getFechaM()+"','YYYY-MM-DD HH24:MI:SS'))";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido insertar los datos"+ e.getMessage());
        }
        return false;
    }
    
}
