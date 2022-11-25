package recommendPopup;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class popupController
 */
@WebServlet("/popupController")
public class popupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    popupDAO pDao;
   
    public void init() throws ServletException {
    	pDao = new popupDAO();
    }
    
}
