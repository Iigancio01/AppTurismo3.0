/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author avata
 */
public class Departamentos {
    String IdDepartamento;
    String IdTarifa;
    String IdComuna;
    String Direccion;
    String Descripcion;

    public Departamentos() {
    }

    public Departamentos(String IdDepartamento, String IdTarifa, String IdComuna, String Direccion, String Descripcion) {
        this.IdDepartamento = IdDepartamento;
        this.IdTarifa = IdTarifa;
        this.IdComuna = IdComuna;
        this.Direccion = Direccion;
        this.Descripcion = Descripcion;
    }

    public String getIdDepartamento() {
        return IdDepartamento;
    }

    public void setIdDepartamento(String IdDepartamento) {
        this.IdDepartamento = IdDepartamento;
    }

    public String getIdTarifa() {
        return IdTarifa;
    }

    public void setIdTarifa(String IdTarifa) {
        this.IdTarifa = IdTarifa;
    }

    public String getIdComuna() {
        return IdComuna;
    }

    public void setIdComuna(String IdComuna) {
        this.IdComuna = IdComuna;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
}
