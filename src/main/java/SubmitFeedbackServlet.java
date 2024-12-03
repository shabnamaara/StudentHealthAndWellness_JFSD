import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitFeedback")
public class SubmitFeedbackServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String feedbackText = request.getParameter("feedback_text");
        int rating = Integer.parseInt(request.getParameter("rating"));
        int appointmentId = Integer.parseInt(request.getParameter("appointment_id"));
        int userId = Integer.parseInt(request.getParameter("user_id"));

        String jdbcURL = "jdbc:mysql://localhost:3306/student_health_wellness";
        String dbUser = "root"; // replace with your DB username
        String dbPassword = "Prasanna@10"; // replace with your DB password

        Connection connection = null;
        PreparedStatement statement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            String sql = "INSERT INTO feedback (appointment_id, user_id, feedback_text, rating) VALUES (?, ?, ?, ?)";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, appointmentId);
            statement.setInt(2, userId);
            statement.setString(3, feedbackText);
            statement.setInt(4, rating);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.getWriter().println("Feedback submitted successfully!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error submitting feedback: " + e.getMessage());
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
