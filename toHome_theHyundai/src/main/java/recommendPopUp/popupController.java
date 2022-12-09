package recommendPopUp;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customer.CustVO;

/**
 * Servlet implementation class popupController
 */
@WebServlet("/popupController")
public class popupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    popupDAO pDAO;
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		pDAO = new popupDAO();
	}
  
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action: "+ action);
		
		if(action == null || action.equals("/popup.do"))
		{
			CustVO loginSession = (CustVO) session.getAttribute("loginUser");
			System.out.println("loginSession:" +loginSession);
			String customerId = loginSession.getCustomerId();
			System.out.println(customerId);
			List<popupVO> test = pDAO.selectPopup(customerId);
			request.setAttribute("test", test);
			RequestDispatcher dispatch = request.getRequestDispatcher("/recommendPopUp/newPopup.jsp");
			dispatch.forward(request, response);
			for(int i = 0; i < test.size(); i++) {
				System.out.println(test.get(i).toString());
			}
		}
		
	}

}
