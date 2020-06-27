/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;



import java.io.InputStream;
import java.util.Date;

/**
 *
 * @author JUAN PABLO
 */
public class Tareas {
    
    private int id;
    private String nombre;
    private String descripcion;
    private Date fecha;
    private InputStream multimedia;
    private byte[] multimedia2;
    

    public Tareas() {
    }

    public Tareas(int id, String nombre, String descripcion, Date fecha) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fecha = fecha;
    }

    public Tareas(String nombre, String descripcion, Date fecha) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fecha = fecha;
    }

    
    
   
    

   
    

    public Tareas(int id) {
        this.id = id;
    }


    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

   
    public InputStream getMultimedia() {
        return multimedia;
    }

    public void setMultimedia(InputStream multimedia) {
        this.multimedia = multimedia;
    }

    public byte[] getMultimedia2() {
        return multimedia2;
    }

    public void setMultimedia2(byte[] multimedia2) {
        this.multimedia2 = multimedia2;
    }

  
  

   
 
  


    

    public Tareas(String nombre, String descripcion) {
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    

    public Tareas(int id, String nombre, String descripcion) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Tareas{" + "id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + '}';
    }

  
}
