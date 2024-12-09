<%@ page import="java.sql.*" %>
<%! 
    public void deleteUser(int id) {
        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
        String dbUser = "root";
        String dbPassword = "Shab*1809";

        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
             PreparedStatement ps = conn.prepareStatement("DELETE FROM users WHERE id = ?")) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<html>
<body>
    <% 
        int id = Integer.parseInt(request.getParameter("user_id"));
        deleteUser(id);
        response.sendRedirect("admin-view-users.jsp");
    %>
</body>
</html>
