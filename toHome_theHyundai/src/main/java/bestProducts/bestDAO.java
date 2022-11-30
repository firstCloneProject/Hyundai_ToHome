package bestProducts;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import oracle.jdbc.OracleTypes;

public class bestDAO {

	private DataSource dataFactory;
	private Connection conn;
	private CallableStatement cstmt;

	public bestDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<bestVO> listbests() {
		List<bestVO> listbests = new ArrayList<bestVO>();
		try {
			conn = dataFactory.getConnection();
			String query = "{call salecal(?)}";
			CallableStatement cstmt = conn.prepareCall(query);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			
			cstmt.executeQuery();
			System.out.println(cstmt.getFetchSize());

			ResultSet rs = (ResultSet)cstmt.getObject(1);
			while (rs.next()) {

				System.out.println(rs.getString("product_name"));
				System.out.println(rs.getString("salepercent"));
				System.out.println(rs.getString("imagepath"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("salecals"));
				
//				String product_name = rs.getString(1);
//				String imagepath = rs.getString(2);
//				Integer price = rs.getInt(3);
				
				String product_name = rs.getString(1);
				Integer salepercent = rs.getInt(2);
				String imagepath = rs.getString(3);
				Integer price = rs.getInt(4);
				Integer salecals = rs.getInt(5);

				bestVO listbest = new bestVO(product_name,salepercent,imagepath,price,salecals);
				listbests.add(listbest);
			}

			rs.close();
			cstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listbests;
	}



}
