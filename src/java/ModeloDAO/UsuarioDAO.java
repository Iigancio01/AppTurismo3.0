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

    
    @Override
    public int validar(Usuario usu){
        String sql="Select * from USUARIO where CORREOELECTRONICO=? and PASSWORD_2=? ";
        try{
            int r=0;
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, usu.getCorreousuario());
            ps.setString(2, usu.getContraseña());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                usu.setCorreousuario(rs.getString("CORREOELECTRONICO"));
                usu.setContraseña(rs.getString("PASSWORD_2"));
                usu.setTipousuario(rs.getString("TIPO_USUARIO_IDTIPO_USUARIO"));
                usu.setNombreusuario(rs.getString("NOMBREUSUARIO"));
            }
            
            if(r==1 && "1".equals(usu.getTipousuario())){
                return 1;
            }else if(r==1 && "2".equals(usu.getTipousuario())){
                return 2;
            }else if(r==0){
                
                return 0;
            }
        }catch(Exception e){
            System.out.println("No se ha podido validar"+e.getMessage());
        }
        return 0;
    }

    @Override
    public int validarTipo(Usuario usu) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
