<%-- 
    Document   : Patient
    Created on : 29 Mar, 2021, 4:02:05 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>An Efficient IoT-Based</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        <li><a href="index.html">Home</a></li>
        
       <li class="active"><a href="Patient.jsp">Patient</a></li>
        <li><a href="ECGDevice.jsp">ECG Device</a></li>
       <li><a href="Cloud.jsp">Server</a></li>
        <li><a href="Doctor.jsp">Doctor</a></li>
         
       
       
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div id="featured_content" style="background: pink;">
      <ul>
       
        
        <li><img src="images/Capture.PNG" alt="" />
          <div class="floater">
            <h2></h2>
            <p align="justify">
                The  current  study  aims  to  prototype  a  wi-fi  based  micro-controller  setup  capable  of  receiving  heartbeats  in  real-time,extracting  the  features,  and  classifying  them  into  subsequentcategories.  The  accuracy  of  the  proposed  methodology  isestimated  by  implementing  the  proposed  method  on  32-bit micro controller platform to develop a proof-of-concept of the idea for heartbeat analysis
            </p>
             <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
      </ul>
    </div>
    <a href="javascript:void(0);" id="featured-item-prev"><img src="layout/images/prev.png" alt="" /></a> <a href="javascript:void(0);" id="featured-item-next"><img src="layout/images/next.png" alt="" /></a> </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3" style="margin-bottom:100px;">
  <div id="container">
      <center><h3>Patient Login</h3></center>
    <div class="homepage">
        <center>
            <form action='UserLoginAction.jsp' method='post'>
                <table>
                 <tr><th>UserName</th><td><input type='text' name='uname' required='' placeholder="UserName"></td><tr/>
                
                    <tr><th>Password</th><td><input type='password' name='pwd' required='' placeholder="Password"></td><tr/>
           
                    <tr><th><input type='submit' value='Login'></th>
                    <td><a href='UserReg.jsp'>Register</a></td><tr/>    </table>
            </form>   
            
        </center>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">

</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">An Efficient IoT-Based Platform for Remote Real-Time Cardiac Activity Monitoring</p>
    <p class="fl_right"></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>