<%-- 
    Document   : addmedicine
    Created on : Mar 18, 2019, 11:06:53 AM
    Author     : Asadul  Islam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.connection.connectionclass" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="addmedcss.css" rel="stylesheet" type="text/css">
         
             
    </head>
    <body>
         <jsp:include page="adminpanel.jsp"/>
        
        <form class="ffff" action="addmedicine.jsp" method="post">
            <br><br><br>
            <center>
            <input type="text" name="mname" placeholder="Medicine Name">
            <div class="di">
              
                <input type="text" name="gname" placeholder="Generic Name">
            </div>
            <br><br><br>
           
            <input type="text" name="mfor" placeholder="Medicine For">
            <div class="di">
                 <input type="text" name="medtype" placeholder="Medicine Type">
            </div>
            
                <br><br><br>
            
            <input type="text" name="uniqnt" placeholder="Unit Quantity">
            <div class="di">
                <input type="text" name="unipri" placeholder="Unit Price">
            </div>
            <br><br><br>
            <input type="text" name="totalstock" placeholder="Total Stock">
            <div class="di">
                <input type="text" name="company" placeholder="Company Name">
            </div>
            <br><br><br><br><br><br><br><br>
            <input type="reset" name="cancel" value="CANCEL">
            <input type="submit" name="add" value="ADD" class="sub">
            </center>
        </form>
        <%
            String add=request.getParameter("add");
            if("ADD".equals(add)){
                String medName,genName,medFor,medType,unitQuant,unitPrice,totalStock,companyName;
                medName=request.getParameter("mname");
                genName=request.getParameter("gname");
                medFor=request.getParameter("mfor");
                medType=request.getParameter("medtype");
                unitQuant=request.getParameter("uniqnt");
                unitPrice=request.getParameter("unipri");
                totalStock=request.getParameter("totalstock");
                companyName=request.getParameter("company");
                try{
                    connectionclass cd=new connectionclass();
                    
                String sql="Insert into drug(id,med_name,gen_name,med_for,med_type,u_quantity,u_price,t_quantity,company)VALUES (default,'"+medName+"','"+genName+"','"+medFor+"','"+medType+"','"+unitQuant+"','"+unitPrice+"','"+totalStock+"','"+companyName+"')";
                cd.connectiondb().executeUpdate(sql);
                out.println("<script>");
                out.println("<alert('Medicine Added Successfull.....')");
                
                out.println("</script>");
                out.print("add Successfully");
                }catch(Exception e){
                    out.print(e);
                }
                
                       
            }
            %>
    </body>
</html>
