
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyCart</title>
    </head>
    <body>
        <h1>My Cart</h1>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","");
                Statement smt=con.createStatement();
                ResultSet rs=smt.executeQuery("select * from order1");
                while(rs.next()){
                    out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3)+"<br>");
                      }
                
            }
            catch(Exception e){
                out.println(e);
            }
        %>
        
    </body>
</html>
