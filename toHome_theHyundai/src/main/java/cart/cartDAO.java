package cart;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class cartDAO {
	// 1. 데이터베이스 연결
	public List<cartVO> selectCart() {
		Connection conn = DBManager.getConnection();
		List<cartVO> cartList = new ArrayList<cartVO>();
		String customerId = null;
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
			System.out.println("selectCart() 들어옴");
			CallableStatement cstmt = conn.prepareCall("select products.productID, products.product_name, products.price, products.salepercent, products.imagepath, products.remain, products.company_companyid, carts.quantity "
					+ "from carts join products on carts.product_productID = products.productid");
			ResultSet rs = cstmt.executeQuery();
			System.out.println(rs.getFetchSize());
			while(rs.next()) {
				//cartVO CVO = new cartVO(null, null, null, null, null, null, null, null);
				//String으로 하나씩 받아서
				//한번에 생성자로 저장
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
				cartVO cvo = new cartVO(customerId, productId, productName, price, salePercent, imagePath, remain, companyId, quantity, salePrice, deliveryPrice, totalPrice, count);
				cartList.add(cvo);
				
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cartList;
	}
}
