package tester;


import java.io.IOException;

import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tester.BannerDAO;
import tester.CategoryDAO;

@WebServlet("/main")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BannerDAO bannerDAO;
	TimesaleDAO timesaleDAO;
	CategoryDAO categoryDAO;
	public void init() throws ServletException {
		bannerDAO = new BannerDAO();
		timesaleDAO = new TimesaleDAO();
		categoryDAO = new CategoryDAO();
	}
	


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		String contextPath = request.getContextPath();
		if (action == null) {
			List<String> li = bannerDAO.ListBanner();
			List<ProductVO> saleProductList = timesaleDAO.list6Product();
			List<ProductVO> ctgrProductList = categoryDAO.list6Product();
			request.setAttribute("saleProductList", saleProductList);
			request.setAttribute("bannerList",li);
			request.setAttribute("ctgrProductList", ctgrProductList);
			nextPage = "main.jsp";
			System.out.println(ctgrProductList.get(0).toString());
		}else if (action.equals("")) {
			
		}
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
