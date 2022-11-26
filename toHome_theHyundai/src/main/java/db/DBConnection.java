package db;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnection {

	private static Connection conn; 

	private DBConnection() { //������
	}

	static {
		// ȯ�漳�� ������ �о���� ���� ��ü ����
		Properties properties  = new Properties();
		Reader reader;
		try {
			reader = new FileReader("C:/dev64/workspace/Hyundai/src/main/webapp/WEB-INF/lib/oracle.properties");  // �о�� ���� ����
			System.out.print("reader ��");
			properties.load(reader); 
			System.out.println("reader load");
			// ���� ���� �ε��ϱ�
		} catch (FileNotFoundException e1) {
			System.out.println("����: ������ ������ ã���������ϴ� :" + e1.getMessage());
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		String driverName = properties.getProperty("driver"); //oracle.jdbc.dricer.OracleDriver
		String url = properties.getProperty("url");
		String user = properties.getProperty("user");
		String pwd = properties.getProperty("password");

		try {
			Class.forName(driverName); //���ڿ��� �ָ� �޸𸮿� �ε�. DB�� �����ϱ� ���ؼ��� ���� ���� ����̹� Ŭ���� �ε��ؾ�
			System.out.println("class for name");
			conn = DriverManager.getConnection(url, user, pwd);
			System.out.println(url + user + pwd);
			System.out.println("connection success");
		} catch (ClassNotFoundException e) {
			System.out.println("����: ����̹��ε� ���� :" + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("����: connection fail :" + e.getMessage());
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return conn;
	}
	
	public static void close(Connection conn, CallableStatement callableStatement,
			ResultSet rset) {
		if (rset != null) {
			try {
				rset.close();
			} catch (SQLException e) {
			}
		}
		if (callableStatement != null) {
			try {
				callableStatement.close();
			} catch (SQLException e) {
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
	}
}
