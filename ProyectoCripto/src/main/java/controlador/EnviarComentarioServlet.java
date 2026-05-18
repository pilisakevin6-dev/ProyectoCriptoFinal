package controlador;
import java.io.IOException;
import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/EnviarComentarioServlet")
public class EnviarComentarioServlet
        extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)

            throws ServletException, IOException {

        String nombre =
                request.getParameter("nombre");

        String comentario =
                request.getParameter("comentario");

        final String correo =
                "TU_CORREO@gmail.com";

        final String password =
                "TU_CLAVE_APP";

        Properties props =
                new Properties();

        props.put(
                "mail.smtp.host",
                "smtp.gmail.com");

        props.put(
                "mail.smtp.port",
                "587");

        props.put(
                "mail.smtp.auth",
                "true");

        props.put(
                "mail.smtp.starttls.enable",
                "true");

        Session session =
                Session.getInstance(
                props,

                new Authenticator() {

            protected PasswordAuthentication
                    getPasswordAuthentication() {

                return new PasswordAuthentication(
                        correo,
                        password);
            }
        });

        try {

            Message message =
                    new MimeMessage(session);

            message.setFrom(
                    new InternetAddress(correo));

            message.setRecipients(
                    Message.RecipientType.TO,

                    InternetAddress.parse(
                            correo));

            message.setSubject(
                    "Nuevo comentario");

            message.setText(

                    "Nombre: "
                    + nombre
                    + "\n\nComentario:\n"
                    + comentario);

            Transport.send(message);

            response.sendRedirect(
                    "principal.jsp");

        } catch (MessagingException e) {

            throw new RuntimeException(e);
        }
    }
}
