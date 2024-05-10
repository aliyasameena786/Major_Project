<%@page import="com.database.Queries"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<% try{
    
         String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
    String condition=request.getParameter("condition");
    String hbeat=request.getParameter("hbeat");
  
   
   
    
    String query="insert into cardiac values(null,'"+id+"','"+username+"','"+condition+"','"+hbeat+"',now(),'waiting','waiting','waiting')";

 int i=Queries.getExecuteUpdate(query);
 
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Cardiac Data Sent To ECS Device..!!");
            window.location="U_Add_Cardiac_Details.jsp";
        </script>
        
        <%
    
    }else{
 %>
        <script type="text/javascript">
            window.alert("Cardiac Data Sending To ECS Device FAILED..!!");
            window.location="U_Add_Cardiac_Details.jsp";
        </script>
        
        <%
}
}catch(Exception e){
    System.out.println(e);
}
%>