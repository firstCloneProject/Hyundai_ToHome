package tester;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;

public class BannerDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource dataFactory;
	private Connection conn;
	private CallableStatement cstmt;
	
    public BannerDAO() {
    	try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");

		} catch (Exception e) {
			e.printStackTrace();
		}
    }

    public List<String> ListBanner(){
    	System.out.println("listbanner");
    	List<String> li = new ArrayList<>();

    	try {
			conn = dataFactory.getConnection();
			String query = "select * from banner";
			System.out.println(query);
			cstmt = conn.prepareCall(query) ;
			ResultSet rs = cstmt.executeQuery();
			while(rs.next()) {
				String url = rs.getString("url");
				li.add(url);
			}
			rs.close();
			cstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	return li;
    }

}
