package db;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class insertCustomer {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("�̸� �Է�: ");
		String id = sc.next();
		
		System.out.print("�޿� �Է�: ");
		String pwd = sc.next();
		
		String runSP = "{ call insertCustomer(?, ?) }";
		
		try {
			Connection conn = DBConnection.getConnection(); //��� ���ϸ��� ????
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, id); //ù��° ����ǥ�� �Է��� ename �ִ´�.
			callableStatement.setString(2, pwd); //ù��° ����ǥ�� �Է��� ename �ִ´�.

//			callableStatement.setBigDecimal(2, new BigDecimal(sal)); //2��° ����ǥ�� �Է��� sal���� �ִ´�. 
//			callableStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			callableStatement.executeUpdate();
			//�� �������� ���� ������ Ÿ�� �����ؼ� �ֱ�.
				
			System.out.println("����");	
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
