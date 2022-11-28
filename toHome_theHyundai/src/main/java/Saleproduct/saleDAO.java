package Saleproduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class saleDAO {
 
	
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;

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
			String query = "select product_name,salepercent,price,imegepath from products;"; //�̓G ���,��ǰ�̸�,���� ����,����
			// {call product_call.productdetail}
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
			
				System.out.println(rs.getString("product_name"));
				System.out.println(rs.getString("salepercent"));
				System.out.println(rs.getString("imagepath"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("imagepath"));
			
				String product_name = rs.getString(1);  //product_name
				Integer salepercent = rs.getInt(2); //salepercent
				String imagepath = rs.getString(3); //imagepath ù���� ���� 3���� �÷� 
				Integer price = rs.getInt(4); //price
//				
				
				
				//saleVO listsale = new saleVO(product_name, salepercent, price);
				saleVO listsale = new saleVO(salepercent, product_name, price,imagepath);
				listsales.add(listsale); 
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listsales;
	}

}

