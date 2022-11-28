package customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cust/*")
public class CustController extends HttpServlet {
	CustDAO custDAO;

	public void init() throws ServletException {
		custDAO = new CustDAO();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * super.service(request, response);
		 */
		String nextPage = null;

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		
		String action = request.getPathInfo();
		String contextPath = request.getContextPath();
		System.out.println("action:" + action);

		if (action == null || action.equals("/addCustomer.do")) {
			String customerId = request.getParameter("customerId");
			String pwd = request.getParameter("pwd");
			
			System.out.println("controller 들어옴");
//			String customerId = request.getParameter("customerId");
//			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String birth = request.getParameter("birth");
			String address = request.getParameter("address");
			String telNo = request.getParameter("telNo");
			String gender = request.getParameter("gender");
			String joinDate = request.getParameter("joinDate");
			System.out.println(customerId);
			System.out.println(pwd);
			System.out.println(name);
			System.out.println(telNo);
			//System.out.println(birth);
			System.out.println(gender);
			//System.out.println(address);
			//System.out.println(joinDate);

			CustVO custVO = new CustVO(customerId, pwd, name, birth, address, telNo, joinDate, gender);
			custDAO.addCustomer(custVO);
			request.setAttribute("msg", "addCustomer");
			nextPage = "/login/welcome.jsp";
		
		}else if(action.equals("/loginCustomer.do")){
			HttpSession session = request.getSession();

			String customerId = request.getParameter("customerId");
			String pwd 		  = request.getParameter("pwd");
			System.out.println("들어왔나"+customerId + " "+pwd);
			
			CustVO memberInfo = custDAO.loginCustomer(customerId,pwd);
			//request.setAttribute("customerId", memberInfo);			
			
		//	CustVO custVO = custDAO.getCustomer(customerId);
			
			if(memberInfo!=null) {
				//if(memberInfo.getPwd().equals(pwd)) {
			//if(memberInfo !=null) {
				//session.removeAttribute("customerId");
				session.setAttribute("isLogOn", true); //책 방법
				session.setAttribute("loginUser", memberInfo);
				
				
				nextPage="../main.jsp";
				
			}else {
				nextPage ="/toHome_theHyundai/login/loginFail.jsp";
			}
			
		}
		System.out.println("next페이지는" +nextPage);
		System.out.println("---------------------------------------");
		response.sendRedirect(nextPage);
		/*
		 * RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		 * dispatch.forward(request, response);
		 */}

//	private void doHandle(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		String nextPage = null;
//
//		request.setCharacterEncoding("utf-8");
//		response.setContentType("text/html;charset=utf-8");
//
//		String action = request.getPathInfo();
//		String contextPath = request.getContextPath();
//		System.out.println("action:" + action);
//
//		if (action == null || action.equals("/addCustomer.do")) {
//			System.out.println("controller 들어옴");
//			String customerId = request.getParameter("customerId");
//			String pwd = request.getParameter("pwd");
//			String name = request.getParameter("name");
//			String telNo = request.getParameter("telNo");
//			String birth = request.getParameter("birth");
//			String gender = request.getParameter("gender");
//			String address = request.getParameter("address");
//			String joinDate = request.getParameter("joinDate");
//			CustVO custVO = new CustVO(customerId, pwd, name, telNo, birth, gender, address, joinDate);
//			custDAO.addCustomer(custVO);
//			request.setAttribute("msg", "addCustomer");
//			nextPage = "/login/welcome.jsp";
//		}
//		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
//		dispatch.forward(request, response);
//	}
}
