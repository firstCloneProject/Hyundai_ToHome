package customer;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.DBManager;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.internal.OracleTypes;


public class CustDAO {
	private DataSource dataFactory;
	private Connection conn;

    private OracleCallableStatement cstmt;

	public CustDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int checkId(String customerId) throws SQLException {  // 유저가 입력한 값을 매개변수로 한다
//		Connection conn = DBManager.getConnection();
//		String sql = "select * from CUSTOMER where CUSTOMERID = ?"; // 입력값이 테이블에 있는지 확인
//		int idCheck = 0;
//		ResultSet rs;
//		PreparedStatement psmt;
//
//	    try {
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, id);
//			
//			rs = psmt.executeQuery();
//					
//			if(rs.next() || id.equals("")) {
//				idCheck = 0;  // 이미 존재하는 경우, 생성 불가능
//			} else {
//				idCheck = 1;  // 존재하지 않는 경우, 생성 가능
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			conn.close();
//		}
//		
//		return idCheck;
		
		System.out.println("checkId 넘어옴");
		
		String runSP = "{ call checkId(?, ?) }";
		int idCheck = 1;
		
	    
	    try {
			Connection conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			
			callableStatement.setString(1, customerId);
			callableStatement.registerOutParameter(2,OracleTypes.INTEGER);
			callableStatement.execute();
			
			idCheck = (int) callableStatement.getObject(2);
			
			if (idCheck == 1) {
				System.out.println("사용가능한 아이디입니다d.");
			}else {
				System.out.println("아이디가 존재합니다.");
			}
	
			System.out.println("idCheck는 " + idCheck);
			
			
			//conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idCheck;
	}
	
	
	public CustVO loginCustomer (String customerId, String _pwd) {
		System.out.println("loginCustomer 넘어옴");
		
		String runSP = "{ call logincustomer(?, ?, ?) }";
//		String idid = null;
	    CustVO custVO= null;
	        	    
	    try {
			Connection conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			
			//String customerId = custVO.
			callableStatement.setString(1, customerId);
			callableStatement.setString(2, _pwd);
			callableStatement.registerOutParameter(3,OracleTypes.CURSOR);
//			callableStatement.registerOutParameter(1, java.sql.Types.VARCHAR);
			callableStatement.execute();
			
			ResultSet rs = (ResultSet)callableStatement.getObject(3);
		//	ResultSet rs = ((OracleCallableStatement) callableStatement).getCursor(3);
			
//		    rs = callableStatement.executeQuery();
			System.out.println("gg");
			System.out.println("rs는 " + rs);
		    if(rs.next()){
		    	System.out.println("dd");
		    	
			    custVO = new CustVO();
			    custVO.setCustomerId(rs.getString(1));
			    
			    System.out.println("id는 "+rs.getString (1));
			    
			    custVO.setPwd(rs.getString(2));
			    custVO.setName(rs.getString(3));
			    custVO.setBirth(rs.getString(4));
			    custVO.setTelNo(rs.getString(5));
			    custVO.setJoinDate(rs.getString(6));
			    custVO.setGender(rs.getString(7));
			    custVO.setAddress(rs.getString(8));
			    
	
			    
			    } else {System.out.println("암것두 없음");
			    }
//			callableStatement.executeQuery();
			
	//		idid = callableStatement.getString(1);
			
			//conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return custVO;
	}

	public void addCustomer(CustVO custVO) {

		System.out.println("addCustomer 넘어옴");
		String runSP = "{ call insertCustomer(?, ?, ?, ? ,? ,?, ?, ?) }";

		try {
			Connection conn = DBManager.getConnection(); // 모든 파일마다 ????
			CallableStatement callableStatement = conn.prepareCall(runSP);

			String customerId = custVO.getCustomerId();
			String pwd = custVO.getPwd();
			String name = custVO.getName();
			String birth = custVO.getBirth();
			String address = custVO.getAddress();
			String telNo = custVO.getTelNo();
			String gender = custVO.getGender();
			String joinDate = custVO.getJoinDate();
//			Timestamp joinDate = Timestamp.valueOf(LocalDateTime.now());

//			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//			java.util.Date date = sdf.parse(birth);
//			java.sql.Date d = new java.sql.Date(date.getTime());
//			System.out.println("d is" + d);
//			callableStatement.setDate(4, d);

			System.out.println(customerId + pwd + name + telNo + gender + address);

			callableStatement.setString(1, customerId); // 첫번째 물음표에 입력한 ename 넣는다./
			callableStatement.setString(2, pwd);
			callableStatement.setString(3, name);
			callableStatement.setString(4, birth);
			callableStatement.setString(5, telNo);
			callableStatement.setString(6, joinDate);
			callableStatement.setString(7, gender);
			callableStatement.setString(8, address);

			// callableStatement.setDate(7, Timestamp~);

//			
//
//			
//			callableStatement.setString(5, birth);
//			 
//			callableStatement.setString(6, gender);
//			callableStatement.setString(7, address);
//			/*
//			 * java.util.Date dat = sdf.parse(joinDate); java.sql.Date da = new
//			 * java.sql.Date(dat.getTime()); System.out.println(da);
//			 * callableStatement.setDate(8, da);
//			 */
//			callableStatement.setString(8, joinDate);

			callableStatement.executeUpdate();

			System.out.println("성공");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		}
	}
}
