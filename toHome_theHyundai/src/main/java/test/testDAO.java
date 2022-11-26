package test;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.DBConnection;

public class testDAO {
	private DataSource dataFactory;
	private Connection conn;
	
	public testDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void add(testVO testVO) {
		
		System.out.println("add �Ѿ��");
		String runSP = "{ call testProcedure(?) }";
		
		try {
			Connection conn = DBConnection.getConnection(); //��� ���ϸ��� ????
			CallableStatement callableStatement = conn.prepareCall(runSP);
			
			String customerid = testVO.getCustomerid();
			callableStatement.setString(1, customerid);
			
			
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); 
			  java.util.Date date = sdf.parse(customerid); 
			  java.sql.Date d = new java.sql.Date(date.getTime());
			  callableStatement.setDate(1, d);
			 
			  callableStatement.executeUpdate();
			
			
			//�� �������� ���� ������ Ÿ�� �����ؼ� �ֱ�.
				
			System.out.println("����");	
		}catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
	}
}
