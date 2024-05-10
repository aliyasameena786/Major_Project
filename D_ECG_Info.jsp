<%-- 
    Document   : Owner
    Created on : 29 Sep, 2020, 5:20:31 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
        <li><a href="DoctorHome.jsp">Home</a></li>
        <li class="active"><a href="D_ECG_Info.jsp">ECG Information</a></li>
          <li><a href="Doctor.jsp">Logout</a></li>
       
         
      </ul>

    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col3" style="margin-bottom:100px;">
  <div id="container">
   
    <div class="homepage" style="float:left;width:900px;">
        <center>
            <h4>ECG  Information</h4>
            <table>
                <tr><th>Patient Name</th><th>Heart Beat</th><th>Data Gathered From Patient By ECG</th>
                    <th>Data Transfered To Server</th><th>ECG Status</th><th>Response</th>
               </tr>
                <%
                try{
              String query="select * from cardiac where ecg_status='Abnormal'";
              ResultSet r=Queries.getExecuteQuery(query);
              while(r.next()){
                 String status=r.getString("status");
                  %>
                <tr>
                    <td><%=r.getString("username")%></td>
                   
                    <td><%=r.getString("hbeat")%></td>
                     <td><%=r.getString("date")%></td>
                     <td><%=r.getString("trans_date")%></td>
                     <td><font color="red"><%=r.getString("ecg_status")%></font></td>
                     <%if(status.equals("waiting")){
                         %>
                       <td><a href="SendResponse.jsp?id=<%=r.getString("id")%>">Send Ambulance</a></td>
                     <%
                     }else{
%>
  <td>Medical Team Sent Already</td>
<%
}%>
                  
                </tr>  
              <%}
                      
                
}catch(Exception e){
   out.println(e); 
}%>
            </table>
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