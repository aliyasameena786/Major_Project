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
     String username=(String)session.getAttribute("username");
        String hospital=(String)session.getAttribute("hospital");
    String specialization=(String)session.getAttribute("specialization");
    
   String id=request.getParameter("id");
   
   String query="update cardiac set status='sending_ambulance' where id='"+id+"'";
   int r=Queries.getExecuteUpdate(query);
   if(r>0){
 Queries.getExecuteUpdate("insert into response values('"+id+"','"+username+"','"+hospital+"','"+specialization+"')");

     %>  
    <script type="text/javascript">
        window.alert("Ambulance Sent Successfully");
        window.location="D_ECG_Info.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("Failed..!!");
        window.location="D_ECG_Info.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>