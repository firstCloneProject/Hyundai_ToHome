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
			
			CallableStatement cstmt = conn.prepareCall("SELECT * FROM cart ");
			ResultSet rs = cstmt.executeQuery();
			while(rs.next()) {
				cartVO CVO = new cartVO(null, null, null);
				CVO.setCustomerId(rs.getString(1));
				CVO.setProductId(rs.getInt(2));
				CVO.setQuantity(rs.getInt(3));
				
				cartList.add(CVO);
			}
//			while (rs.next()) {
//				System.out.println(rs.getString(1));
//				cartVO cVO = new cartVO();
//				cVO.setCustomerId(rs.getString(1));
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cartList;
	}
}
