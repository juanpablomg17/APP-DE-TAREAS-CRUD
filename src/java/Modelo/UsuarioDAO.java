
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
    
    
    public int validarUsuario(Usuario user){
        int r =0;
        
        Connection miConexion = null;
        PreparedStatement miStatement = null;
        ResultSet miResultSet = null;
        
        
        try {
         String consulta =" select * from usuarios where NOMBRE_USUARIO=? and PASSWORD=?";
        
        miConexion = origenDatos.getConnection();
        
        miStatement = miConexion.prepareStatement(consulta);
        
        miStatement.setString(1,user.getUsuario());
        miStatement.setString(2,user.getPassword());
        
        miResultSet = miStatement.executeQuery();
        
            while (miResultSet.next()) { 
                r = r+1;
                user.setUsuario(miResultSet.getString(2));
                user.setPassword(miResultSet.getString(3));
            }
            
            if (r==1){
                return 1;
            }else{
                return 0;
            }
            
        } catch (Exception e) {
            return 0;
        }
       
        
        
    }
}


