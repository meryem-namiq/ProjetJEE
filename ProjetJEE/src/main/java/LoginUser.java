

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

/**
 * Servlet implementation class LoginUser
 */
@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUser() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public Connection getConn() throws ClassNotFoundException, SQLException {	
   	 Class.forName("com.mysql.cj.jdbc.Driver");
   		String user="root";
   		String url= "jdbc:mysql://127.0.0.1/ProjetJEE";
   		String pwd="1234";
   		Connection connexion =  DriverManager.getConnection(url, user, pwd);
   		return connexion;
       }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection connexion=getConn();
			Statement statement = connexion.createStatement();
			ResultSet resultat = statement.executeQuery("select * from utilisateur");
			String login = request.getParameter("email");
			String password = request.getParameter("password");
			while(resultat.next()){
				if(login.equals(resultat.getString("email")) && password.equals(resultat.getString("password")))
					request.setAttribute("name", login);
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home.jsp");
					dispatcher.forward(request, response);
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
