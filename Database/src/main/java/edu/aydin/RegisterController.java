package edu.aydin;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterController
 */
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Mngo mongo = new Mngo("ElecDB", "users");
		String user = request.getParameter("username");
		String password =request.getParameter("pwd");
		String reciever = request.getParameter("email");
		String str;
		final String sender = "abdulwow8888@hotmail.com";
		final String emailpass = "javatestingonly123";
		if(mongo.insertDocument(user, password, reciever)) {
			str = "Register Success";
			Properties properties = System.getProperties();
			properties.put("mail.smtp.auth", true);
			properties.put("mail.smtp.starttls.enable", "true");
			properties.put("mail.smtp.host", "outlook.office365.com");
			properties.put("mail.smtp.port", "587");
			properties.put("mail.smtp.ssl.trust", "outlook.office365.com");
			Authenticator auth = new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(sender, emailpass);
				}
			};
			Session session = Session.getDefaultInstance(properties, auth);
			MimeMessage message;
			try {
				message = new MimeMessage(session);
				message.setFrom(new InternetAddress(sender));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(reciever));
				message.setSubject("Account created Successfully");
				message.setText("You have created the account successfully to our Website, AhabElectronicStore with username: "+user+" and password: "+password);
				Transport.send(message);
				System.out.println("Mail sent successfully");
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		else {
			str = "Register Failed";
		}
		request.setAttribute("str", str);
		RequestDispatcher rd = request.getRequestDispatcher("index2.jsp");
		rd.forward(request, response);
	}
}
