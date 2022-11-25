package cart;

import java.io.IOException;
import java.util.List;

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
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		List<cartVO> test= cDao.selectCart();
		for(int i = 0; i < test.size(); i++) {
			System.out.println(test.get(i).toString());
		}
	}
}
