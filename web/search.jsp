<%-- 
    Document   : search
    Created on : Mar 31, 2019, 7:23:03 PM
    Author     : Asadul  Islam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.connectionclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Medicine</title>
        <link rel="stylesheet" href="searchstyle.css" type="text/css">
    </head>
    <body>
         <jsp:include page="master1.jsp"/>
        <%
        connectionclass cd=new connectionclass();
        try{
                String sitem=request.getParameter("searchbox");
                
          String sql="Select * from drug Where med_name='"+ sitem +"'";
          ResultSet rs=cd.connectiondb().executeQuery(sql);
           
        
  while(rs.next()){
   
              
         %>
         <div   class="wrapper">
             <div class="search">
             
            <h3>Medicine Name:  <%=rs.getString(2)%></h3>
            <h3>Generic Name: <%=rs.getString(3)%></h3> 
            <h3>Medicine For: <%=rs.getString(4)%></h3> 
            <h3>Medicine Type: <%=rs.getString(5)%></h3>
            <h3>Price:<%=rs.getString(6)%>pcs <%=rs.getString(7)%> Taka</h3>
            <h3>Company Name:<%=rs.getString(9)%> </h3>
         
        
         </div>
            <div class="related">
        <h3>Related Medicine</h3>
        <table >
            <thead>
                    <td> Medicine Name</td>
                   
                     <td>Unit Price</td>
                  
                    <td>Company Name</td>
                    </thead>
             
              
            <%
                String genName=rs.getString(3)
                        ,medName=rs.getString(2);
                String sql2 ="select * from drug where gen_name='"+ genName +"' and not med_name='"+ medName +"'";
                rs=cd.connectiondb().executeQuery(sql2);
                  while(rs.next()){
                      %>
    
               <tr>
                  <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(9)%></td>
                  </tr>
            <%}  
             }
        }catch(Exception e){
            out.println(e);
        }
        %>
            
        </table>
         </div>
         </div>
              
    </body>
</html>
