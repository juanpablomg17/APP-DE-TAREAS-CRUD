package Modelo;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.Date;

public class UsuarioDAO {

    DataSource origenDatos;

    public DataSource getOrigenDatos() {
        return origenDatos;
    }

    public void setOrigenDatos(DataSource origenDatos) {
        this.origenDatos = origenDatos;
    }

    public UsuarioDAO() {
    }

    public UsuarioDAO(DataSource origenDatos) {
        this.origenDatos = origenDatos;
    }

    public int validarUsuario(Usuario user) {
        int r = 0;

        Connection miConexion = null;
        PreparedStatement miStatement = null;
        ResultSet miResultSet = null;

        try {
            String consulta = " select * from usuarios where NOMBRE_USUARIO=? and PASSWORD=?";

            miConexion = origenDatos.getConnection();

            miStatement = miConexion.prepareStatement(consulta);

            miStatement.setString(1, user.getUsuario());
            miStatement.setString(2, user.getPassword());

            miResultSet = miStatement.executeQuery();

            while (miResultSet.next()) {
                r = r + 1;
                user.setUsuario(miResultSet.getString(2));
                user.setPassword(miResultSet.getString(3));
            }

            if (r == 1) {
                return 1;
            } else {
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }

    }

    public void agregarUsuario(Usuario user) throws SQLException {
          Connection miConexion = null;
        PreparedStatement miStatement = null;
        ResultSet miResultSet = null;
        
        try {
          
         String insertar = "INSERT INTO usuarios (NOMBRE,APELLIDO,NOMBRE_USUARIO,PASSWORD,TIPO_USUARIO,EMAIL,TELEFONO,DIRECCION,FECHA_DE_NACIMIENTO,TIPO_DOCUMENTO,NUMERO_DOCUMENTO) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
      
        miConexion = origenDatos.getConnection();

       

        miStatement = miConexion.prepareStatement(insertar);

        miStatement.setString(1, user.getNombre());
        miStatement.setString(2, user.getApellido());
        miStatement.setString(3, user.getUsuario());
        miStatement.setString(4, user.getPassword());
        miStatement.setString(5, user.getTipo_usuario());
        miStatement.setString(6, user.getCorreo());
        miStatement.setInt(7, user.getTelefono());
        miStatement.setString(8, user.getDireccion());

        java.util.Date utiDate = user.getFecha_nacimiento();

        java.sql.Date fechaConvertida = new java.sql.Date(utiDate.getTime());
        miStatement.setDate(9, fechaConvertida);

        miStatement.setString(10, user.getTipo_documento());
        miStatement.setInt(11, user.getNumero_documento());
        
        miStatement.execute();
        
       
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        

    }
}
