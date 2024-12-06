import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailSender {

    public static boolean sendEmail(String recipient, String subject, String content) {
        final String senderEmail = "2200033191kluniversity@gmail.com"; // Replace with your email
        final String appPassword = "kqykdzplggotjmif"; // Replace with your app password

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, appPassword);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject(subject);
            message.setText(content);

            Transport.send(message);
            System.out.println("Email sent successfully.");
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }
}
