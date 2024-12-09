import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/ProcessPasswordReset")
public class ProcessPasswordReset extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        String newPassword = request.getParameter("newPassword");

        if (token == null || newPassword == null) {
            response.sendRedirect("password_reset.jsp?error=Invalid request");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establish a connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "Shab*1809");

            // Check if token exists and is still valid
            String tokenQuery = "SELECT email, expiration FROM password_reset_tokens WHERE token = ?";
            stmt = conn.prepareStatement(tokenQuery);
            stmt.setString(1, token);
            rs = stmt.executeQuery();

            if (!rs.next()) {
                response.sendRedirect("password_reset.jsp?error=Invalid or expired token");
                return;
            }

            // Verify token expiration
            Timestamp expiration = rs.getTimestamp("expiration");
            if (expiration.before(Timestamp.valueOf(LocalDateTime.now()))) {
                response.sendRedirect("password_reset.jsp?error=Token expired");
                return;
            }

            String email = rs.getString("email");

            // Hash the new password using BCrypt
            String hashedPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt());

            // Update user's password in the `users` table
            String updatePasswordQuery = "UPDATE users SET password = ? WHERE email = ?";
            stmt = conn.prepareStatement(updatePasswordQuery);
            stmt.setString(1, hashedPassword);
            stmt.setString(2, email);
            stmt.executeUpdate();

            // Delete the used token from `password_reset_tokens`
            String deleteTokenQuery = "DELETE FROM password_reset_tokens WHERE token = ?";
            stmt = conn.prepareStatement(deleteTokenQuery);
            stmt.setString(1, token);
            stmt.executeUpdate();

            // Redirect to a success page or login page with a success message
            response.sendRedirect("login.jsp?message=Password successfully reset");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("password_reset.jsp?error=" + URLEncoder.encode(e.getMessage(), "UTF-8"));
            System.out.println("Token retrieval failed: " + e.getMessage());

            
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
