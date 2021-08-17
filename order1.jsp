<%@page import="java.sql.*,java.io.IOException" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
    </head>
    <body>
        <%
            try{
            String food=request.getParameter("n2");
            int price=Integer.parseInt(request.getParameter("n1"));
            
        
                
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","");
            
            PreparedStatement pst=con.prepareStatement("insert into order1(sno,food,price)values(?,?,?)");
            Statement smt=con.createStatement();
            ResultSet rs=smt.executeQuery("select * from order1");
            pst.setString(2,food);
            pst.setInt(3,price);
            int c=1;
            while(rs.next()){
                c++;
            }
            pst.setInt(1,c);
           int x=pst.executeUpdate();
           if(x==1){
               response.sendRedirect("cart.jsp");
               
           }
           
            }
            catch(Exception e){
                out.println(e);
            }
           

        %>
         
    </body>
</html>
