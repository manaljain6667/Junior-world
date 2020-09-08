<%-- 
    Document   : logout
    Created on : Jul 25, 2017, 6:59:24 PM
    Author     : Chandan Pandey
--%>
<%
session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function clear()
            {
            window.history.forward();
            window.setTimeout("window.location.href='login.jsp;'",500);
        }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body onload="clear()">
       
    </body>
</html>
