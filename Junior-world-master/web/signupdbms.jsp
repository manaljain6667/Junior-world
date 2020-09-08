<%@include file="DBConnection.jsp"%>
<%@page import="javax.servlet.http.HttpServlet.*" %>

<html>
    
    <body>
     
        <%
                try
                {
                    String username=request.getParameter("username");
                    String password=request.getParameter("password");
                    String address=request.getParameter("address"); 
                    String city=request.getParameter("city"); 
                    String mobile=request.getParameter("mobile"); 
                    String email=request.getParameter("email"); 
                    String babyage=request.getParameter("age");
                    String babygender=request.getParameter("gender");
                    
                    String insertquery="insert into login values(?,?,?,?,?,?,?,?);";                    
                    PreparedStatement pst=con.prepareStatement(insertquery);                    
                    pst.setString(1,username );
                    pst.setString(2, password);
                    pst.setString(3,address);
                    pst.setString(4,city);
                    pst.setString(5, mobile);
                    pst.setString(6, email);
                    pst.setString(7, babyage);
                    pst.setString(8, babygender);
                    
                    pst.executeUpdate();
                   
                      response.sendRedirect("login.jsp"); 
                     
                }
                catch(Exception e)
                {
                    out.println("Ac not registered ..<a href=signup.jsp>try again</a>"+e);
                    
                    
                }
        %>
        
    </body>
</html>