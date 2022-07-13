package org.diplomado.java.jdbc;

import org.diplomado.java.jdbc.modelo.Categorias;
import org.diplomado.java.jdbc.modelo.Productos;
import org.diplomado.java.jdbc.repositorio.ProductoRepositorioIMPL;
import org.diplomado.java.jdbc.repositorio.Repositorio;
import org.diplomado.java.jdbc.util.ConexionBaseDatos;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
public class EjemploJDBC {
    public static void main(String[] args) {
        try (Connection conn = ConexionBaseDatos.getInstance()){
            Repositorio<Productos> repositorio = new ProductoRepositorioIMPL();
            System.out.println("========== listar ==========");
            repositorio.listar().forEach(System.out::println);
            System.out.println("========== obtener por id ==========");
            System.out.println(repositorio.porId(1));
            System.out.println("========== insertar nuevo producto ==========");

            Productos productos = new Productos();
            productos.setNombre("Productos prueba con categorias");
            productos.setPrecio(550);
            productos.setFechaRegistro(new Date());
            Categorias categorias = new Categorias();
            categorias.setId(2);
            productos.setCategorias(categorias);
            repositorio.guardar(productos);
            System.out.println("Producto guardado con exito");
            repositorio.listar().forEach(System.out::println);
        } catch (SQLException e) {
           e.printStackTrace();
        }
    }
}
