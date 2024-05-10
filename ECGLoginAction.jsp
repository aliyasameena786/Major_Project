<%-- 
    Document   : CloudAction
    Created on : 29 Sep, 2020, 7:34:01 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd"); 
   
   String query="select * from ecg where BINARY username='"+uname+"'and BINARY password='"+pwd+"'";
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
     %>  
    <script type="text/javascript">
        window.alert("ECG Login Successfully..!!");
        window.location="ECGHome.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("ECG Login Failed..!!");
        window.location="ECGDevice.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>