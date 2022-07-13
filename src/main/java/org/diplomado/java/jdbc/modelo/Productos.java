package org.diplomado.java.jdbc.modelo;

import java.util.Date;
public class Productos {
    private Integer idproductos;
    private String nombre;
    private Integer precio;
    private Date fechaRegistro;

    private Categorias categorias;

    public Categorias getCategorias(){
        return categorias;
    }
    public void setCategorias(Categorias categorias){
        this.categorias = categorias;
    }
    public Productos() {
    }
    public Productos(Integer idproductos, String nombre, Integer precio, Date fechaRegistro)
    {
        this.idproductos = idproductos;
        this.nombre = nombre;
        this.precio = precio;
        this.fechaRegistro = fechaRegistro;
    }
    public Integer getIdproductos() {

        return idproductos;
    }

    public void setIdproductos(Integer idproductos) {

        this.idproductos = idproductos;
    }

    public String getNombre() {

        return nombre;
    }

    public void setNombre(String nombre) {

        this.nombre = nombre;
    }
    public Integer getPrecio() {

        return precio;
    }

    public void setPrecio(Integer precio) {

        this.precio = precio;
    }

    public Date getFechaRegistro() {

        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {

        this.fechaRegistro = fechaRegistro;
    }

    @Override
    public String toString(){
        return idproductos + " | " +nombre+ " | " +precio+ " | " +fechaRegistro+ categorias.getNombre();
    }

}
