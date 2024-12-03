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
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String message = request.getParameter("message");

	    // Log received values for debugging
	    System.out.println("Received name: " + name);
	    System.out.println("Received email: " + email);
	    System.out.println("Received message: " + message);
	    // Check for null values before proceeding
	    if (name == null || email == null || message == null || name.isEmpty() || email.isEmpty() || message.isEmpty()) {
	        response.getWriter().write("All fields are required.");
	        return; // Stop further processing
	    }

	    // Database connection details
	    String jdbcURL = "jdbc:mysql://localhost:3306/student_health_wellness";
	    String dbUser = "root";
	    String dbPassword = "MadasuPrasanna@10";

	    Connection connection = null;

	    try {
	        // Load MySQL driver
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        // Attempt to connect to the database
	        connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
	        System.out.println("Database connection successful.");

	        // Insert data into the database
	        String sql = "INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)";
	        PreparedStatement statement = connection.prepareStatement(sql);
	        statement.setString(1, name);
	        statement.setString(2, email);
	        statement.setString(3, message);
	        statement.executeUpdate();
	        System.out.println("Data inserted into database.");

	        // Send email confirmation
	        boolean emailSent = EmailSender.sendEmail(email, "Thank you for contacting us", "We have received your message!");

	        if (emailSent) {
	            response.getWriter().write("Message sent and saved successfully!");
	        } else {
	            response.getWriter().write("Message saved, but email could not be sent.");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        // Log the specific error message
	        response.getWriter().write("There was an error: " + e.getMessage());
	    } finally {
	        // Ensure connection is closed
	        try {
	            if (connection != null) connection.close();
	        } catch (Exception closeException) {
	            closeException.printStackTrace();
	        }
	    }
	}
}