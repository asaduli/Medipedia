<%-- 
    Document   : advancesearch
    Created on : Apr 15, 2019, 7:52:59 AM
    Author     : Asadul  Islam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.connectionclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advance Search</title>
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
            <center>
        <form action="advancesearch.jsp" method="post">
            <label>Select an option</label>
            <select name="searchby" id="filter">
                <option>Medicine Name</option>
                <option>Generic Name</option>
                <option>Medicine Type</option>
                <option>Company Name</option>
            </select>
            <input type="text" name="item" placeholder="Enter the name ">
            <input type="submit" name="submit" value="Search">
        </form>
                   <%
            try{
                connectionclass cd=new connectionclass();
                String sql="",filterby="",value="";
                  String f=request.getParameter("submit");
                  if("Search".equals(f)){
                     if("Medicine Name".equals(request.getParameter("searchby"))){
                         filterby="med_name";
                     
                     }
                     else if("Generic Name".equals(request.getParameter("searchby"))){
                         filterby="gen_name";
                  
                         
                     }
                        else if("Medicine Type".equals(request.getParameter("searchby"))){
                         filterby="med_type";
                     
                         
                     }
                        else if("Company Name".equals(request.getParameter("searchby"))){
                         filterby="company";
                       
                         
                     }
                        else{
                            out.println("You did not select any filter option");
                        }
                     value=request.getParameter("item");
                     sql="select * from drug where "+filterby+" like '%"+value+"%'";
              
                            
                  
                  
                 
                ResultSet rs=cd.connectiondb().executeQuery(sql);
                
           
                while(rs.next()){
                    
                %>
                    <div>
             <center style="height: 300px ;width: 600px;background-color: #009999;margin-left: 400px;margin-top: 30px;padding-top: 20px;float:left">
            <h3>Medicine Name:  <%=rs.getString(2)%></h3>
            <h3>Generic Name: <%=rs.getString(3)%></h3> 
            <h3>Medicine For: <%=rs.getString(4)%></h3> 
            <h3>Medicine Type: <%=rs.getString(5)%></h3>
            <h3>Price:<%=rs.getString(6)%>pcs <%=rs.getString(7)%> Taka</h3>
            <h3>Company Name:<%=rs.getString(9)%> </h3>
            <br><br><br>
             </center>
         </div>  
            
            <%      
              }
}
            }catch(Exception e){

                out.print(e);
            }
            
            %>
    </center>
    </body>
</html>
