import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userId = request.getParameter("user_id");
        String service = request.getParameter("service");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String doctorName = request.getParameter("doctor_name"); // New line for doctor name

        // Database connection details
        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
        String dbUser = "root";
        String dbPassword = "Shab*1809";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // SQL query to insert appointment data
            String sql = "INSERT INTO appointments (user_id, service, date, time, doctor_name) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, userId);
            statement.setString(2, service);
            statement.setString(3, date);
            statement.setString(4, time);
            statement.setString(5, doctorName); // Save doctor name

            // Execute the insert operation
            statement.executeUpdate();

            // Close the connection
            conn.close();

            // Set success message and redirect to schedule page
            request.setAttribute("message", "Appointment scheduled successfully!");
            request.getRequestDispatcher("schedule.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}