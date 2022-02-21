
package com.crixus.config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection con;
	String url = "jdbc:postgresql://localhost:5432/ecommerce";
	String user = "ecommerce";
	String pass = "1234";
	
	public Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {
			
		}
		return con;
	}
}
