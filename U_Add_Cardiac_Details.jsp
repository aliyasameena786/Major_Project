<%-- 
    Document   : Owner
    Created on : 29 Sep, 2020, 5:20:31 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>An Efficient IoT-Based</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.setup.js"></script>
</head>
<body id="top">
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
        <h1><a href="index.html">An Efficient</a></h1>
      <p> IoT-Based Platform for Remote Real-Time Cardiac Activity Monitoring</p>
    </div>
    <div id="topnav">
           <ul>
       <li ><a href="PatientHome.jsp">Home</a></li>
     <li><a href="U_View_Profile.jsp">View Profile</a></li>
     <li class="active"><a href="U_Add_Cardiac_Details.jsp">Add Cardiac Details</a></li>
     <li><a href="U_Response.jsp">View Response</a></li>
          <li><a href="Patient.jsp">Logout</a></li>
      </ul>

    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col3" style="margin-bottom:100px;">
  <div id="container">
     <%
     String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
   
     
     
     %>
    <div class="homepage" style="float:left;width:800px;">
        <center>
        
            <center>
            <h2>ADD CARDIAC DETAILS....!!!</h2>
            <form action="CardiacAction.jsp" method="post">
            <table>
                <tr><th>Select Condition</th><td><select name="condition" required="">
                            <option></option>
                             <option value="normal">Normal</option>
                             <option value="abnormal">Abnormal</option>
                        </select></td></tr>
                <tr><th>HeartBeat</th><td><input type="number" name="hbeat" required=""></td></tr>
                <tr><th></th><td><input type="submit" value="Submit"></td></tr>
                
            </table>
            </form>
            
            
        </center>
        </center>
      <br class="clear" />
    </div>
      
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">

</div>
<!-- ####################################################################################################### -->

</body>
</html>