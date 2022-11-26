package db;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class insertCustomer {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("이름 입력: ");
		String id = sc.next();
		
		System.out.print("급여 입력: ");
		String pwd = sc.next();
		
		String runSP = "{ call insertCustomer(?, ?) }";
		
		try {
			Connection conn = DBConnection.getConnection(); //모든 파일마다 ????
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, id); //첫번째 물음표에 입력한 ename 넣는다.
			callableStatement.setString(2, pwd); //첫번째 물음표에 입력한 ename 넣는다.

//			callableStatement.setBigDecimal(2, new BigDecimal(sal)); //2번째 물음표에 입력한 sal값을 넣는다. 
//			callableStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			callableStatement.executeUpdate();
			//각 변수마다 받을 데이터 타입 생각해서 넣기.
				
			System.out.println("성공");	
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
