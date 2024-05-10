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
     <li class="active"><a href="U_View_Profile.jsp">View Profile</a></li>
     <li><a href="U_Add_Cardiac_Details.jsp">Add Cardiac Details</a></li>
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
            <h2>VIEW PATIENT REPORTS....!!!</h2>
            
              <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Address</th>
                        <th>Pic</th>
                        
                    </tr>
                    <%
                    try{
                    String query="select * from patient where id='"+id+"'";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                    
                      %>
                      <tr>
                          <td><%=r.getString("id")%></td>
                      <td><%=r.getString("name")%></td>
                      <td><%=r.getString("email")%></td>
                      <td><%=r.getString("mobile")%></td>
                      <td><%=r.getString("address")%></td>
                      <td><image src="view.jsp?id=<%=r.getString("id")%>" width="100" height="100"/></td>
                     
                     
                      
                       
                       
                      </tr>
                   <% }
                    
                    }catch(Exception e){
                        out.println(e);
}%>
                </table>
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