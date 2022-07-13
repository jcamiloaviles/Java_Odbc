package org.diplomado.java.jdbc.repositorio;

import org.diplomado.java.jdbc.modelo.Categorias;
import org.diplomado.java.jdbc.modelo.Productos;
import org.diplomado.java.jdbc.util.ConexionBaseDatos;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductoRepositorioIMPL implements Repositorio<Productos> {

    private Connection getConnection() throws SQLException {
        return ConexionBaseDatos.getInstance();
    }
    @Override
    public List<Productos> listar() {
        List<Productos> productos = new ArrayList<>();

        try (Statement stmt = getConnection().createStatement();
             ResultSet rs = stmt.executeQuery("SELECT p.*, c.nombre as Categorias FROM productos as p " +
             "inner join Categorias as c ON (p.Categoria_id = c.id)")) {
            while (rs.next()) {
                Productos p = crearProductos(rs);
                productos.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }

    @Override
    public Productos porId(int idproductos) {
        Productos productos = null;

        try (PreparedStatement stmt = getConnection().
                prepareStatement("SELECT p.*, c.nombre as Categorias FROM productos as p " +
                        " inner join Categorias as c ON (p.categoria_id = c.id) WHERE p.idproductos = ?")) {
            stmt.setInt(1, idproductos);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    productos = crearProductos(rs);
                }

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productos;
    }

    @Override
    public void guardar(Productos productos) {
        String sql;
        if (productos.getIdproductos() != null && productos.getIdproductos() > 0) {
            sql = "UPDATE productos SET nombre=?, precio=? WHERE idproductos=?";
        } else {
            sql = "INSERT INTO productos(nombre, precio, fecha_registro) VALUES(?,?,?)";
        }
        try (PreparedStatement stmt = getConnection().prepareStatement(sql)) {
            stmt.setString(1, productos.getNombre());
            stmt.setInt(2, productos.getPrecio());

            if (productos.getIdproductos() != null && productos.getIdproductos() > 0) {
                stmt.setInt(3, productos.getIdproductos());
            } else {
                stmt.setDate(3, new Date(productos.getFechaRegistro().getTime()));
            }
            stmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void eliminar(int idproductos) {
        try (PreparedStatement stmt = getConnection().prepareStatement("DELETE FROM productos WHERE idproductos=?")) {
            stmt.setInt(1, idproductos);
            stmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    private Productos crearProductos(ResultSet rs) throws SQLException {
        Productos p= new Productos();
        p.setIdproductos(rs.getInt( "idproductos"));
        p.setNombre(rs.getString( "nombre"));
        p.setPrecio(rs.getInt( "precio"));
        p.setFechaRegistro(rs.getDate( "fecha_registro"));
        Categorias categorias = new Categorias();
        categorias.setId(rs.getInt( "categoria_id"));
        categorias.setNombre(rs.getString( "categorias"));
        p.setCategorias(categorias);
        return p;
    }

}