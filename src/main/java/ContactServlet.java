import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Check for empty or null fields
        if (username == null || email == null || message == null || username.isEmpty() || email.isEmpty() || message.isEmpty()) {
            response.getWriter().write("All fields are required.");
            return;
        }

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/student_health_wellness";
        String dbUser = "root";
        String dbPassword = "MadasuPrasanna@10";

        Connection connection = null;

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Insert the message into the database
            String sql = "INSERT INTO contacts (username, email, message) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, email);
            statement.setString(3, message);
            statement.executeUpdate();

            // Send confirmation email
            boolean emailSent = EmailSender.sendEmail(email, "Message Received", "Thank you for contacting us, " + username + ". We will get back to you soon!");

            if (emailSent) {
                response.getWriter().write("Your message has been sent and saved successfully.");
            } else {
                response.getWriter().write("Your message has been saved, but the email could not be sent.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred: " + e.getMessage());
        } finally {
            try {
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
