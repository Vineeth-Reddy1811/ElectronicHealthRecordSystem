<%@page import="com.controller.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>VTJCC04_2020</title>  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Free HTML5 Website Template by uicookies.com" />
  <meta name="keywords" content="free bootstrap 4, free bootstrap 4 template, free website templates, free html5, free template, free website template, html5, css3, mobile first, responsive" />
  <meta name="author" content="uicookies.com" />
  
  <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
  
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/icomoon.css">
  <link rel="stylesheet" href="css/flaticon.css">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="w3.css">
</head>
<body>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark probootstrap-navbar-dark">
    <div class="container">
      <!-- <a class="navbar-brand" href="index.html">Health</a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-nav" aria-controls="probootstrap-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="probootstrap-nav">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active"><a href="admin.jsp" class="nav-link pl-0">Home</a></li>
          <li class="nav-item"><a href="keyrequests.jsp" class="nav-link">Key Requests</a></li>
          <li class="nav-item"><a href="adminfiles.jsp" class="nav-link">View Data</a></li>
          <li class="nav-item "><a href="index.html" class="nav-link">Logout</a></li>
        </ul>
        <div class="ml-auto">
          <form action="#" method="get" class="probootstrap-search-form mb-sm-0 mb-3">
            <div class="form-group">
              <button class="icon submit"><span class="icon-magnifying-glass"></span></button>
              <input type="text" class="form-control" placeholder="Search">
            </div>
          </form>
        </div>
      </div>
    </div>
  </nav>
  <!-- END nav -->
  <header role="banner" class="probootstrap-header py-5">

  <section class="mb-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12 mb-5">
          <h1 class="display-6">Privacy-preserving Attribute-based Access Control Model for XML-based Electronic Health Record System</h1>
         </div>
      </div>
    </div> </section>
  </header>
  

  <section class="probootstrap-services">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3 pb-5 probootstrap-aside-stretch-left probootstrap-inside">
          <div class="mb-3 pt-5">
            <h2 class="h6">Authentication</h2>
            <ul class="list-unstyled probootstrap-light mb-4">
              <li class="active"><a href="uploaddata.jsp">Upload Data</a></li>
             <li class=""><a href="keyrequests.jsp">Key Requests</a></li>
             <li><a href="adminfiles.jsp">View Data</a></li>
              <li><a href="index.html">Logout</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-9 pl-md-5 pb-5 pl-0 probootstrap-inside" id="reg">
          <h1 class="mt-4 mb-4">Uploaded Files</h1>
          <div class="row">
            <div class="col-md-12">
            <table class="w3-table">
            <tr>
            <th>FILE ID</th>
            <th>TITLE</th>
            <th>KEYWORDS</th>
            <th>KEY</th>
            <th>DECRYPT</th>
            </tr>
              <%
              ResultSet r=DbConnection.getFilesData();
        		  while(r.next())
        		  {
        			  
        			  %>
        			  <tr>
        			  <td><%= r.getString(1) %></td>
        			  <td><%= r.getString(6) %></td>
        			  <td><%= r.getString(2) %></td>
        			  <td> <input type="text" class="" name="Gender" value="<%= r.getString(4) %>"></td>
        			  <td><a href="displayfile.jsp?fid=<%= r.getString(1) %>&&fkey=<%= r.getString(4) %>">DECRYPT File</a></td>
        			  </tr>
        			  <% 
        		}
              
              %>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  

  
  
  
  
  
  
<%-- -------------------------------------------------------------------------------------------------------------------------- --%>
  <footer class="probootstrap-footer">
    <div class="container">
     
    </div>
  </footer>

  <!-- loader -->
    <div id="probootstrap-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#32609e"/></svg></div>
  

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>

  <script src="js/main.js"></script>
</body>
</html>