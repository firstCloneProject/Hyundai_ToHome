package tester;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import tester.ProductVO;

@WebServlet("/TimesaleDAO")
public class TimesaleDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataFactory;
	private Connection conn;
	private CallableStatement cstmt;
    
	public TimesaleDAO() {
    	try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
    }

    public ProductVO listTimesale(){
    	String runSP = "{ call pro_select_product_by_salepercent }";
    	ProductVO productVO = null;
    	try {
    		conn = dataFactory.getConnection();
    		cstmt = conn.prepareCall(runSP);
    		cstmt.registerOutParameter(1, java.sql.Types.VARCHAR);			
    		cstmt.registerOutParameter(2, java.sql.Types.INTEGER);			
			cstmt.registerOutParameter(3, java.sql.Types.INTEGER);			
			cstmt.registerOutParameter(4, java.sql.Types.INTEGER);			
			cstmt.registerOutParameter(5, java.sql.Types.VARCHAR);			
			cstmt.executeQuery();
			
			productVO.setProductName(cstmt.getString(1));
			productVO.setPrice(cstmt.getInt(2));
			productVO.setSalePercent(cstmt.getInt(3));
			productVO.setCompanyID(cstmt.getInt(4));
			productVO.setImagePath(cstmt.getString(5));
			
			cstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return productVO;
    	
    }
}
