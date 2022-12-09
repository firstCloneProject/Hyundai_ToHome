package magazine;

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

@WebServlet("/mgzController")

public class mgzController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	mgzDAO mDao;
    
    public void init() throws ServletException{
    	mDao = new mgzDAO();
    }
    
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		if (action == null) {
			action = "/getAllRecipe.do";
		}
		System.out.println("action : " + action);
		
		if (action.equals("/getRecommand.do")) {
			HttpSession session = request.getSession();
			CustVO custVO = (CustVO) session.getAttribute("loginUser");
			String customerId = request.getParameter("CustomerId");
			System.out.println(customerId);
			
			List<mgzVO> recipeList = mDao.getRecommand(customerId);
			request.setAttribute("recipeList", recipeList);
			RequestDispatcher dispatch = request.getRequestDispatcher("/magazine/magazine.jsp");
			dispatch.forward(request, response);
			for(int i = 0; i < recipeList.size(); i++) {
				System.out.println(recipeList.get(i).toString());
			}
		}else if (action.equals("/getAllRecipe.do")) {
			
			List<mgzVO> recipeList = mDao.getAllRecipe();
			request.setAttribute("recipeList", recipeList);
			
			
			  // RequestDispatcher dispatch =
				/*
				 * request.getRequestDispatcher("/magazine/magazine.jsp"); //
				 * dispatch.forward(request, response);
				 */
			 			
			  for(int i = 0; i < recipeList.size(); i++) {
			  System.out.println(recipeList.get(i).toString());
			  }
			 
//			request.setAttribute("mgzVO", mgzVO);

			//nextPage="/toHome_theHyundai/magazine/magazine.jsp";
			//System.out.println("next페이지는" +nextPage);
			RequestDispatcher dispatch = request.getRequestDispatcher("/magazine/magazine.jsp");
			dispatch.forward(request, response);
			System.out.println("---------------------------------------");
			//response.sendRedirect(nextPage);
		}
		
	}
}
