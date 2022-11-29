package db;
import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

import javax.naming.NamingException;

public class DBCPTest {
	public static void main(String[] args) throws ClassNotFoundException, SQLException, NamingException {
		
		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		String runSP = "{ call INSERTT1PROCEDURE(?) }";
		try {
			Connection conn = DBCPConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setBigDecimal(1, new BigDecimal(i));
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			sc.close();
		}
	}
}
