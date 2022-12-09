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
			
			// join.jsp���� �޾ƿ� key���� customerId�̰�
			// value���� ������ ������ ���� ��, String customerId���� value���� ����.
			PrintWriter out = response.getWriter();
			
			CustDAO custDAO = new CustDAO();
			try {
				int idCheck = custDAO.checkId(customerId);
				if (idCheck == 0) {
					System.out.println("�̹� �����ϴ� ���̵��Դϴ�.");
				} else if (idCheck == 1) {
					System.out.println("��� ������ ���̵��Դϴ�...");
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
