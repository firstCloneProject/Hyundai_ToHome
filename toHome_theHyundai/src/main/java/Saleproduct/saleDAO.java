package Saleproduct;

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



public class saleDAO {
 
	
	private DataSource dataFactory;
	private Connection conn;
	private CallableStatement cstmt;

	public saleDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public List<saleVO> listsales(){
		List<saleVO> listsales = new ArrayList<saleVO>();
		try {
			conn = dataFactory.getConnection();
			String query = "{call sale_list(?)}";
			CallableStatement cstmt =conn.prepareCall(query);
			cstmt.registerOutParameter(1,OracleTypes.CURSOR);
//			System.out.println(cstmt.);
			// {call product_call.productdetail
			cstmt.executeQuery();
			System.out.println(query);
//			cstmt = conn.prepareCall(query);\
			
			
			ResultSet rs = (ResultSet)cstmt.getObject(1);
			while (rs.next())
			{
			
				System.out.println(rs.getString("product_name"));
				System.out.println(rs.getString("salepercent"));
				System.out.println(rs.getString("imagepath"));
				System.out.println(rs.getString("price"));
				//System.out.println(rs.getInt("vcnt"));
				
			
				String product_name = rs.getString(1);  //product_name
				Integer salepercent = rs.getInt(2); //salepercent
				 //imagepath 첫번재 줄의 3번재 컬럼 
				String imagepath = rs.getString(3);
				Integer price = rs.getInt(4); //price
				
				//saleVO listsale = new saleVO(product_name, salepercent, price);
				saleVO listsale = new saleVO(product_name,salepercent,imagepath,price);
				listsales.add(listsale); 
			}
			
			rs.close();
			cstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listsales;
	}

}

