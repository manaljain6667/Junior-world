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
                <li>
                    <a href="babynames.jsp">Baby Names</a>
                </li>
                <li>
                    <a href="services.jsp">Our Services</a>
                </li>
                
                <li class="active">
                    <a href="signup.jsp">Sign Up</a>
                </li>
               
                <li>
                    <a href="login.jsp">Login</a>
                </li>
            </ul>
        </div>
        </div>
        
        
        <div class="signup">
            <h1>SIGN UP</h1>
            <form id="registration" action="signupdbms.jsp" method="POST">
                <input type="text" name="username" required id="button" placeholder="Username"/><br><br>
                <input type="password" name="password" required id="button" placeholder="Password"/><br><br>
                <input type="text" name="address" required id="button" placeholder="Address"/><br><br>
                <input type="text" name="city" required id="button" placeholder="City"/><br><br>
                <input type="number" value="+91" required id="num"/>
                <input type="number" name="mobile" required id="phone" placeholder="Mobile No."/><br><br>
                <input type="email" name="email" required id="button" placeholder="Email"/><br><br>
                <input type="number" name="age" required id="button" placeholder="Baby's Age"/><br><br>
                
                <input type="text" name="gender" required id="button" placeholder="Baby's Gender"/><br><br>
                <input type="submit" value="Register" id="reg">
            </form>
        </div>
        <div class="foot">
            <br> &copy;&nbsp;Copyright to Junior's World 
        </div>
        
    </body>
</html>
