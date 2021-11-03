/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author avata
 */
public class Cliente {
    
    String RutCliente;
    String IdUsuario;
    String IdComuna;
    String NombreCli;
    String AppellidoPC;
    String ApellidoMC;

    public Cliente() {
    }

    public Cliente(String RutCliente, String IdUsuario, String IdComuna, String NombreCli, String AppellidoPC, String ApellidoMC) {
        this.RutCliente = RutCliente;
        this.IdUsuario = IdUsuario;
        this.IdComuna = IdComuna;
        this.NombreCli = NombreCli;
        this.AppellidoPC = AppellidoPC;
        this.ApellidoMC = ApellidoMC;
    }

    public String getRutCliente() {
        return RutCliente;
    }

    public void setRutCliente(String RutCliente) {
        this.RutCliente = RutCliente;
    }

    public String getIdUsuario() {
        return IdUsuario;
    }

    public void setIdUsuario(String IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    public String getIdComuna() {
        return IdComuna;
    }

    public void setIdComuna(String IdComuna) {
        this.IdComuna = IdComuna;
    }

    public String getNombreCli() {
        return NombreCli;
    }

    public void setNombreCli(String NombreCli) {
        this.NombreCli = NombreCli;
    }

    public String getAppellidoPC() {
        return AppellidoPC;
    }

    public void setAppellidoPC(String AppellidoPC) {
        this.AppellidoPC = AppellidoPC;
    }

    public String getApellidoMC() {
        return ApellidoMC;
    }

    public void setApellidoMC(String ApellidoMC) {
        this.ApellidoMC = ApellidoMC;
    }
    
    
}
