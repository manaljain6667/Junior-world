<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpServlet.*" %>

<html>
    
    <body>
       <%!Connection con;%>
        <%
            
                try
                {
                    
                    String dbuser="root";
                    String dbpass="1234";
                    String conurl="jdbc:mysql://localhost:3306/juniordbms";
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection(conurl,dbuser,dbpass);
                    Statement statement=con.createStatement();
                    String query="insert into boynames (Name,Meaning,Religion) values "
                           + "('','','Hindu'),('','','Hindu'),"
                            + "('','','Christian'),('','','Sikh'),"
                            + "('','','Muslim'),('','','Christian'),"
                            + "('','','Sikh'),('','','Hindu'),"
                            + "('','','Muslim'),('','','Christian'),"
                            + "('','','Sikh'),('','','Muslim'),"
                            + "('','','Christian'),('','','Hindu'),"
                            + "('','','Sikh'),('','','Sikh'),"
                            + "('','','Muslim'),('','','Hindu'),"
                            + "('','','Christian'),('','','Hindu'),"
                            + "('','','Sikh'),('','','Muslim'),"
                            + "('','','Muslim'),('','','Christian'),"
                            + "('','','Hindu'),('','','Sikh'),"
                            + "('','','Muslim'),('','','Christian'),"
                            + "('','','Sikh'),('','','Hindu'),"
                            + "('','','Muslim'),('','','Christian'),"
                            + "('','','Christian'),('','','Hindu'),"
                            + "('','','Muslim'),('','','Sikh'),"
                            + "('','','Christian'),('','','Muslim'),"
                            + "('','','Sikh'),('','','Hindu') ;";       
                            
                    
                    statement.executeUpdate(query);
                    out.println("inserted");
                }
                catch(Exception e)
                {
                    out.println("error");
                }
        %>
    </body>
</html>