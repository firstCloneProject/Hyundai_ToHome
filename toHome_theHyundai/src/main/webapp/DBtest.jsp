<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="db.DBCPConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
        <table border="3" bordercolor="skyblue">
        <tr bgcolor="skyblue"><td>이름<td>직업</tr>
        
        <%
        // 쿼리문
        String query="select * from T1";
        
        // 커넥션 연결
        Connection conn = DBCPConnection.getConnection();
        
        // DB에 쿼리문을 보낸다.
        PreparedStatement pstmt = conn.prepareStatement(query);
        
        // 쿼리문의 결과값을 rs에 담는다.
        ResultSet rs = pstmt.executeQuery();
        
        // 결과값을 출력한다.
        while(rs.next()){
            out.println("<tr>");
            out.println("<td>"+rs.getBigDecimal("T1"));

            out.println("</tr>");
        }
        
        %>
        </table>
    </center>
</body>
</html>