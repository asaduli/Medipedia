<%-- 
    Document   : registration
    Created on : Mar 25, 2019, 1:20:56 PM
    Author     : Asadul  Islam
--%>

<%@page import="com.connection.connectionclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.connection.connectionclass.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="registrationstyle.css" rel="stylesheet" type="text/css">
    </head>
     <body>
         <jsp:include page="master1.jsp"/>
        <div class="log">
            
                <br>
                <p >Registration</p>
                <br>
                <div>
                <form action="registration.jsp" method="post">
                    <input type="text" name="firstname" placeholder="First Name" style="margin-left: 245px;margin-right: 20px;text-align: center">
                    <input type="text" name="lastname" placeholder="Last Name" style="text-align: center"> <br><br>
                    <input type="text" name="username" placeholder="User Name " class="input"><br><br>
                    <input type="password" name="password" placeholder="Password " class="input"><br><br>
                    <input type="password" name="conformpass" placeholder="Confrom Password " class="input"><br><br>
                    <input type="email" name="email" placeholder="Email " class="input"><br><br>
                    <input type="tel" name="phone" placeholder="Phone Number " class="input"><br><br
                     <input list="citys" name="city">
                    <label >Select You City</label>
                    <select name="city" id="citys">
                        <option value="Dhaka">Dhaka</option>
                        <option value="Chittagong">Chittagong</option>
                        <option value="Barishal">Barishal</option>
                        <option value="khulna">Khulna</option>
                        <option value="Rajshahi">Rajshahi</option>
                        <option value="Shylet">Shylet</option>
                    </select><br><br>
                    <input type="reset" name="reset" value="Reset">
                    <input type="submit" name="submit" value="Sign In">
                </form>
              </div>
            
            
        </div>
         <%
             String submit=request.getParameter("submit");
             if("Sign In".equals(submit)){
             
             String fname = request.getParameter("firstname");
             String lname = request.getParameter("lastname");
            String uname= request.getParameter("username");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String city=request.getParameter("city");
             
            try{
              connectionclass cdb=new connectionclass();
               String sql="Insert into user(first_name,last_name,user_name,password,email,phone,city)VALUES ('"+fname+"','"+lname+"','"+uname+"','"+password+"','"+email+"','"+phone+"','"+city+"')";
               cdb.connectiondb().executeUpdate(sql);
               out.write("<script>");
               out.write("alert('Successfully Registered!!!')");
               out.write("</script>");
               response.sendRedirect("login.jsp");
            }catch(Exception e){
                out.println(e);
            }
             }
             %>
    </body>
</html>
