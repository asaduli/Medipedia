<%-- 
    Document   : login
    Created on : Mar 25, 2019, 1:20:35 PM
    Author     : Asadul  Islam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.connection.connectionclass" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="logincss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="master1.jsp"/>
        <div class="log">
            <center>
                <form action="login.jsp" m>
            <p><center class="class1">Log In</center></p><br><br>
        <label class="class1">User Name</label><br><br>
        <input class="class2" type="text" name="username" placeholder="User Name"><br><br>
           <label class="class1">Password</label><br><br>
            <input class="class2" type="password" name="password" placeholder="Enter Your Password"><br>
            <input class="input1" type="submit" name="login" value="Log In">
        </form>
                <br><br>
                <p>New User  <a href="registration.jsp">Registration</a></p>
              
                </center>
           
        </div
        
        
        <%
            String value=request.getParameter("login");
            if("Log In".equals(value)){
                String userName=request.getParameter("username");
                String password=request.getParameter("password");
                if(userName.equals("asadul")||password.equals("seeyam000")){
              out.write("Wrong username and Password");
            }
                else{
                    response.sendRedirect("index.jsp");
                }
            }
            

        %>
         
    </body>
</html>
