<%@ page import="java.sql.*" %>

<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    String dbUrl = "jdbc:mysql://localhost:3306/student_health_wellness";
    String dbUser = "root";
    String dbPassword = "Prasanna@10";

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

        String query = "INSERT INTO discussions (title, content) VALUES (?, ?)";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, title);
        stmt.setString(2, content);
        stmt.executeUpdate();

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
    }
    response.sendRedirect("discussion.jsp");
%>
