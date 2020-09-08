<%@page import="javax.servlet.http.HttpServlet.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Junior's World</title>
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
                    <a href="dashboard.jsp">Home</a>
                </li>
                <li class="active">
                    <a href="babynames.jsp">Baby Names</a>
                </li>
                 <li>
                    <a href="logout.jsp">Logout</a>
                </li>
                <li>
                    <a href="addboys.jsp">Add Boys Names</a>
                </li>
                  <li style="color:white;">
                    <%@include file="DBConnection.jsp"%>
              
                    <% 
                      String username=session.getAttribute("admin").toString();
                     
               out.print("Hello !"+username); 
                    %>
                </li>
            </ul>
           
        </div>
        </div>
        <div class="boy">
        <br><br><h1>Baby Names By Alphabets</h1><br>
        <table  border="3" bgcolor="skyblue" align="center">
            
            <tr align="center">
                <td width="30px"><a href="boynames.jsp?id=A"><font size="5" color="black"><style> a{ text-decoration:none;}</style>A</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=B"><font size="5" color="black"><style> a{ text-decoration:none;}</style>B</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=C"><font size="5" color="black"><style> a{ text-decoration:none;}</style>C</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=D"><font size="5" color="black"><style> a{ text-decoration:none;}</style>D</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=E"><font size="5" color="black"><style> a{ text-decoration:none;}</style>E</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=F"><font size="5" color="black"><style> a{ text-decoration:none;}</style>F</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=G"><font size="5" color="black"><style> a{ text-decoration:none;}</style>G</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=H"><font size="5" color="black"><style> a{ text-decoration:none;}</style>H</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=I"><font size="5" color="black"><style> a{ text-decoration:none;}</style>I</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=J"><font size="5" color="black"><style> a{ text-decoration:none;}</style>J</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=K"><font size="5" color="black"><style> a{ text-decoration:none;}</style>K</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=L"><font size="5" color="black"><style> a{ text-decoration:none;}</style>L</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=M"><font size="5" color="black"><style> a{ text-decoration:none;}</style>M</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=N"><font size="5" color="black"><style> a{ text-decoration:none;}</style>N</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=O"><font size="5" color="black"><style> a{ text-decoration:none;}</style>O</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=P"><font size="5" color="black"><style> a{ text-decoration:none;}</style>P</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=Q"><font size="5" color="black"><style> a{ text-decoration:none;}</style>Q</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=R"><font size="5" color="black"><style> a{ text-decoration:none;}</style>R</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=S"><font size="5" color="black"><style> a{ text-decoration:none;}</style>S</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=T"><font size="5" color="black"><style> a{ text-decoration:none;}</style>T</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=U"><font size="5" color="black"><style> a{ text-decoration:none;}</style>U</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=V"><font size="5" color="black"><style> a{ text-decoration:none;}</style>V</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=W"><font size="5" color="black"><style> a{ text-decoration:none;}</style>W</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=X"><font size="5" color="black"><style> a{ text-decoration:none;}</style>X</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=Y"><font size="5" color="black"><style> a{ text-decoration:none;}</style>Y</font></a></td>
                <td width="30px"><a href="boynames.jsp?id=Z"><font size="5" color="black"><style> a{ text-decoration:none;}</style>Z</font></a></td>
            </tr>
           
        </table>
        <br><br><br><br><h1>Baby Names By Religion</h1><br>
        
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="hinduboynames.jsp"><img src="../images/hindu.jpg"></a>
                &nbsp;&nbsp;<a href="muslimboynames.jsp"><img src="../images/muslim.jpg"></a>
                &nbsp;&nbsp;<a href="sikhboynames.jsp"><img src="../images/sikh.jpg"></a>
                &nbsp;&nbsp;<a href="christianboynames.jsp"><img src="../images/christian.jpg"></a>
                
            </div>
        
        <div class="foot">
            <br> &copy;&nbsp;Copyright to Junior's World 
        </div>
           <% }
    %>
    </body>
</html>
