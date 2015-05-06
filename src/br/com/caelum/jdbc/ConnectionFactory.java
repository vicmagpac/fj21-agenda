package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() {
		try {
			 DriverManager.registerDriver(new com.mysql.jdbc.Driver()); //Essa linha foi a diferença
			return DriverManager.getConnection("jdbc:mysql://192.168.33.10/fj21", "root", "victor81854778");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
