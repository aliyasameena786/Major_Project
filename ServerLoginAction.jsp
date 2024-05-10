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
   
   String query="select * from server where  username='"+uname+"'and  password='"+pwd+"'";
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
     %>  
    <script type="text/javascript">
        window.alert("Server Login Successfully..!!");
        window.location="ServerHome.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("Server Login Failed..!!");
        window.location="Cloud.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>