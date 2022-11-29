package db;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envcontext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envcontext.lookup("jdbc/oracle");
			conn = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn, CallableStatement cstmt, ResultSet rs) {
		try {
			rs.close();
			cstmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

