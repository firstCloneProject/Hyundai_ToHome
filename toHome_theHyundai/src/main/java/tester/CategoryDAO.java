package tester;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import oracle.jdbc.OracleType;
import oracle.jdbc.internal.OracleTypes;
import tester.ProductVO;

@WebServlet("/CategoryDAO")
public class CategoryDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataFactory;
	private Connection conn;
	private CallableStatement cstmt;
    
	public CategoryDAO() {
    	try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
    }

    public List<ProductVO> list6Product(){
    	String runSP = "{ call pro_select_product_by_category_6(?) }";
    	List<ProductVO> productList = new ArrayList();
    	try {
    		conn = dataFactory.getConnection();
    		cstmt = conn.prepareCall(runSP);
    		cstmt.registerOutParameter(1, OracleTypes.CURSOR);						
			cstmt.executeQuery();
			ResultSet rs = (ResultSet)cstmt.getObject(1);
			while(rs.next()) {
				String name =rs.getString(1);
				int price = rs.getInt(2);
				int priceOri = rs.getInt(3);
				int sale = rs.getInt(4);
				String comname = rs.getString(5);
				String path = rs.getString(6);
				String category = rs.getString(7);
				ProductVO productVO = new ProductVO(name,price,priceOri,sale,comname,path,category);
				productList.add(productVO); //오류가 났을 때 여길 수정하면 될수도....?
			}
			rs.close();
			cstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return productList;
    	
    }
}
