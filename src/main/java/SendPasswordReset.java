import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import java.io.IOException;
import java.util.UUID;
import java.sql.*;

public class SendPasswordReset extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailOrUsername = request.getParameter("emailOrUsername");
        System.out.println("Input email/username: " + emailOrUsername); // Log input

        // Retrieve user email from DB if necessary
        String toEmail = getEmailByUsernameOrEmail(emailOrUsername);

        if (toEmail == null) {
            // If no user found, set error message
            request.setAttribute("message", "No account found with that email or username.");
            request.getRequestDispatcher("password_reset_confirmation.jsp").forward(request, response);
            return;
        }

        // Generate a unique token
        String token = UUID.randomUUID().toString();
        storeToken(token, toEmail);

        // Email configuration and sending logic
        String subject = "Password Reset Request";
        String resetLink = "http://yourdomain.com/reset_password?token=" + token;
        String body = "<p>Click the following link to reset your password:</p>" + 
                      "<a href='" + resetLink + "'>Reset Password</a>";

        try {
            sendEmail(toEmail, subject, body);

            // After successful email send, set success message and forward to confirmation page
            request.setAttribute("message", "An email has been sent to the provided address with instructions to reset your password. Please check your inbox.");
            request.getRequestDispatcher("password_reset_confirmation.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error sending password reset email.");
            request.getRequestDispatcher("password_reset_confirmation.jsp").forward(request, response);
        }
    }

    private void sendEmail(String toEmail, String subject, String body) throws MessagingException {
        String fromEmail = System.getenv("2200033191kluniversity@gmail.com"); // Securely retrieve from environment
        String appPassword = System.getenv("qpietxxagcsvojtu");

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587"); // Use 587 for STARTTLS
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, appPassword);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(fromEmail));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
        message.setSubject(subject);
        message.setContent(body, "text/html");

        Transport.send(message);
    }

    private String getEmailByUsernameOrEmail(String emailOrUsername) {
        String email = null;
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "MadasuPrasanna@10");
             PreparedStatement stmt = conn.prepareStatement("SELECT email FROM users WHERE username = ? OR email = ?")) {
            
            stmt.setString(1, emailOrUsername);
            stmt.setString(2, emailOrUsername);
            System.out.println("Querying for: " + emailOrUsername); // Debugging line
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    email = rs.getString("email");
                    System.out.println("Found email: " + email); // Debugging line
                } else {
                    System.out.println("No user found for: " + emailOrUsername); // Debugging line
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Consider using a logging framework
        }
        return email;
    }

    private void storeToken(String token, String email) {
        // Store token and email in a table for password reset verification later
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_health_wellness", "root", "MadasuPrasanna@10");

            String query = "INSERT INTO password_reset_tokens (email, token, expiration) VALUES (?, ?, DATE_ADD(NOW(), INTERVAL 1 HOUR))";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setString(2, token);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}