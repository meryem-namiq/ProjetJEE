package Controlleur;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import Modele.Admin;
import Modele.Evenement;

public class EvenementDao {
	
	
	public ArrayList<Evenement> selectAll()
    {
       
		ArrayList<Evenement> evenements = new ArrayList<Evenement>();
        Connection con = null;
        Statement statement = null;
        ResultSet resultat = null;

        try
        {
            
             con= DBConnection.createConnection();
			 statement = con.createStatement();
			 resultat = statement.executeQuery("select * from conference");
			
            while(resultat.next()) // Until next row is present otherwise it return false
            {
            	evenements.add(new Evenement(resultat.getInt(1),resultat.getString(2), resultat.getDate(3), resultat.getString(5), resultat.getString(6)));
            	
            }
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
            return evenements; 
        
    }
	
	
	public void delete(int id)
    {
       

        Connection con = null;
        Statement statement = null;
        int resultat ;

        try
        {
            
             con= DBConnection.createConnection();
			 statement = con.createStatement();
			 resultat = statement.executeUpdate("delete from conference where id=" + id);
			
           
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
        
    }
	
	public void update(int id, String title, String location, String description)
    {
       

        Connection con = null;
        Statement statement = null;
        int resultat ;

        try
        {
            
             con= DBConnection.createConnection();
			 statement = con.createStatement();
			 resultat = statement.executeUpdate("update conference set title='"+ title +"', location='"+ location +"', description='"+ description +"'  where id=" + id);
			
           
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
        
    }
	
	
	public void insert(String title, String location, String description)
    {
       

        Connection con = null;
        Statement statement = null;
        int resultat ;

        try
        {
            
             con= DBConnection.createConnection();
			 statement = con.createStatement();
			 resultat = statement.executeUpdate("INSERT INTO conference (title, start_date, end_date, location, description, logo, date_début_soumission, date_limite_soumission, date_fin_evaluation) VALUES ('"+ title +"', '2022-02-12', '2022-02-12', '"+ location +"', '"+ description +"', '2022-02-12', '2022-02-12', '2022-02-12', '2022-02-12')");
			
           
        }
            catch(SQLException e)
            {
               e.printStackTrace();
            }
        
    }

}
