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
                <li>
                    <a href="login.jsp">Login</a>
                </li>
            </ul>
        </div>
        </div>
         <div class="signup">
             <h2>Forgot Password</h2><br>
        <form id="registration" action=forgotpassworddbms.jsp method=post>
            <b>Enter User Name</b><input type="text" name=username required id="button" placeholder="Enter username"/><br>
            <br><br>
            <b>Enter E-mail Id</b><input type="text" name=e-mail required id="button" placeholder="Enter e-mail"/><br>
            <br><br>
            <b>New Password</b><input type="password" name=nwpass required id="button" placeholder="Enter new password"/><br>
            <br><br>
            <b>Confirm Password</b><input type="password" name=cnpass required id="button" placeholder="Re-enter password"/ ><br>
            <br><br>
            <input type="submit" name="" value="Reset Password" id="reg">
                           
        </form>
         </div>
    </body>
</html>