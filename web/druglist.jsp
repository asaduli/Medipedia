<%-- 
    Document   : druglist
    Created on : Apr 15, 2019, 7:27:25 AM
    Author     : Asadul  Islam
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.connectionclass" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medicine List</title>
        <link href="list.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="adminpanel.jsp"/>
      <center>
        <table >
            <thead>
                    <td> Medicine Name</td>
                    <td>Generic Name</td>
                    <td> Medicine Type</td>
                     <td>Unit Price</td>
                   <td>Stock</td>
                    <td>Company Name</td>
                    </thead>
      
      <%
          try{
              connectionclass cd=new connectionclass();
              String sql="select * from drug";
              ResultSet rs=cd.connectiondb().executeQuery(sql);
              while(rs.next()){
                  %>
                  <tr>
                  <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                      <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(7)%></td>
                          <td><%=rs.getString(8)%></td>
                            <td><%=rs.getString(9)%></td>
                  </tr>
                            <%}
          }catch(Exception e){
              
          }
          %>
        </table>
      </center>
    </body>
</html>
