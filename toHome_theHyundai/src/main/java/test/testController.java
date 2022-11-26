package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/testing/*")

public class testController extends HttpServlet{
	testDAO testDAO;
	
	public void init() throws ServletException {
		testDAO = new testDAO();
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(request, response);

		String nextPage = null;

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String action = request.getPathInfo();
		String contextPath = request.getContextPath();
		System.out.println("action:" + action);

		if (action == null || action.equals("/add.do")) {
			System.out.println("controller µé¾î¿È");
			String customerid = request.getParameter("customerid");
			
			System.out.println(customerid);

			testVO testVO = new testVO(customerid);
			testDAO.add(testVO);
			request.setAttribute("msg", "add");
			nextPage = "/login/welcome.jsp";
		}
//		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
//		dispatch.forward(request, response);
	}
}
