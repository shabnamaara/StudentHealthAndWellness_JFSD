
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/verify_reset_token")  // URL mapping for the servlet
public class VerifyResetTokenServlet extends HttpServlet {
    
    private static final String DB_URL = "jdbc:mysql://localhost:3306/student_health_wellness";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "MadasuPrasanna@10";  // Update with your database password

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");

        if (token == null || token.isEmpty()) {
            request.setAttribute("message", "Invalid or missing token.");
            request.getRequestDispatcher("password_reset_confirmation.jsp").forward(request, response);
            return;
        }

        // Check if token exists and is valid
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(
                     "SELECT email FROM password_reset_tokens WHERE token = ? AND expiration > NOW()")) {

            stmt.setString(1, token);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    // Token is valid, get email and set session attribute
                    request.getSession().setAttribute("resetEmail", rs.getString("email"));
                    response.sendRedirect("reset_password.jsp");  // Redirect to reset password page
                } else {
                    // Token is invalid or expired
                    request.setAttribute("message", "The link is invalid or has expired.");
                    request.getRequestDispatcher("password_reset_confirmation.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("message", "An error occurred. Please try again later.");
            request.getRequestDispatcher("password_reset_confirmation.jsp").forward(request, response);
        }
    }
}
