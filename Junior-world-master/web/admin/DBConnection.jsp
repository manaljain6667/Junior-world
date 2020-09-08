<%@page import="java.sql.*"%>

<html>
    <body>
        <%!Connection con;%>
        <%
            try
            {
                String dbuser="root";
                String dbpass="1234";
                String conurl="jdbc:mysql://localhost:3306/juniordbms";
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection(conurl,dbuser,dbpass);
                
                //out.println("Connection success ");
            }
            catch(Exception e)
            {
                out.println("Connection failed... "+e);
            }
        
        %>
    </body>
</html>
