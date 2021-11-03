/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudItems;
import Modelo.Items;
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
public class ItemsDAO implements CrudItems {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    Items itm =new Items();
            
    @Override
    public List listarItems() {
        List<Items> datos=new ArrayList<>();
        String sql="Select * from ITEM";
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Items it= new Items();
                it.setIdItem(rs.getString("IDITEM"));
                it.setIdFamiliaItem(rs.getString("SUB_FAMILIA_ITEM_IDSUB_FAMILIA_ITEM"));
                it.setDescripcion(rs.getString("DESCRIPCION"));
                it.setValorItem(parseInt(rs.getString("VALOR")));
                
                datos.add(it);
            }
        }catch (Exception e){
            System.out.println("No se han podido listar los items "+e.getMessage());
        }
        return datos;
    }

    @Override
    public Items listarIdItems(String IdItem) {
        String sql="Select * from ITEM where IDITEM="+IdItem;
        try{
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                itm.setIdItem(rs.getString("IDITEM"));
                itm.setIdFamiliaItem(rs.getString("SUB_FAMILIA_ITEM_IDSUB_FAMILIA_ITEM"));
                itm.setDescripcion(rs.getString("DESCRIPCION"));
                itm.setValorItem(parseInt(rs.getString("VALOR")));
               
                
            }
        }catch (Exception e){
            System.out.println("No se a podido listar"+ e.getMessage());
        }
        return itm;
    }

    @Override
    public boolean addItems(Items it) {
        String sql="insert into ITEM(IDITEM, SUB_FAMILIA_ITEM_IDSUB_FAMILIA_ITEM, DESCRIPCION, VALOR) "
                +  "values('"+it.getIdItem()+"','"+it.getIdFamiliaItem()+"','"+it.getDescripcion()+"','"+it.getValorItem()+"')";
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
    public boolean editItems(Items it) {
        try{
            String sql="update ITEM set IDITEM='"+it.getIdItem()+"', SUB_FAMILIA_ITEM_IDSUB_FAMILIA_ITEM='"+it.getIdFamiliaItem()+"', "
                + "DESCRIPCION='"+it.getDescripcion()+"', VALOR='"+it.getValorItem()+"'where IDITEM="+it.getIdItem();
            con=conex.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteItems(String IdItem) {
        String sql="delete from ITEM where IDITEM="+IdItem;
        
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
