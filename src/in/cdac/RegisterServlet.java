package in.cdac;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register-servlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
			response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try 
		{
			//Reading Input from User
			String Username = request.getParameter("Username");
			String Name = request.getParameter("Name");
			String Email = request.getParameter("Email");
			String Password = request.getParameter("Password");
			//String RetypePassword = request.getParameter("RetypePassword");
			String Hometown = request.getParameter("Hometown");
			String Birthday = request.getParameter("Birthday");
			String Twitter = request.getParameter("Twitter");
			String Instagram = request.getParameter("Instagram");
			String Reason = request.getParameter("Reason");
			String Fanart = request.getParameter("Fanart");
			
			
			//Preparing an Instance of User
			User user = new User();
			user.setUsername(Username);
			user.setName(Name);
			user.setEmail(Email);
			user.setPassword(Password);
			user.setHometown(Hometown);
			user.setBirthday(Birthday);
			user.setTwitter(Twitter);
			user.setInstagram(Instagram);
			user.setReason(Reason);
			user.setFanart(Fanart);
			
			//DB Call
			DBRegisterService.registerUser(user);
			response.sendRedirect("login.jsp");
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}
