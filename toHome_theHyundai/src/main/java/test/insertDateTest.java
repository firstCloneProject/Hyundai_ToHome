package test;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Scanner;

import db.DBConnection;

public class insertDateTest {
	public static void main(String[] args) throws ParseException {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Date ют╥б : ");
		String date = sc.next();
		
		String runSP = "{call insertDateTestProcedure(?)}";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		java.util.Date Date = sdf.parse(date);
		java.sql.Date d = new java.sql.Date(Date.getTime());
		
		
		try {
			Connection conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setDate(1, d);
			callableStatement.executeUpdate();
		  }catch (SQLException e) {
	         System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
	         e.printStackTrace();
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sc.close();
	      }
	}
	
	
}
