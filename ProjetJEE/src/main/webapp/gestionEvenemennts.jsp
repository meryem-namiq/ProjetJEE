<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="Modele.Evenement" %>
    <%@ page import="Controlleur.*" %>
     <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
     <%@ page import="static java.lang.System.out" %>
<!DOCTYPE html>
<html lang="en">

  <head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Administrateur</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
<!--

TemplateMo 573 EduWell

https://templatemo.com/tm-573-eduwell

-->
  </head>
  
 <style>
body {
color: #404E67;
background: white;
font-family: 'Open Sans', sans-serif;
}
.table-wrapper {
width: 1000px;
margin: 30px auto;
background: #fff;
padding: 20px;
box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title { 
padding-bottom: 10px;
margin: 0 0 10px;
}
.table-title h2 {
margin: 6px 0 0;
font-size: 22px;
}
.table-title .add-new {
float: right;
height: 30px;
font-weight: bold;
font-size: 12px;
text-shadow: none;
min-width: 100px;
border-radius: 50px;
line-height: 13px;
}
.table-title .add-new i {
margin-right: 4px;
}
table.table {
table-layout: fixed;
}
table.table tr th, table.table tr td {
border-color: #e9e9e9;
}
table.table th i {
font-size: 13px;
margin: 0 5px;
cursor: pointer;
}
table.table th:last-child {
width: 100px;
}
table.table td a {
cursor: pointer;
display: inline-block;
margin: 0 5px;
min-width: 24px;
}
table.table td a.add {
color: #27C46B;
}
table.table td a.edit {
color: #FFC107;
}
table.table td a.delete {
color: #E34724;
}
table.table td i {
font-size: 19px;
}
table.table td a.add i {
font-size: 24px;
margin-right: -1px;
position: relative;
top: 3px;
}
table.table .form-control {
height: 32px;
line-height: 32px;
box-shadow: none;
border-radius: 2px;
}
table.table .form-control.error {
border-color: #f50000;
}
table.table td .add {
display: none;
}
</style>
  
<body>


  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                <nav class="main-nav">
                  <!-- ***** Logo Start ***** -->
                  <a href="index.html" class="logo">
                      <img src="assets/images/logo.png">
                  </a>
                  <!-- ***** Logo End ***** -->
                  <!-- ***** Menu Start ***** -->
                  <ul class="nav">

                    <li><a href="gestionEvenemennts.jsp">Gerer les evenemnts</a></li>
                    <li><a href="gestionParticipants.jsp">Gerer les participants</a></li>
                    <li><a href="gestionComites.jsp">Gerer les comités</a></li> 


                  </ul>      
                  <a class='menu-trigger'>
                      <span>Menu</span>
                  </a>
                  <!-- ***** Menu End ***** -->
                </nav>
              </div>
          </div>
      </div>
  </header>
    
  <!-- ***** Header Area End ***** -->

<br><br><br><br><br> <br><br>
<body>
    <div class="container-lg">
<div class="table-responsive">
<div class="table-wrapper">
<div class="table-title">
<div class="row">
<div class="col-sm-8"><h2> Events <b>Details</b></h2></div>
<div class="col-sm-4">
<button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Ajouter un evnements</button>
</div>
</div>
</div>
<table class="table table-bordered">
<thead>
<tr>
<th>Titre</th>
<th>Date</th>
<th>Place</th>
<th>Description</th>
<th>Actions</th>
</tr>
</thead>
<tbody>





<%{
EvenementDao evenementDao = new EvenementDao();
ArrayList<Evenement> evenements = evenementDao.selectAll();


            for (Evenement evn : evenements ) {
            	
            	%>
            	<tr data-name="<%=  evn.getId() %>" >
                 <td > <%=  evn.getTitle() %> </td>
                 <td> <%=  evn.getStart_date() %> </td>
				 <td> <%=  evn.getLocation() %> </td>
				 <td> <%=  evn.getDescription() %> </td> 
				
				 
				 <td>
		 
				
<a class="add"  data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
<a class="edit"  data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
<a class="delete"  data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
</td>
                </tr>
                <% } } %>



</tbody>
</table>
</div>
</div>
</div>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>

    <script>
    $(document).ready(function(){
    	$('[data-toggle="tooltip"]').tooltip();
    	var actions = $("table td:last-child").html();
    	// Append table with add row form on add new button click
        $(".add-new").click(function(){
    		$(this).attr("disabled", "disabled");
    		var index = $("table tbody tr:last-child").index();
            var row = '<tr>' +
                '<td><input type="text" class="form-control" name="titre" id="titre"></td>' +
                '<td><input type="text" class="form-control" name="date" id="date"></td>' +
                '<td><input type="text" class="form-control" name="place" id="place"></td>' +
                '<td><input type="text" class="form-control" name="description" id="description"></td>' +
    			'<td>' + actions + '</td>' +
            '</tr>';
        	$("table").append(row);		
    		$("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
            $('[data-toggle="tooltip"]').tooltip();
        });
    	// Add row on add button click
    	$(document).on("click", ".add", function(){
    		var empty = false;
    		var input = $(this).parents("tr").find('input[type="text"]');
            input.each(function(){
    			if(!$(this).val()){
    				$(this).addClass("error");
    				empty = true;
    			} else{
                    $(this).removeClass("error");
                }
    		});
    		$(this).parents("tr").find(".error").first().focus();
    		if(!empty){
    			input.each(function(){
    				$(this).parent("td").html($(this).val());
    			});			
    			$(this).parents("tr").find(".add, .edit").toggle();
    			$(".add-new").removeAttr("disabled");
    			
    			 var url = new URL("http://localhost:8081/ProjetJEE/gestionEvenemennts.jsp");
    			 var iid = $(this).parents("tr").attr("data-name");
    	            url.searchParams.append('idd',iid);
    	            url.searchParams.append('titre',$(this).closest('tr').find('td:eq(0)').text());
    	            url.searchParams.append('place',$(this).closest('tr').find('td:eq(2)').text());
    	            url.searchParams.append('description',$(this).closest('tr').find('td:eq(3)').text());
    				window.history.pushState({}, '', url);
    				
    				<% {
    	    			EvenementDao evenementDao = new EvenementDao();
    	    			String titre = request.getParameter("titre");
    	    			String place = request.getParameter("place");
    	    			String description = request.getParameter("description");
    	    			if(titre!=null  || place!=null || description!=null )
    	                	evenementDao.insert(titre,place,description);
    	    			}%>
    				
    			
    			
    		}		
        });
    	// Edit row on edit button click
    	$(document).on("click", ".edit", function(){		
            $(this).parents("tr").find("td:not(:last-child)").each(function(){
    			$(this).html('<input type="text" class="form-control" name="name[]" id="name[]" value="' + $(this).text() + '">');
    		});	
      
       
    		$(this).parents("tr").find(".add, .edit").toggle();
    		$(".add-new").attr("disabled", "disabled");
    		
    		var url = new URL("http://localhost:8081/ProjetJEE/gestionEvenemennts.jsp");
    		var iid = $(this).parents("tr").attr("data-name");
            url.searchParams.append('idd',iid);
            url.searchParams.append('titre',$(this).closest('tr').find('td:eq(0)').text());
			window.history.pushState({}, '', url);
			
			<% {
    			EvenementDao evenementDao = new EvenementDao();
    			String idd = request.getParameter("idd");
    			String titre = request.getParameter("titre");
    			String place = request.getParameter("place");
    			String description = request.getParameter("description");
    			if ( idd!=null)
                	evenementDao.update(Integer.parseInt(idd),titre,place,description);
    			}%>
			

			
			
        });
    	// Delete row on delete button click
    	$(document).on("click", ".delete", function(){
            $(this).parents("tr").remove();
            var iid = $(this).parents("tr").attr("data-name");
            var url = new URL("http://localhost:8081/ProjetJEE/gestionEvenemennts.jsp");
            url.searchParams.append('idd',iid);
			window.history.pushState({}, '', url);
			prompt("Est ce que vous voulez supprimer l'evenement numero ", url.searchParams.get("idd"))
			
			<% {
    			EvenementDao evenementDao = new EvenementDao();
    			String id = request.getParameter("idd");
    			if(id!=null)
                	evenementDao.delete(Integer.parseInt(request.getParameter("idd")));
    			}%>
    			$(".add-new").removeAttr("disabled");
    		
        });
    });
    </script>
    
    
    


</body>
</html>