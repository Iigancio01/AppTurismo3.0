/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author avata
 */
public class Arriendo {
    String IdArriendo;
    String IdDepartamento;
    String IdMasterArriendo;
    Date FechaInicio;
    Date FechaFin;
    int Monto;

    public Arriendo() {
    }

    public Arriendo(String IdArriendo, String IdDepartamento, String IdMasterArriendo, Date FechaInicio, Date FechaFin, int Monto) {
        this.IdArriendo = IdArriendo;
        this.IdDepartamento = IdDepartamento;
        this.IdMasterArriendo = IdMasterArriendo;
        this.FechaInicio = FechaInicio;
        this.FechaFin = FechaFin;
        this.Monto = Monto;
    }

    public String getIdArriendo() {
        return IdArriendo;
    }

    public void setIdArriendo(String IdArriendo) {
        this.IdArriendo = IdArriendo;
    }

    public String getIdDepartamento() {
        return IdDepartamento;
    }

    public void setIdDepartamento(String IdDepartamento) {
        this.IdDepartamento = IdDepartamento;
    }

    public String getIdMasterArriendo() {
        return IdMasterArriendo;
    }

    public void setIdMasterArriendo(String IdMasterArriendo) {
        this.IdMasterArriendo = IdMasterArriendo;
    }

    public Date getFechaInicio() {
        return FechaInicio;
    }

    public void setFechaInicio(Date FechaInicio) {
        this.FechaInicio = FechaInicio;
    }

    public Date getFechaFin() {
        return FechaFin;
    }

    public void setFechaFin(Date FechaFin) {
        this.FechaFin = FechaFin;
    }

    public int getMonto() {
        return Monto;
    }

    public void setMonto(int Monto) {
        this.Monto = Monto;
    }
    
    
   
}
