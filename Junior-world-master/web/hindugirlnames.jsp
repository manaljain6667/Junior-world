<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpServlet.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Junior's World</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    <body>
        <div class="navigation">
        <div id="menu">
            <ul>
                <li><a href=""><font size="3"><b><i>Junior's World</i></b></font></a></li>
                <li>
                    <a href="home.jsp">Home</a>
                </li>
                <li class="active">
                    <a href="babynames.jsp">Baby Names</a>
                </li>
                <li>
                    <a href="services.jsp">Our Services</a>
                </li>
                <li>
                    <a href="login.jsp">Login</a>
                </li>
            </ul>
           
        </div>
        </div>
        <div class="boy">
        <br><br><h1>Baby Names By Alphabets</h1><br><br>
        <table width="100%" height="7%" border="3" bgcolor="skyblue" align="center">
            
            <tr align="center">
                <td width="30px"><a href="hindugirlnames.jsp?id=A"><font size="5" color="black"><style> a{ text-decoration:none;}</style>A</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=B"><font size="5" color="black"><style> a{ text-decoration:none;}</style>B</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=C"><font size="5" color="black"><style> a{ text-decoration:none;}</style>C</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=D"><font size="5" color="black"><style> a{ text-decoration:none;}</style>D</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=E"><font size="5" color="black"><style> a{ text-decoration:none;}</style>E</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=F"><font size="5" color="black"><style> a{ text-decoration:none;}</style>F</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=G"><font size="5" color="black"><style> a{ text-decoration:none;}</style>G</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=H"><font size="5" color="black"><style> a{ text-decoration:none;}</style>H</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=I"><font size="5" color="black"><style> a{ text-decoration:none;}</style>I</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=J"><font size="5" color="black"><style> a{ text-decoration:none;}</style>J</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=K"><font size="5" color="black"><style> a{ text-decoration:none;}</style>K</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=L"><font size="5" color="black"><style> a{ text-decoration:none;}</style>L</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=M"><font size="5" color="black"><style> a{ text-decoration:none;}</style>M</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=N"><font size="5" color="black"><style> a{ text-decoration:none;}</style>N</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=O"><font size="5" color="black"><style> a{ text-decoration:none;}</style>O</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=P"><font size="5" color="black"><style> a{ text-decoration:none;}</style>P</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=Q"><font size="5" color="black"><style> a{ text-decoration:none;}</style>Q</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=R"><font size="5" color="black"><style> a{ text-decoration:none;}</style>R</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=S"><font size="5" color="black"><style> a{ text-decoration:none;}</style>S</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=T"><font size="5" color="black"><style> a{ text-decoration:none;}</style>T</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=U"><font size="5" color="black"><style> a{ text-decoration:none;}</style>U</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=V"><font size="5" color="black"><style> a{ text-decoration:none;}</style>V</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=W"><font size="5" color="black"><style> a{ text-decoration:none;}</style>W</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=X"><font size="5" color="black"><style> a{ text-decoration:none;}</style>X</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=Y"><font size="5" color="black"><style> a{ text-decoration:none;}</style>Y</font></a></td>
                <td width="30px"><a href="hindugirlnames.jsp?id=Z"><font size="5" color="black"><style> a{ text-decoration:none;}</style>Z</font></a></td>
            </tr>
            <%String var=request.getParameter("id");%>
        </table>
        <br><br><h1>View Hindu Names</h1><br><br>
        <center>
        <table width="90%" height="7%" border="3"  align="center">
            <tr align="center" bgcolor="black">
                <td width="30%"><font size="5" color="white"><i>Name</i></font></td>
                <td width="30%"><font size="5" color="white"><i>Meaning</i></font></td>
                <td width="30%"><font size="5" color="white"><i>Religion</i></font></td>
            </tr> 
        
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
                   if(var!=null)
                   {
                   String query="select* from girlnames where Name like '"+var+"%' AND Religion='Hindu'";
                   ResultSet rs= statement.executeQuery(query);
                   
                   while (rs.next())
                   {
                       %>
                       <tr align="center" height="30px">
                           <td width="30%"><font size="5" color="black"><%=rs.getString("Name")%></td>
                           <td width="30%"><font size="5" color="black"><%=rs.getString("Meaning")%></td>
                           <td width="30%"><font size="5" color="black"><%=rs.getString("Religion")%></td>
                       </tr>
                    <%
                   }
                   }
                   else
                   {
                   String query="select* from girlnames where  Religion='Hindu'";
                   ResultSet rs= statement.executeQuery(query);
                   while (rs.next())
                   {
                       %>
                       <tr align="center" height="30px">
                           <td width="30%"><font size="5" color="black"><%=rs.getString("Name")%></td>
                           <td width="30%"><font size="5" color="black"><%=rs.getString("Meaning")%></td>
                           <td width="30%"><font size="5" color="black"><%=rs.getString("Religion")%></td>
                       </tr>
                    <%
                   }
                   
                   %>
        </table>
        </center>
        <%
                   rs.close();
                   statement.close();
                   con.close();
                   }
                }
                catch(Exception e)
                {
                    out.println("error");
                }
        %>
        
        </div>
        
    </body>
</html>
