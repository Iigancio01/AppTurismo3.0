/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.ValidarLogin;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author avata
 */
public class UsuarioDAO implements ValidarLogin {
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    
    @Override
    public int validar(Usuario usu){
        String sql="Select * from USUARIO where CORREOELECTRONICO=? and PASSWORD_2=? ";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, usu.getCorreousuario());
            ps.setString(2, usu.getContraseña());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                usu.setCorreousuario(rs.getString("CORREOELECTRONICO"));
                usu.setContraseña(rs.getString("PASSWORD_2"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        }catch(Exception e){
            System.out.println("No se ha podido validar"+e.getMessage());
        }
        return 0;
    }
}
