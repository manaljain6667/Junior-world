<%-- 
    Document   : dashboard
    Created on : May 20, 2019, 12:20:25 PM
    Author     : Gyan Prakash Pandey
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
         <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    <body>
                 <%
    if(session.getAttribute("admin")=="" || session.getAttribute("admin")==null)
        response.sendRedirect("index.jsp");
    else
    {
    %>
       <div class="navigation">
        <div id="menu">
            <ul>
                <li><a href="../index.html"><font size="3"><b><i>Junior's World</i></b></font></a></li>
               
                <li>
                    <a href="babynames.jsp">Baby Names</a>
                </li>
                
                <li>
                    <a href="users.jsp">View users</a>
                    
                </li>
               <li>
                    <a href="food.jsp">View care takers</a>
                </li>
                <li>
                    <a href="product.jsp">Request for care taker</a>
                </li>
                <li>
                    <a href="product.jsp">Products</a>
                </li>
                 <li>
                    <a href="caretaker.jsp">Caretakers</a>
                </li>
                <li>
                    <a href="school.jsp">School</a>
                </li>
                <li>
                    <a href="school.jsp">Orders</a>
                </li>
                <li style="color:white;">
                    <%@include file="DBConnection.jsp"%>
              
                    <% 
                      String username=session.getAttribute("admin").toString();
                     
               out.print("Hello ! "+username); 
                    %>
                </li>
                <li>
                    <a href="logout.jsp">Logout</a>
                </li>
            </ul>
           
        </div>
        </div>
        <% }
    %>
    </body>
</html>
