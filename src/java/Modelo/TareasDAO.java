
package Modelo;

import java.io.*;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.Date;
/**
 *
 * @author JUAN PABLO
 */
public class TareasDAO {
    
    private DataSource origenDatos;

    public TareasDAO(DataSource origenDatos) {
        this.origenDatos = origenDatos;
    }

    public TareasDAO() {
        
    }
    
    public List<Tareas> getTareas() throws Exception{
        
        List<Tareas> listaTareas = new ArrayList<>();
        
        Connection miConexion = null;
        Statement miStatement = null;
        ResultSet miResultSet = null;
        
        //-----------Establecer la conexión-------
        
        miConexion = origenDatos.getConnection();
        
        
        
       //---------- Crer la sentencia SQL
       
       String consulta = "SELECT * FROM tareas";
       miStatement = miConexion.createStatement();
       
       
       //----------EJECUTAR LA SENTENCIA SQL-----
       
       miResultSet = miStatement.executeQuery(consulta);
       //---------RECORRER EL RESULTSET OBTENIDO
       
       
       
       while (miResultSet.next()){
           int id = miResultSet.getInt(1);
           String nombre= miResultSet.getString(2);
           String descripcion = miResultSet.getString(3);
           
          
           Date fecha = miResultSet.getDate(4);
           Tareas tarea = new Tareas(id, nombre, descripcion,fecha);
           listaTareas.add(tarea);
           
           
       }
       
       miStatement.close();
       miConexion.close();
       
       return listaTareas;
    }
    
    public void listarImg(int id, HttpServletResponse response){
        String sql = "SELECT * FROM tareas WHERE ID="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            
        outputStream = response.getOutputStream();
        Connection miConexion = null;
        Statement miStatement = null;
        ResultSet miResultSet = null;
            
        miConexion = origenDatos.getConnection();
        miStatement = miConexion.createStatement();
        miResultSet = miStatement.executeQuery(sql);
        
        if (miResultSet.next()){
            inputStream = (InputStream) miResultSet.getBlob("MULTIMEDIA");
        }
        
        bufferedInputStream= new BufferedInputStream(inputStream);
        bufferedOutputStream = new BufferedOutputStream(outputStream);
        
        int i=0;
        while ((i=bufferedInputStream.read()) != -1){
            bufferedOutputStream.write(i);
        }
            
            
        } catch (Exception e) {
        }
        
        
    }
    
    public void agregarTareas(Tareas tarea) throws SQLException{
        Connection miConexion = null;
        PreparedStatement miStatement = null;
      
        
        try {
             miConexion = origenDatos.getConnection();
        
        
       
        
        
        String consulta = "INSERT INTO tareas(NOMBRE,DESCRIPCION,FECHA)"+
            "VALUES (?,?,?)";
        
        miStatement = miConexion.prepareStatement(consulta);
        
        miStatement.setString(1,tarea.getNombre());
        miStatement.setString(2,tarea.getDescripcion());
        
        java.util.Date utiDate = tarea.getFecha();
        
        java.sql.Date fechaConvertida = new java.sql.Date(utiDate.getTime());
        miStatement.setDate(3,fechaConvertida);
        
        
        
        miStatement.execute();
        
        miConexion.close();
        } catch (Exception e) {
            
        } finally{
            miStatement.close();
            miConexion.close();
        }
       
     
    }
    
    
    public void eliminarTareas(String id) throws SQLException{
       
        
        Connection miConexion = null;
        Statement miStatement = null;
       
        try {
        String codigo = id;
        
        miConexion = origenDatos.getConnection();
        
        miStatement = miConexion.createStatement();
        
        String delete = "DELETE FROM  tareas WHERE ID ='"+codigo+"'";
        
        miStatement.executeUpdate(delete);
        } finally {
            miStatement.close();
            miConexion.close();
        }
        
    }

    public Tareas getTarea(int id) throws SQLException {
        
      
            
         Connection miConexion = null;
        Statement miStatement = null;
        ResultSet miResultSet = null;
        
        Tareas tarea = null;
       
        int CODIGO = id;
        
        
        
        try {
            
            miConexion = origenDatos.getConnection();
            miStatement = miConexion.createStatement();
        
        String consulta = "SELECT * FROM  tareas WHERE ID = '"+id+"'";
        
         miResultSet = miStatement.executeQuery(consulta);
        
        
        
        
        if(miResultSet.next()){
            
            int ID = miResultSet.getInt(1);
            String NOMBRE= miResultSet.getString(2);
            String DESCRIPCION= miResultSet.getString(3);
             
             tarea = new Tareas(ID, NOMBRE, DESCRIPCION);
            
            
        }
        else{
            
            throw new Exception("NO HEMOS ENCONTRADO EL PRODUCTO= "+CODIGO);
        }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
      
        
        return tarea;
        
     
        
        
       
    }

    public void actualizarTareas(Tareas tareaActualizada)  throws SQLException{
        
        Connection miConexion = null;
        Statement miStatement = null;
        ResultSet miResultSet = null;
        
        try {
         Tareas t = tareaActualizada;
        
        int id= t.getId();
        String nombre = t.getNombre();
        String descripcion = t.getDescripcion();
        
        String update = "UPDATE tareas SET NOMBRE='"+nombre+"',DESCRIPCION='"+descripcion+"' WHERE ID='"+id+"'";
        
        // CREAR CONSULTA PREPARADA

        miConexion = origenDatos.getConnection();
        
        miStatement = miConexion.createStatement();
        
        
        miStatement.executeUpdate(update);
        } finally {
            miStatement.close();
            miConexion.close();
        }
        
        
        

    }

    public List<Tareas> BuscarTarea(int id) {
        Connection miConexion = null;
        Statement miStatement = null;
        ResultSet miResultSet = null;
        
        
  
        Tareas t = new Tareas();
         List<Tareas> listaTareas = new ArrayList<>();
        
        
        try {
            String busqueda = "SELECT * FROM tareas WHERE ID="+id;
            
            miConexion = origenDatos.getConnection();
            miStatement = miConexion.createStatement();
            
            miResultSet = miStatement.executeQuery(busqueda);
            
            int i=0;
            while (miResultSet.next()){
                i=i+1;
                int codigo = miResultSet.getInt(1);
                String nombre = miResultSet.getString(2);
                String descripcion = miResultSet.getString(3);
                Date fecha = miResultSet.getDate(4);
                
                t.setId(codigo);
                t.setNombre(nombre);
                t.setDescripcion(descripcion);
                t.setFecha(fecha);
                
                listaTareas.add(t);
                
            }
            
            if (i==1){
                return listaTareas;
            }
            else{
                return listaTareas=null;
            }
            
           
            
        } catch (Exception e) {
            return listaTareas=null;
        }
        
        
    }
    
}
