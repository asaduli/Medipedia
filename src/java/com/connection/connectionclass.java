
package com.connection;

import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class connectionclass {
    Statement st;
    public Statement connectiondb() {
         try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/medipedia","root","");
           st=(Statement) conn.createStatement();
                                                                                                                                                                                                                                                                                                                                                                                                                                 
      }catch(ClassNotFoundException | SQLException e){
          System.out.print(e);
      }
      return st;
  }
    }
       

