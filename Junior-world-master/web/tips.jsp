
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Junior's World</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
         
    </head>
    
    <body>
           <%
    if(session.getAttribute("username")=="" || session.getAttribute("username")==null)
        response.sendRedirect("login.jsp");
    else
    {
    %>
        <div class="navigation">
        <div id="menu">
            <ul>
                <li><a href=""><font size="3"><b><i>Junior's World</i></b></font></a></li>
               <li>
                    <a href="aboutus.jsp">About Us</a>
                </li>
                <li>
                    <a href="babynames.jsp">Baby Names</a>
                </li>
                
                <li class="active">
                    <a href="tips.jsp">Tips</a>
                    
                </li>
               <li>
                    <a href="food.jsp">Food</a>
                </li>
                <li>
                    <a href="product.jsp">Products</a>
                </li>
                 <li>
                    <a href="caretaker.jsp">Caretakers</a>
                </li>
                <li>
                    <a href="school.jsp">Schooling</a>
                </li>
                <li style="color:white;">
                    <%@include file="DBConnection.jsp"%>
              
                    <% 
                      String username=session.getAttribute("username").toString();
                     
               out.println("Hello ! "+username); 
                    %>
                </li>
                <li>
                    <a href="logout.jsp">Logout</a>
                </li>
            </ul>
           
        </div>
        </div>
         <div class="tip">
             <div id="left">
                 <center>
                 <h1>Newborn</h1><br>
                 <a href="">1 week</a><br>
                 <a href="">2 week</a><br>
                 <a href="">3 week</a><br>
                 <a href="">4 week</a><br>
                 <a href="">5 week</a><br>
                 <a href="">6 week</a><br>
                 <a href="">7 week</a>
                 </center>
                 
             </div>
             <div id="center">
                 <center>
                     <h1>2 to 5 months</h1><br>
                     <a href="">2 months</a><br>
                     <a href="">3 months</a><br>
                     <a href="">4 months</a><br>
                     <a href="">5 months</a><br>
                 </center>
             </div>
             <div id="right">
                 <center>
                     <h1>6 to 12 months</h1><br>
                     <a href="">6 months</a><br>
                     <a href="">7 months</a><br>
                     <a href="">8 months</a><br>
                     <a href="">9 months</a><br>
                     <a href="">10 months</a><br>
                     <a href="">11 months</a><br>
                 </center>
             </div>
             <div id="year">
                 <center>
                     <h1>1 to 2 years</h1><br>
                     <a href="">1-2 years</a><br>
                     <a href=""></a><br>
                 </center>
             </div>
         </div>
                <% }%>
    </body>
</html>