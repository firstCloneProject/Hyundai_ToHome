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

	private DBConnection() { //생성자
	}

	static {
		// 환경설정 파일을 읽어오기 위한 객체 생성
		Properties properties  = new Properties();
		Reader reader;
		try {
			reader = new FileReader("C:/dev64/workspace/Hyundai/src/main/webapp/WEB-INF/lib/oracle.properties");  // 읽어올 파일 지정
			System.out.print("reader 들어감");
			properties.load(reader); 
			System.out.println("reader load");
			// 설정 파일 로딩하기
		} catch (FileNotFoundException e1) {
			System.out.println("예외: 지정한 파일을 찾을수없습니다 :" + e1.getMessage());
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		String driverName = properties.getProperty("driver"); //oracle.jdbc.dricer.OracleDriver
		String url = properties.getProperty("url");
		String user = properties.getProperty("user");
		String pwd = properties.getProperty("password");

		try {
			Class.forName(driverName); //문자열을 주면 메모리에 로딩. DB에 접근하기 위해서는 제일 먼저 드라이버 클래스 로드해야
			System.out.println("class for name");
			conn = DriverManager.getConnection(url, user, pwd);
			System.out.println(url + user + pwd);
			System.out.println("connection success");
		} catch (ClassNotFoundException e) {
			System.out.println("예외: 드라이버로드 실패 :" + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("예외: connection fail :" + e.getMessage());
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
