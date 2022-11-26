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
         rset = stmt.executeQuery("SELECT * FROM customer"); //sql developer �ȿ� ���̺��� �־�� ��
					//���� ����ڷ� ���� create table~ customer_t �ϰ� insert ���� �� �Ŀ� java run �ϱ�

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