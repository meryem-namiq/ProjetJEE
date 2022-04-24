<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="Modele.Evenement" %>
    <%@ page import="Controlleur.*" %>
     <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
     <%@ page import="static java.lang.System.out" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

    <title>EduWell - Education HTML5 Template</title>

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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body>


  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                <nav class="main-nav">
                  <!-- ***** Logo Start ***** -->
                  <a href="index.html" class="logo">
                      <img src="assets/images/templatemo-eduwell.png" alt="EduWell Template">
                  </a>
                  <!-- ***** Logo End ***** -->
                  <!-- ***** Menu Start ***** -->
                  <ul class="nav">
                    <li><a href="index.jsp" class="active">Accueil</a></li>
                    <li><a href="index.jsp">Gerer les evenemnts</a></li>
                    <li><a href="index.jsp">Gerer les participants</a></li>
                    <li><a href="index.jsp">Gerer les commités</a></li> 
                    <li><a href="index.jsp">chiii</a></li> 
                    

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
  
  <br><br><br><br><br> <br><br>
<div class="container">
	 <h3> Add Edit & Delete Rows Dynamically Using JQuery</h3> 
<form>
<div class="form-group">
<label>Name:</label>
<input type="text" name="name" class="form-control" value="" required="">
</div>
<div class="form-group">
<label>Email:</label>
<input type="text" name="email" class="form-control" value="" required="">
</div>
<button type="submit" class="btn btn-success save-btn">Save</button>
</form>
<br/>
<table class="table table-bordered data-table">
<thead>
<th>Titre</th>
<th>Date</th>
<th>Place</th>
<th>Description</th>
<th width="200px">Action</th>
</thead>
<tbody>
<%{
EvenementDao evenementDao = new EvenementDao();
ArrayList<Evenement> evenements = evenementDao.selectAll();


            for (Evenement evn : evenements ) {
            	
            	%>
            	<tr>
                 <td id="title"> <%=  evn.getTitle() %> </td>
                 <td> <%=  evn.getStart_date() %> </td>
				 <td> <%=  evn.getLocation() %> </td>
				 <td> <%=  evn.getDescription() %> </td> 
				
				 
				 <td>
		 
				
<a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
<a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
<a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
</td>
                </tr>
                <% } } %>
</tbody>
</table>
</div>
<script type="text/javascript">
	/*code for submit form data into table */
	$("form").submit(function(event){
		event.preventDefault();
		var name = $("input[name='name']").val();
		var email = $("input[name='email']").val();
		$(".data-table tbody").append("<tr data-name='"+name+"' data-email='"+email+"'><td>"+name+"</td><td>"+email+"</td><td><button class='btn btn-info btn-xs btn-edit'>Edit</button><button class='btn btn-danger btn-xs btn-delete'>Delete</button></td></td></tr>");
		$("input[name='name']").val('');
		$("input[name='email']").val('');
	});
	/* code for delete row*/
$("body").on('click','.btn-delete',function(){
		$(this).parents("tr").remove();
		alert($(this).parents("tr").attr("data-name"));
	});
/*code for update /edit record*/
$("body").on('click','.btn-edit',function(){
var name= $(this).parents("tr").attr("data-name");
var email= $(this).parents("tr").attr("data-email");
$(this).parents("tr").find("td:eq(0)").html('<input name="edit_name" value="'+name+'">');
$(this).parents("tr").find("td:eq(1)").html('<input name="edit_email" value="'+email+'">');
$(this).parents("tr").find("td:eq(2)").prepend("<button class='btn btn-info btn-xs btn-update'>Update</button><button class='btn btn-warning btn-xs btn-cancel'>Cancel</button>")
$(this).hide();
});
/*code for cancel update record */
$("body").on('click','.btn-cancel',function(){
	var name = $(this).parents("tr").attr("data-name");
	var email = $ (this).parents("tr").attr("data-email");
	$(this).parents("tr").find("td:eq(0)").text(name);
	$(this).parents("tr").find("td:eq(1)").text(email);
	$(this).parents("tr").find(".btn-edit").show();
	$(this).parents("tr").find(".btn-update").remove();
	$(this).parents("tr").find(".btn-cancel").remove();
});
/*code for update the record */
$("body").on('click','.btn-update',function(){
var name = $(this).parents("tr").find('input[name="edit_name"]').val();
var email = $(this).parents("tr").find('input[name="edit_email"]').val();
$(this).parents("tr").find("td:eq(0)").text(name);
$(this).parents("tr").find("td:eq(1)").text(email);
$(this).parents("tr").attr("data-name", name);
$(this).parents("tr").attr("data-email",email);
$(this).parents("tr").find(".btn-edit").show();
$(this).parents("tr").find(".btn-cancel").remove();
$(this).parents("tr").find(".btn-update").remove();
});
</script>


</body>
</html>