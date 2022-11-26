package customer;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.DBConnection;

public class CustDAO {
	private DataSource dataFactory;
	private Connection conn;

	public CustDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String loginCustomer(String cusotmerId, String _pwd) {
		System.out.println("loginCustomer 넘어옴");

		String runSP = "{ call logincustomer(?, ?) }";
		String idid = null;
		try {
			Connection conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			
			//String customerId = custVO.
			callableStatement.setString(1, cusotmerId);
			callableStatement.setString(2, _pwd);
			callableStatement.registerOutParameter(1, java.sql.Types.VARCHAR);
			callableStatement.executeQuery();
			
			idid = callableStatement.getString(1);
			System.out.println(callableStatement);
			
			//conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idid;
	}
	
	public CustVO getCustomer(String customerId) {       
	    CustVO custVO= null;
	    String runSP = "{select * from customer where customerId=?}";
	     
	    Connection conn = null;
	    CallableStatement callableStatement = null;
	    ResultSet rs = null;

	    try {
	      conn = DBConnection.getConnection(); //이거 바꿔야 할 수도
		  callableStatement = conn.prepareCall(runSP);

	      callableStatement.setString(1, customerId);
	      rs = callableStatement.executeQuery();
	      if(rs.next()){
	        custVO = new CustVO();
	        custVO.setCustomerId(rs.getString("id"));
	        custVO.setPwd(rs.getString("pwd"));
	        custVO.setName(rs.getString("name"));
	        custVO.setAddress(rs.getString("address"));
	        custVO.setBirth(rs.getString("birth"));
	        custVO.setTelNo(rs.getString("telNo"));
	        custVO.setJoinDate(rs.getString("joinDate"));
	        
	      } 
	    } catch (Exception e) {
	      e.printStackTrace();
	    } finally {
	      DBConnection.close(conn, callableStatement, rs);
	    }
	    return custVO;
	  }

	public void addCustomer(CustVO custVO) {

		System.out.println("addCustomer 넘어옴");
		String runSP = "{ call insertCustomer(?, ?, ?, ? ,? ,?, ?, ?) }";

		try {
			Connection conn = DBConnection.getConnection(); // 모든 파일마다 ????
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
			callableStatement.setString(5, address);

			callableStatement.setString(6, telNo);
			// callableStatement.setDate(7, Timestamp~);
			callableStatement.setString(7, joinDate);
			callableStatement.setString(8, gender);

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
