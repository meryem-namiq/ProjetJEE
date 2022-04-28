package Modele;

import java.util.Date;

public class Evenement {
	
	int id ;
	String title;
	Date start_date ; 
	Date end_date ; 
	String location ;
	String description ; 
	String logo;
	Date date_début_soumission ; 
	Date date_limite_soumission ; 
	Date date_fin_evaluation ;
	
	
	public Evenement(int id,String title, Date start_date, String location, String description) {
		super();
		this.id = id;
		this.title = title;
		this.start_date = start_date;
		this.location = location;
		this.description = description;
	}
	
	
	public Evenement(String title, Date start_date, String location, String description) {
		super();
		this.title = title;
		this.start_date = start_date;
		this.location = location;
		this.description = description;
	}


	public Evenement(int id, String title, Date start_date, Date end_date, String location, String description,
			String logo, Date date_début_soumission, Date date_limite_soumission, Date date_fin_evaluation) {
		super();
		this.id = id;
		this.title = title;
		this.start_date = start_date;
		this.end_date = end_date;
		this.location = location;
		this.description = description;
		this.logo = logo;
		this.date_début_soumission = date_début_soumission;
		this.date_limite_soumission = date_limite_soumission;
		this.date_fin_evaluation = date_fin_evaluation;
	}


	public Evenement() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public Date getStart_date() {
		return start_date;
	}


	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}


	public Date getEnd_date() {
		return end_date;
	}


	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getLogo() {
		return logo;
	}


	public void setLogo(String logo) {
		this.logo = logo;
	}


	public Date getDate_début_soumission() {
		return date_début_soumission;
	}


	public void setDate_début_soumission(Date date_début_soumission) {
		this.date_début_soumission = date_début_soumission;
	}


	public Date getDate_limite_soumission() {
		return date_limite_soumission;
	}


	public void setDate_limite_soumission(Date date_limite_soumission) {
		this.date_limite_soumission = date_limite_soumission;
	}


	public Date getDate_fin_evaluation() {
		return date_fin_evaluation;
	}


	public void setDate_fin_evaluation(Date date_fin_evaluation) {
		this.date_fin_evaluation = date_fin_evaluation;
	}

	
	
}
