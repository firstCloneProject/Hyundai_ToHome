package cart;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import oracle.jdbc.OracleTypes;

public class cartDAO {
	// 1. 데이터베이스 연결
	public List<cartVO> selectCart() {
		Connection conn = DBManager.getConnection();
		List<cartVO> cartList = new ArrayList<cartVO>();
		String customerId = "dkssud2";
		Integer productId = null;
		String productName = null;
		Integer price = null;
		Integer salePercent = null;
		String imagePath = null;
		Integer remain = null;
		String companyId = null;
		Integer quantity = null;
		

		Integer salePrice = null;
		Integer deliveryPrice = 3500;
		Integer totalPrice = null;
		Integer count = null;
		
		try {
			String runSP = "{call p_CART(?,?) }";
			System.out.println("selectCart() 들어옴");
			CallableStatement cstmt = conn.prepareCall(runSP);
			
			cstmt.setString(1, customerId);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.executeQuery();
			ResultSet rs = (ResultSet)cstmt.getObject(2);
			
			while(rs.next()) {
				//cartVO CVO = new cartVO(null, null, null, null, null, null, null, null);
				//String으로 하나씩 받아서
				//한번에 생성자로 저장
				System.out.println(rs.getInt(1));
				productId = rs.getInt(1);
				productName = rs.getString(2);
				price = rs.getInt(3);
				salePercent = rs.getInt(4);
				imagePath = rs.getString(5);
				remain = rs.getInt(6);
				companyId = rs.getString(7);
				quantity = rs.getInt(8);
				salePrice = price * salePercent / 100;
				totalPrice = price - salePrice;
				cartVO cvo1 = new cartVO(customerId, productId, productName, price, salePercent, imagePath, remain, companyId, quantity, salePrice, deliveryPrice, totalPrice, count);
				cartList.add(cvo1);
				
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cartList;
	}

	private cartVO cartVO() {
		// TODO Auto-generated method stub
		return null;
	}
}
