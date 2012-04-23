package com.sirass.OLD;

import java.sql.Connection;
import java.sql.SQLException;
import org.apache.commons.dbcp.BasicDataSource;

/**
 *
 * @author gomezhyuuga
 */
public class DBConnection {

    private BasicDataSource dataSource;
    private String driverClassName;
    private String url;
    private String username;
    private String password;
//    static DataSource dataSource;

    public DBConnection() {
        // Establecer datos de acceso a la base de datos
        dataSource = new BasicDataSource();
        driverClassName = "";
        url = "";
        username = "";
        password = "";
        // Establecer Driver, URL, username y password. Datos por Defecto
        this.driverClassName = "com.mysql.jdbc.Driver";
        this.url = "jdbc:mysql://localhost:3306";
        this.username = "root";
        this.password = "root";
    }

    public void inicializarDataSource() {
        // Crear un DataSource a partir de la implementacion de Apache
        dataSource.setDriverClassName(driverClassName);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);

        // Comprobar que la conexión es correcta
        dataSource.setValidationQuery("select 1");
    }

    public Connection realizaConexion() {
        Connection connection = null;
        try {
            // Obtener conexión con la base de dato
            connection = (Connection) this.dataSource.getConnection();
//            System.out.println("CONEXION OBTENIDA");
        } catch (SQLException ex) {
            System.out.println("ERROR AL REALIZAR CONEXION");
//            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }

        return connection;
    }

    public void liberaConexion(Connection conexion) {
        if (conexion != null) {
            // Liberar la conexion para que alguien más la utilice
            try {
                conexion.close();
//                System.out.println("CONEXION CERRADA");
            } catch (SQLException ex) {
                System.out.println("Excepción al momento de liberar conexión");
//                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public String getDriverClassName() {
        return driverClassName;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
