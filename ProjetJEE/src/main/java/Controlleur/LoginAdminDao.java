package Controlleur;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Statement;

import Modele.Admin;

public class LoginAdminDao {
	
	public String authenticateAdmin(Admin loginBean)
    {
        String userName = loginBean.getUserName(); //Assign user entered values to temporary variables.
        String password = loginBean.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultat = null;

        String userNameDB = "";
        String passwordDB = "";

        try
        {
            
             con= DBConnection.createConnection();
			 statement = con.createStatement();
			 resultat = statement.executeQuery("select * from admin");
			
            while(resultat.next()) // Until next row is present otherwise it return false
            {
             userNameDB = resultat.getString("email"); //fetch the values present in database
             passwordDB = resultat.getString("password");

              if(userName.equals(userNameDB) && password.equals(passwordDB))
              {
                 return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
              }
            }
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
            return "Invalid user credentials"; // Return appropriate message in case of failure
        
    }


}
