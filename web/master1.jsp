<%-- 
    Document   : master1
    Created on : Mar 18, 2019, 12:11:24 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="master1style.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Monoton&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
             <div class="div1">
            <div class="div2">
                <h1 class="textclass1">
                    Medipedia
                </h1>
             
                <h5 class="textclass">
                    Knowledge....Share
                </h5>
            </div>
            <div class="div3">
                <form action="search.jsp" method="post"  >
                    
                     <input type="text" name="searchbox" value="" size="50px" style="border-radius: 10px;background-color: darkgray;margin-top: 40px;margin-left: 60px;text-align: center"/>
                            <input type="submit" value="Search" name="search" style="width:70px;background-color: darkcyan;"/>   
                </form>
                
            </div>
            <div class="div4">
               
                <a href="login.jsp"> LogIn</a>
                <a href="registration.jsp">Registration       </a>
                <a href="adminpanel.jsp"style="padding: 5px;background-color: #0099ff;margin-left: 20px">Admin Panel</a>
                
                            
            </div>
                        
             
         </div>
        </header>
        <nav>
            <div id="menu">
                <ul >
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="advancesearch.jsp">Advance Search</a>
                                <ul>
                                    <li><a href="advancesearch.jsp">Search By Name</a></li>
                                    <li><a href="advancesearch.jsp">Search By Generic  Name</a></li>
                                    <li><a href="advancesearch.jsp">Search By Company Name</a>
                               </ul>
                            </li>
                            <li><a href="near.jsp">Nearby Pharmacy </a></li>
                            <li><a href="#">Top Company List</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Health Tips</a></li>
                            <li><a href="#">About US</a></li>
                            <li><a href="#">Feedback</a></li>
            </ul>
            </div>
            
             
        </nav>
       
           
                         
    </body>
</html>
