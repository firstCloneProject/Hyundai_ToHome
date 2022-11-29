package recommendPopUp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import oracle.jdbc.OracleTypes;

public class popupDAO {
	public List<popupVO> selectPopup() {
		Connection conn = DBManager.getConnection();
		List<popupVO> popupList = new ArrayList<popupVO>();
		String customerId = "dkssud";
		Integer productId = null;
		String productName = null;
		String imagePath = null;
		String recipeName = null;
		String recipeThumb = null;
		
		try {
			String runSP = "{call recPop2(?,?)}";
			System.out.println("selectPopup()");
			CallableStatement cstmt = conn.prepareCall(runSP);
			
			cstmt.setString(1, customerId); //customerID 넣기
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.executeQuery();
			ResultSet rs = (ResultSet)cstmt.getObject(2);
			
			while(rs.next()) {
				System.out.println(rs.getString(1)); //product_name
				System.out.println(rs.getString(2)); //recipe_name
				System.out.println(rs.getString(3)); //imagepath
				System.out.println(rs.getString(4)); //thumb
				productName = rs.getString(1);
				recipeName = rs.getString(2);
				imagePath = rs.getString(3);
				recipeThumb = rs.getString(4);
				popupVO pvo = new popupVO(productName, recipeName, imagePath, recipeThumb);
				popupList.add(pvo);
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	
		return popupList;
	}
}
