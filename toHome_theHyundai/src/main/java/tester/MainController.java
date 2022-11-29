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

@WebServlet("/main/*")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BannerDAO bannerDAO;
	ProductDAO productDAO;
	public void init() throws ServletException {
		bannerDAO = new BannerDAO();
		productDAO = new ProductDAO();
	}
	


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		String contextPath = request.getContextPath();
		System.out.println("action " + action);
		System.out.println("contextPath " + contextPath);
		System.out.println("hi");
		if (action == null) {
			List<String> li = bannerDAO.ListBanner();
			List<ProductVO> saleProductList = productDAO.list6Product();
			List<ProductVO> ctgrProductList = productDAO.list6Category();
			request.setAttribute("saleProductList", saleProductList);
			request.setAttribute("bannerList",li);
			request.setAttribute("ctgrProductList", ctgrProductList);
			nextPage = "main.jsp";
		}else if (action.equals("/pDetail.do")) {
			
			String id = request.getParameter("ProductID");
			ProductVO li = productDAO.Detail(id);
			System.out.println( li.toString());
			request.setAttribute("ProductDetail", li);
			nextPage = "ProductDetail.jsp";		
		}else if (action.equals("/ProductDetail.jsp")) {
			System.out.println("helloooooo");
			
		}
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
