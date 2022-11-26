package cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cartController")
public class cartController extends HttpServlet {
	
    cartDAO cDao;
    
    public void init() throws ServletException{
    	cDao = new cartDAO();
    }
    
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action : " + action);
		
		if (action == null || action.equals("/listCart.do")) {
			List<cartVO> test = cDao.selectCart();
			request.setAttribute("test", test);
			RequestDispatcher dispatch = request.getRequestDispatcher("/cart/cart.jsp");
			dispatch.forward(request, response);
			for(int i = 0; i < test.size(); i++) {
				System.out.println(test.get(i).toString());
			}
		}
		
	}
}
