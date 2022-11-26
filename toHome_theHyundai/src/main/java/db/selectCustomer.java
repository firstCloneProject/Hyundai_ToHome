package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class selectCustomer {

   public static void main(String args[]) throws SQLException {

      Connection conn = null;
      Statement stmt = null;
      ResultSet rset = null;

      conn = DBConnection.getConnection();

      try {
         stmt = conn.createStatement();
         rset = stmt.executeQuery("SELECT * FROM customer"); //sql developer 안에 테이블이 있어야 함
					//본인 사용자로 들어가서 create table~ customer_t 하고 insert 까지 한 후에 java run 하기

         while (rset.next()) {
            System.out.println(rset.getString(1));
         }
      }

      finally {
         if (rset != null)
            rset.close();
         if (stmt != null)
            stmt.close();
         if (conn != null)
            conn.close();
      }
   }

}