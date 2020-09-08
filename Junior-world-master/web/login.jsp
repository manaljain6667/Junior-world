
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
                    <a href="login.jsp">Login</a>
                </li>
                
                
            </ul>
        </div>
        </div>
        
        <div class="login">
            <h2>LOGIN</h2>
            <form action="logincheck.jsp" method="POST">
                <div class="loginbox">
                    <input type="text" name="txt1" required="">
                    <label>Username</label>
                </div>
                <div class="loginbox">
                    <input type="password" name="txt2" required="">
                    <label>Password</label>
                </div>
                <input type="submit" name="" value="Submit">  
                &nbsp;&nbsp;&nbsp;&nbsp;<a href="forgotpassword.jsp"><font color="white">Forgot Password?</font></a><br><br>
                <font color="white"> If not having an account</font>
                &nbsp;&nbsp;<a href="signup.jsp" style="text-decoration:none"><input type="submit" name="" value="Sign Up"></a>
            </form>
        </div>
         
    </body>
</html>
