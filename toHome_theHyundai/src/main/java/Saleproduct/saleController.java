package Saleproduct;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class saleController
 */

//액션 씀 
@WebServlet("/saleController")
public class saleController extends HttpServlet {

	saleDAO sDAO =new saleDAO();
	
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	   request.setCharacterEncoding("utf-8");
	   response.setContentType("text/html;charset=utf-8");
		
		List<saleVO> listsales = sDAO.listsales();
		request.setAttribute("listsales", listsales);
		RequestDispatcher dispatch = request.getRequestDispatcher("/Sale/Sale.jsp");
		dispatch.forward(request, response);
		
		
		
		//--
		
//	List<saleVO> listbest = sDAO.listbest(); //회원정보 조회
//		
//	
//	
//	request.setAttribute("listbests", listbest);
//	RequestDispatcher dispatch2 = request.getRequestDispatcher("/best/best.jsp");
//	dispatch2.forward(request, response);
//	
//		
		
	}
}
	
	

