<%-- 
    Document   : Owner
    Created on : 29 Sep, 2020, 5:20:31 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>An Efficient IoT-Based</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
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
        <li class="active"><a href="DoctorHome.jsp">Home</a></li>
     <li><a href="D_ECG_Info.jsp">ECG Information</a></li>
          <li><a href="Doctor.jsp">Logout</a></li>
       
       
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
        String hospital=(String)session.getAttribute("hospital");
    String specialization=(String)session.getAttribute("specialization");
     
     
     %>
    <div class="homepage" style="float:left;width:500px;">
        <center>
            <h4>Welcome Dr: <font color="pink"><%=username%></font></h4>
              <h4>Hospital: <font color="pink"><%=hospital%></font></h4>
                <h4>Specialization: <font color="pink"><%=specialization%></font></h4>
            <image src="images/Capture.PNG" style="width:950px;">
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