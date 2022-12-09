package customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/ajax/*")
public class AjaxController extends HttpServlet{
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

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String action = request.getPathInfo();
		//String contextPath = request.getContextPath();
		System.out.println("action:" + action);
		
		if (action == null || action.equals("/checkId.do")) {
				
			//Map<String, Integer> map = new HashMap<>();

			String customerId = request.getParameter("customerId");
			
			// join.jsp에서 받아온 key값이 customerId이고
			// value값은 유저가 실제로 적은 값, String customerId에는 value값이 들어간다.
			PrintWriter out = response.getWriter();
			
			CustDAO custDAO = new CustDAO();
			try {
				int idCheck = custDAO.checkId(customerId);
				if (idCheck == 0) {
					System.out.println("이미 존재하는 아이디입니다.");
				} else if (idCheck == 1) {
					System.out.println("사용 가능한 아이디입니다...");
				}
				
				JSONObject jobj = new JSONObject();
				
				jobj.put("result", idCheck);
				
//				map.put("result", idCheck);
//				
//				List<HashMap> list = new ArrayList<>(); 
//				jobj.put("map", map);
				
				
//				list.add(jobj);
				response.setContentType("application/x-json; charset=utf-8");
				
				response.getWriter().print(jobj);
				
				
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

}
