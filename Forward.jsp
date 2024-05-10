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
   String id=request.getParameter("id");
   
   String query="update cardiac set ecg_status='Abnormal',trans_date=now() where id='"+id+"'";
   int r=Queries.getExecuteUpdate(query);
   if(r>0){
     %>  
    <script type="text/javascript">
        window.alert("Data Transfered To Cloud");
        window.location="ECGCardiacCondition.jsp";
    </script>
    

    
  <% }else{
%>
    <script type="text/javascript">
        window.alert("Failed..!!");
        window.location="ECGCardiacCondition.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>