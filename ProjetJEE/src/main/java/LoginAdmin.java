
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controlleur.LoginDao;
import Modele.Admin;

/**
 * Servlet implementation class LoginAdmin
 */
@WebServlet("/LoginAdmin")
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginAdmin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String login = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		Admin loginBean = new Admin(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
		 
        loginBean.setUserName(login); //setting the username and password through the loginBean object then only you can get it in future.
         loginBean.setPassword(password);
 
        LoginDao loginDao = new LoginDao(); //creating object for LoginDao. This class contains main logic of the application.
 
        String userValidate = loginDao.authenticateAdmin(loginBean); //Calling authenticateUser function
 
        if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
         {
             request.setAttribute("userName", login); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminMenu.jsp");
			 dispatcher.forward(request, response);
         }
         else
         {
             request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/loginAdmin.jsp");
			 dispatcher.forward(request, response);
                      }
	}

}
