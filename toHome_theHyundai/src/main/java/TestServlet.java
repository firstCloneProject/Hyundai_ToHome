

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        
    
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
	   try {
		      response.getWriter().append("Served at: ").append(request.getContextPath());
		      Context con = new InitialContext();
		      Context envcon = (Context) con.lookup("java:/comp/env");
		      DataSource dFactory = (DataSource) envcon.lookup("jdbc/oracle");
		      String name1 ="";
		      Connection conn = dFactory.getConnection();
		      CallableStatement cstmt = conn.prepareCall("select product_name from products where product_name='¼Ò°í±â' ");
		
		      ResultSet rs = cstmt.executeQuery();
		      while(rs.next()) {
		         System.out.println(rs.getString(1));
		          name1 =rs.getString(1);
		         
		
		        }
				request.setAttribute("saleList", name1);
				RequestDispatcher dispatch = request.getRequestDispatcher("sale.jsp");
				dispatch.forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
 
}
