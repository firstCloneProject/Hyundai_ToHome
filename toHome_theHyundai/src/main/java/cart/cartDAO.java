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
		try {
			System.out.println("selectCart() 들어옴");
			CallableStatement cstmt = conn.prepareCall("select "
					+ "cart.customerid, cart.productid, product_t.productname, product_t.price, "
					+ "product_t.salepercent, product_t.remain, product_t.productcompanyid, cart.quantity "
					+ "from cart join product_t on cart.productid = product_t.productid");
			ResultSet rs = cstmt.executeQuery();
			System.out.println(rs.getFetchSize());
			while(rs.next()) {
				cartVO CVO = new cartVO(null, null, null, null, null, null, null, null);
				//String으로 하나씩 받아서 한번에 생성자로 저장
				CVO.setCustomerId(rs.getString(1)); //customerid
				CVO.setProductId(rs.getInt(2)); //productid
				CVO.setProductName(rs.getString(3)); //productname
				CVO.setPrice(rs.getInt(4));
				CVO.setSalePercent(rs.getInt(5));
				CVO.setRemain(rs.getInt(6));
				CVO.setCompanyId(rs.getString(7));
				CVO.setQuantity(rs.getInt(8));
				
				System.out.println(rs.getString(1));
				System.out.println(rs.getInt(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getString(7));
				System.out.println(rs.getInt(8));

				cartList.add(CVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cartList;
	}
}
