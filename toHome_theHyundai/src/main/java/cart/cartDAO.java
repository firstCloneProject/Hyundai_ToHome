package cart;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class cartDAO {	
	DataSource dFSource = null;
	private cartDAO() {
		Context con = new InitialContext();
		Context envcon = (Context) con.lookup("java:/comp/env");
		dFactory = (DataSource) envcon.lookup("jdbc/oracle88");
	}
}
